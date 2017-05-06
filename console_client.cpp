//
// Created by Alan Chen on 3/29/17.
//

#include "client_http.hpp"
#include "server_http.hpp"
#include <mutex>

//Added for the default_resource example

#include <fstream>
#include <boost/filesystem.hpp>
#include "json.hpp"
#include <vector>
#include <algorithm>
#include <map>
#include <vector>
#include <time.h>

using namespace std;
using json = nlohmann::json;
typedef SimpleWeb::Client<SimpleWeb::HTTP> HttpClient;
typedef SimpleWeb::Server<SimpleWeb::HTTP> HttpServer;


string request(HttpClient & client, string path, string payload) {
    auto response = client.request("POST", path, payload);
    stringstream ss;
    ss << response->content.rdbuf();
    string content=ss.str();
    return content;
};

void pprint(string msg) {
    cout << "> " << msg << endl;
};

void pprint(string people, string msg) {
    cout << people << " > " << msg << endl;
};

string init_session(string story_id, string callback, HttpClient & connection) {
    json j;
    j["story_id"] = story_id;
    j["callback"] = callback;
    string response = request(connection, "start", j.dump());
    json r(response);
    if (r["scenario"] == "start") {
        return r["session_id"];
    } else {
        pprint("CStory", "Invalid response from the server:");
        cout << response << endl;
        return "failed";
    }
};

string choose(map<string, string> choices) {
    int count = 0;
    vector<string> choices_vec;
    auto vec_it = choices_vec.begin();
    for (auto it = choices.begin(); it != choices.end(); ++it) {
        cout << count << ": " << it->second << endl;
        choices_vec.insert(vec_it, it->first);
        ++it;
        ++vec_it;
        ++count;
    }
    cout << "Reply: ";
    string choice;
    getline(cin, choice);
    bool not_chosen = true;
    int choice_int;
    while (not_chosen) {
        try {
            choice_int = stoi(choice);
            not_chosen = false;
        } catch (exception e) {
            cout << "Oops I can't hear you, can you repeat again?" << endl;
            getline(cin, choice);
        };
    };
    string choice_id = choices_vec[choice_int];
    pprint("You", choices[choice_id]);
    // TODO: Send the request to the server
};

int main() {
    pprint("CStory", "Welcome to CStory Engine Demo Console Client.");
    pprint("CStory", "Which server do you want to connect? Default is localhost:8080");
    string game_server;
    cout << "Server: ";
    getline(cin, game_server);
    if (game_server.size() == 0) {
        game_server = "localhost:8080";
    }
    HttpClient connection(game_server);

    // start the client server so that the server can call
    HttpServer server;
    server.config.port=8081;

    string session_id;
    string scenario_id = "start";

    pprint("CStory", "What story do you want to play? If you are not sure, default is silent_night.");
    string story_id = "silent_night";
    getline(cin, story_id);

    server.resource["^/json$"]["POST"]=[&session_id, &scenario_id]
            (shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
        try {
            auto j = json::parse(request->content);
            string content;
            if (j["session_id"] == session_id) {
                pprint(content);

            }
            *response << "HTTP/1.1 200 OK\r\n"
                      << "Content-Type: application/json\r\n"
                      << "Content-Length: " << content.length() << "\r\n\r\n"
                      << content;
        }
        catch(exception& e) {
            json j;
            j["session_id"] = session_id;
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
    session_id = init_session(story_id, "localhost:8081", connection);
    if (session_id == "failed") {
        pprint("CStory", "Fatal error: cannot establish connection with the server.");
        return 1;
    }

    while (true) {
        // TODO: Main loop
    };
    cout << "Connection closed." << endl;
    return 0;
}
