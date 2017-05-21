#include "server_http.hpp"
#include "client_http.hpp"
#include <fstream>
#include <boost/filesystem.hpp>
#include <boost/thread/thread.hpp>
#include <ctime>
#include "json.hpp"
#include "story.h"
#include "uuid.h"
#include "message.h"
#include "session.h"
#include <vector>
#include <algorithm>
#include <map>
#include <vector>
#include <time.h>

using namespace std;
using json = nlohmann::json;

typedef SimpleWeb::Server<SimpleWeb::HTTP> HttpServer;
typedef SimpleWeb::Client<SimpleWeb::HTTP> HttpClient;

//Added for the default_resource example
void default_resource_send(const HttpServer &server, const shared_ptr<HttpServer::Response> &response,
                           const shared_ptr<ifstream> &ifs);


void save_sessions(shared_ptr<map<string, Session>> &sessions) {
    ofstream session_file("sessions.json");
    if (session_file.is_open())
    {
        int count = 0;
        for (auto it = (*sessions).begin(); it != (*sessions).end(); ++it) {
            json j = it->second.to_json();
            session_file << j.dump() << endl;
            ++count;
        }
        cout << "Saved " << to_string(count) << " sessions." <<endl;
        session_file.close();
    } else {
        cout << "Cannot save sessions." << endl;
    }
};

void load_sessions(shared_ptr<std::map<std::string, Session>> &sessions,
                   shared_ptr<std::priority_queue<Message, std::vector<Message, std::allocator<Message>>, CompareTimestamp>> mq,
                   shared_ptr<std::map<std::string, Story*>> story_pool)
{
    int count = 0;
    string line;
    ifstream session_file ("sessions.json");
    if (session_file.is_open())
    {
        while (getline(session_file, line))
        {
            auto j = json::parse(line);
            Session s = Session(j);
            s.setMq(mq);
            s.setStory_pool(story_pool);
            (*sessions).insert(make_pair(s.getSession_id(), s));
            ++count;
        }
        session_file.close();
        cout << "Saved " << count << " sessions." << endl;
    }
}

int main() {
    //HTTP-server at port 8080 using 1 thread
    //Unless you do more heavy non-threaded processing in the resources,
    //1 thread is usually faster than several threads
    HttpServer server;
    server.config.port=8080;

    // Sessions Pool
    shared_ptr<map<string, Session>> sessions;
    sessions = std::make_shared<map<string, Session>>();

    // Stories Pool
    // TODO: Load all the stories and add them to this map
    shared_ptr<map<string, Story*>> stories;
    stories = std::make_shared<map<string, Story*>>();
    (*stories)["silent_night"] = new Story("silent_night", "story/silent_night.story");

    // Message Queue (mq)
    shared_ptr<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>> mq;
    mq = std::make_shared<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>>();

    // For testing purpose, this endpoint echoes the incoming message.
    server.resource["^/ping$"]["POST"]=[](shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        //Retrieve string:
        auto content=request->content.string();

        *response << "HTTP/1.1 200 OK\r\nContent-Length: " << content.length() << "\r\n\r\n"
                  << content;
    };


    server.resource["^/debug$"]["POST"]=[&sessions, &mq, &stories]
            (shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        //Retrieve string:
        auto content=request->content.string();
        if (content == "save") {
            save_sessions(sessions);
        } else if (content == "load") {
            load_sessions(sessions, mq, stories);
        } else if (content == "shutdown") {
            Message shutdown("shutdown", 0, "", "");
            (*mq).push(shutdown);
        }
        *response << "HTTP/1.1 200 OK\r\nContent-Length: " << content.length() << "\r\n\r\n"
                  << content;
    };

    // Main API Endpoint
    server.resource["^/json$"]["POST"]=[&sessions, &stories]
            (shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        try {
            auto j = json::parse(request->content);
            string content;
            string session_id = j["session_id"];
            // search the session map for a particular session_id
            auto search = (*sessions).find(session_id);

            if(search != (*sessions).end()) {
                // found session in session_map
                // all we care is what the player chose
                Session current_session = search->second;
                string next_scenario = j["choice"].get<string>();
                // Let the session to handle the reply
                current_session.handle_reply(next_scenario);
//                (*stories)[current_session.getStory_id()]->process_session(current_session);
                json session_json = current_session.to_json();
                session_json["message"] = "please wait for us to callback";
                content = session_json.dump();
            } else {
                // initiate a story, will ignore all other params from the request
                // TODO: Initiate the story from the story parser. The default scenario is "start".
                throw std::runtime_error("Invalid session_id: session_id not found on the server.");
            }

            *response << "HTTP/1.1 200 OK\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << content.length() << "\r\n\r\n"
                      << content;
        }
        catch(exception& e) {
            json j;
            j["error"] = e.what();
            string err = j.dump();
            *response << "HTTP/1.1 400 Bad Request\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << err.size() << "\r\n\r\n" << err;
        }
    };

    // API Endpoint for starting a story session
    server.resource["^/start$"]["POST"]=[&sessions, &stories, &mq]
            (shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        try {
            auto j = json::parse(request->content);
            string content;

            // Here are the information needed to start a session
            string callback = j["callback"].get<string>();
            string story_id = j["story_id"].get<string>();
            string endpoint = j["endpoint"].get<string>();
            string session_id;

            // Using boost to generate UUID for each session
            session_id = generate_uuid();

            // Finding the story_id in the story pool
            auto search = (*stories).find(story_id);
            if (search != (*stories).end()) {
                // found story in story pool
                // create new session in session_map
                Session * new_session = new Session(session_id,
                                                    story_id,
                                                    "start", // Story always starts with "start".
                                                    endpoint,
                                                    callback,
                                                    mq,
                                                    stories);
                (*sessions).insert(make_pair(session_id, *new_session));
                json j = (*new_session).to_json();
                content = j.dump();
                // Now process the first story session.
                (*search->second).process_session(*new_session);
                cout << "New session created with story id: " + (*sessions).at(session_id).getStory_id() << endl;
            } else {
                // invalid story_id, return an error message
                throw std::runtime_error("Invalid story_id.");
            }

            *response << "HTTP/1.1 200 OK\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << content.length() << "\r\n\r\n"
                      << content;
        }
        catch(exception& e) {
            json j;
            j["error"] = e.what();
            string err = j.dump();
            *response << "HTTP/1.1 400 Bad Request\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << err.size() << "\r\n\r\n" << err;
        }
    };


    //GET-example for the path /info
    //Responds with request-information
    server.resource["^/info$"]["GET"]=[](shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        stringstream content_stream;
        content_stream << "<h1>Request from " << request->remote_endpoint_address << " (" << request->remote_endpoint_port << ")</h1>";
        content_stream << request->method << " " << request->path << " HTTP/" << request->http_version << "<br>";
        for(auto& header: request->header) {
            content_stream << header.first << ": " << header.second << "<br>";
        }

        //find length of content_stream (length received using content_stream.tellp())
        content_stream.seekp(0, ios::end);

        *response <<  "HTTP/1.1 200 OK\r\nContent-Length: " << content_stream.tellp() << "\r\n\r\n" << content_stream.rdbuf();
    };

    //GET-example for the path /match/[number], responds with the matched string in path (number)
    //For instance a request GET /match/123 will receive: 123
    server.resource["^/match/([0-9]+)$"]["GET"]=[&server](shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        string number=request->path_match[1];
        *response << "HTTP/1.1 200 OK\r\nContent-Length: " << number.length() << "\r\n\r\n" << number;
    };

    //Get example simulating heavy work in a separate thread
    server.resource["^/work$"]["GET"]=[&server](shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> /*request*/) {
        thread work_thread([response] {
            this_thread::sleep_for(chrono::seconds(5));
            string message="Work done";
            *response << "HTTP/1.1 200 OK\r\nContent-Length: " << message.length() << "\r\n\r\n" << message;
        });
        work_thread.detach();
    };

    //Default GET-example. If no other matches, this anonymous function will be called.
    //Will respond with content in the web/-directory, and its subdirectories.
    //Default file: index.html
    //Can for instance be used to retrieve an HTML 5 client that uses REST-resources on this server
    server.default_resource["GET"]=[&server](shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        try {
            auto web_root_path=boost::filesystem::canonical("web");
            auto path=boost::filesystem::canonical(web_root_path/request->path);
            //Check if path is within web_root_path
            if(distance(web_root_path.begin(), web_root_path.end())>distance(path.begin(), path.end()) ||
               !equal(web_root_path.begin(), web_root_path.end(), path.begin()))
                throw invalid_argument("path must be within root path");
            if(boost::filesystem::is_directory(path))
                path/="index.html";
            if(!(boost::filesystem::exists(path) && boost::filesystem::is_regular_file(path)))
                throw invalid_argument("file does not exist");

            std::string cache_control, etag;

            auto ifs=make_shared<ifstream>();
            ifs->open(path.string(), ifstream::in | ios::binary | ios::ate);

            if(*ifs) {
                auto length=ifs->tellg();
                ifs->seekg(0, ios::beg);

                *response << "HTTP/1.1 200 OK\r\n" << cache_control << etag << "Content-Length: " << length << "\r\n\r\n";
                default_resource_send(server, response, ifs);
            }
            else
                throw invalid_argument("could not read file");
        }
        catch(const exception &e) {
            string content="Could not open path "+request->path+": "+e.what();
            *response << "HTTP/1.1 400 Bad Request\r\nContent-Length: " << content.length() << "\r\n\r\n" << content;
        }
    };

    thread server_thread([&server](){
        //Start server
        server.start();
    });

    //Wait for server to start so that the client can connect
//    this_thread::sleep_for(chrono::seconds(1));

    // Loop for the MQ
    cout << "Ready." << endl;
    string current_session_id;
    while(true) {
        if (!(*mq).empty()) {
            std::time_t current_ts = std::time(nullptr);
            if ((*mq).top().get_time() <= current_ts) {
                // If receives the debug instruction to shutdown
                if ((*mq).top().get_content() == "shutdown") {
                    cout << "Received shutdown message, shutting down." << endl;
                    save_sessions(sessions);
                    return 0;
                }
                // Send the message and pop the first
                current_session_id = (*mq).top().get_session_id();
                Session *current_session = & (*sessions).at(current_session_id);
                if ((*mq).top().isChoice()) {
                    json j = json::parse((*mq).top().get_content());
                    (*current_session).sendMessage(j);
                } else { // this is a regular message
                    (*current_session).sendMessage((*mq).top());
                }
                (*mq).pop();
            } else {
                boost::this_thread::sleep(boost::posix_time::milliseconds(10));
            }
        } else {
            boost::this_thread::sleep(boost::posix_time::milliseconds(10));
        }
    }

    server_thread.join();
    return 0;
}

void default_resource_send(const HttpServer &server, const shared_ptr<HttpServer::Response> &response,
                           const shared_ptr<ifstream> &ifs) {
    //read and send 128 KB at a time
    static vector<char> buffer(131072); // Safe when server is running on one thread
    streamsize read_length;
    if((read_length=ifs->read(&buffer[0], buffer.size()).gcount())>0) {
        response->write(&buffer[0], read_length);
        if(read_length==static_cast<streamsize>(buffer.size())) {
            server.send(response, [&server, response, ifs](const boost::system::error_code &ec) {
                if(!ec)
                    default_resource_send(server, response, ifs);
                else
                    cerr << "Connection interrupted" << endl;
            });
        }
    }
}
