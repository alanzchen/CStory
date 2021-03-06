//
// Created by Alan Chen on 3/29/17.
//

#include "client_http.hpp"
#include "server_http.hpp"

//Added for the default_resource example

#include <fstream>
#include <boost/filesystem.hpp>
#include <boost/thread/thread.hpp>
#include "json.hpp"

using namespace std;
using json = nlohmann::json;
typedef SimpleWeb::Client<SimpleWeb::HTTP> HttpClient;
typedef SimpleWeb::Server<SimpleWeb::HTTP> HttpServer;

void pprint(string msg) {
    cout << "> " << msg << endl;
};

void pprint(string people, string msg) {
    cout << people << " > " << msg << endl;
};

struct LocalSession {
    string session_id = "failed";
    string scenario_id = "start";
    string story_id;
    string endpoint;
    HttpClient * connection;
    string game_server;
    string callback;
    LocalSession() {};

    void initialise(string callback_, string game_server_, string story_id_) {
        json j;
        story_id = story_id_;
        callback = callback_;
        game_server = game_server_;
        j["story_id"] = story_id;
        j["callback"] = callback;
        j["endpoint"] = "/json";
        callback = callback_;
        connection = new HttpClient(game_server);
        string response;
        try {
            response = (*this).request("/start", j.dump());
            auto r = json::parse(response);
            if (r["scenario"] == scenario_id) {
                session_id =  r["session_id"];
            } else {
                pprint("CStory", "Invalid response from the server:");
                cout << response << endl;
            }
        } catch (exception & e) {
            cout << "Error: " << e.what() << endl;
            cout << response << endl;
        }
    };

    string request(string path, string payload) {
        auto response = (*connection).request("POST", path, payload);
        try {
            stringstream ss;
            ss << response->content.rdbuf();
            string content=ss.str();
            return content;
        } catch (exception & e) {
            return response->status_code;
        }
    };

    void choose(json &choices) {
        int count = 1;
        vector<string> choices_vec;
        pprint("CStory", "What would you say?");
        for (json::iterator it = choices.begin(); it != choices.end(); ++it) {
            std::cout << count << " : " << it.value() << "\n"; // it.value is the text for the buttons
            choices_vec.push_back(it.key());
            ++count;
        }
        cout << "Reply: ";
        string choice;
        getline(cin, choice); // get the reply from user
        bool not_chosen = true;
        int choice_int;
        string choice_id;
        while (not_chosen) {
            try {
                choice_int = stoi(choice);
                if (choice_int > choices_vec.size() || choice_int < 1) {
                    throw(runtime_error("invalid choice_id"));
                }
                choice_id = choices_vec.at(choice_int - 1);
                not_chosen = false;
            } catch (exception e) {
                cout << "Oops I can't hear you, can you repeat again?" << endl << "Reply: ";
                getline(cin, choice);
            };
        };
        pprint("You", choices[choice_id]);
        json j;
        j["session_id"] = session_id;
        j["choice"] = choice_id;
        choices = json();
        connection = new HttpClient(game_server);
        try {
            (*this).request("/json", j.dump());
        } catch (exception &e) {
            string str(e.what());
            pprint("CStory", "Error: " + str);
        }
    };


};


int main() {
    pprint("CStory", "Welcome to CStory Engine Demo Console Client.");
    pprint("CStory", "Which server do you want to connect? Default is localhost:8080");
    string game_server;
    cout << "Server (press Enter to skip): ";
    getline(cin, game_server);
    if (game_server.size() == 0) {
        game_server = "localhost:8080";
    }
    pprint("CStory", "Do you want to specify a different local port other than 8081?");
    cout << "Port (press Enter to skip): ";
    int local_port;
    string port_str;
    getline(cin, port_str);
    if (port_str.size() == 0) {
        port_str = "8081";
    }
    try {
        local_port = stoi(port_str);
    } catch (exception &e) {
        pprint("CStory", "Oops, it doesn't seem like a valid port. Using 8081.");
    }

    // start the client server so that the server can call
    HttpServer server;
    server.config.port=local_port;

    pprint("CStory", "What story do you want to play? If you are not sure, default is silent_night.");
    string story_id;
    cout << "Enter a story id: ";
    getline(cin, story_id);
    if (story_id.size() == 0) {
        story_id = "silent_night";
    }

    json current_choices;

    LocalSession session = LocalSession();
    server.resource["^/json$"]["POST"]=[&session, &current_choices]
            (shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        try {
            auto j = json::parse(request->content);
            string content;
            if (j["session_id"] != session.session_id) {
                throw(std::runtime_error("Invalid session_id."));
            }
            if (j["type"].get<string>() == "message") {
                pprint("Taylor", j["content"].get<string>()); // show message to the console
            } else if (j["type"].get<string>() == "delay") {
                if (j["content"].get<string>().size() > 0) {
                    pprint("CStory", "[[" + j["content"].get<string>() + "]]");
                } else {
                    pprint("CStory", "Taylor will get back to you in a while.");
                }
            } else { // this is a choice
                current_choices = j["choices"];
            }
            session.scenario_id = j["scenario_id"].get<string>();

            *response << "HTTP/1.1 200 OK\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << content.length() << "\r\n\r\n"
                      << content;
        }
        catch(exception& e) {
            json j;
            j["session_id"] = session.session_id;
            j["error"] = e.what();
            string err = j.dump();
            *response << "HTTP/1.1 400 Bad Request\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << err.size() << "\r\n\r\n" << err;
        }
    };

    thread server_thread([&server](){
        //Start server
        server.start();
    });

    // request for a session
    session.initialise("localhost:" + port_str, game_server, story_id);
    if (session.session_id == "failed") {
        pprint("CStory", "Fatal error: cannot establish connection with the server.");
        return 1;
    }

    cout << "[Incoming Connection]" << endl;

    while(true) {
        if (!current_choices.empty()) {
            session.choose(current_choices);
        } else {
            boost::this_thread::sleep(boost::posix_time::milliseconds(10));
        }
    }

    server_thread.join();
    return 0;
}
