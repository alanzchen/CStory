//
// Created by Alan Chen on 3/29/17.
//

#include "client_http.hpp"
#include "server_http.hpp"

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

namespace session {
    // TODO: merge this into a common .h file
    // This is the namespace for session
    struct session {
        string session_id;
        string story_id;
        map<std::string, std::string> status;
        vector<string> messages;
        map<std::string, std::string> choices;
    };

    void to_json(json& j, const session& s) {
        // The following code works but for unknown reason, they are displayed as error in Clion.
//        j = json{{"session_id", s.session_id},
//                 {"story_id", s.story_id},
//                 {"status", s.status},
//                 {"messages", s.messages},
//                 {"choices", s.choices}};
        j = json{};
        j["session_id"] = s.session_id;
        j["story_id"] = s.story_id;
        j["status"] = s.status;
        j["messages"] = s.messages;
        j["choices"] = s.choices;
    }

    void from_json(const json& j, session& s) {
        s.session_id = j["session_id"].get<string>();
        s.story_id = j["story_id"].get<string>();
        map<std::string, std::string> status;
        for (auto it = j["status"].begin(); it != j["status"].end(); ++it) {
            status[it.key()] = it.value();
        }
        s.status = status;
        s.messages = j["messages"].get<vector<string>>();
        map<std::string, std::string> choices;
        for (auto it = j["choices"].begin(); it != j["choices"].end(); ++it) {
            choices[it.key()] = it.value();
        }
        s.choices = choices;
    }
};

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

void handle_response(json response) {
    // TODO: handle the response
    session::session current_state = response;

    choose(current_state.choices);
};

int main() {
    cout << "Welcome to CStory Engine Demo Console Client." << endl;
    HttpClient client("localhost:8080");

    // start the client server so that the server can call
    HttpServer server;
    server.config.port=8081;
    thread server_thread([&server](){
        //Start server
        server.start();
    });

    // examples
    string json_string="{\"firstName\": \"John\",\"lastName\": \"Smith\",\"age\": 25}";
    auto r3=client.request("POST", "/test", json_string);
    cout << r3->content.rdbuf() << endl;
    cout << request(client, "/test", json_string);

    string scenario_id = "Start";
    json response;

    while (true) {
        // if the scenario_id has changed, it means the client server received a delayed message
        if (response["scenario_id"] != scenario_id) {
            handle_response(response);
            if (response["scenario_id"] == "end") { // this will end the story after handling the last response.
                break;
            };
        } else {
            // sleep for 1 second to avoid performance issue
            this_thread::sleep_for(chrono::seconds(1));
        };
    };
    cout << "Connection closed." << endl;
    return 0;
}
