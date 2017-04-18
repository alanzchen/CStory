//
// Created by Alan Chen on 4/8/17.
//

#include "session.h"
#include "json.hpp"

using namespace std;
using namespace nlohmann;


Session::Session(std::string session_id_, std::string story_id_, std::string scenario_id_) {
    session_id = session_id_;
    story_id = story_id_;
    scenario_id = scenario_id_;
}

Session::Session(nlohmann::json j) {
    try {
        session_id = j["session_id"].get<string>();
        story_id = j["story_id"].get<string>();
        map<std::string, std::string> status;
        for (auto it = j["status"].begin(); it != j["status"].end(); ++it) {
            status[it.key()] = it.value();
        }
    } catch(exception e) {
        cout << "Error when importing from a json object: " << e.what() << endl;
    }
}

string Session::get_id() {
    return session_id;
}

string Session::get_story_id() {
    return story_id;
}

nlohmann::json Session::to_json() {
    json j = json{};
    try {
        j["session_id"] = session_id;
        j["story_id"] = story_id;
        j["status"] = status;
        j["scenario"] = scenario_id;
    } catch(exception e) {
        cout << "Error when dumping a session to json object: " << e.what() << endl;
        return 1;
    }
    return j;
}

int Session::handle_reply(std::string choice) {
    // 1. Call the story, feed it with current status and the scenario to goto.
    // 2. Get the messages to send.
    // 3. Send the messages.
    return 0;
}

int Session::set_status(std::string key, std::string value) {
    try {
        status[key] = value;
    } catch(exception e) {
        cout << "Error when setting status in a session: " << e.what() << endl;
        return 1;
    }
    return 0;
}