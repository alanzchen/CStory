//
// Created by Alan Chen on 4/8/17.
//

#include "session.h"
#include "client_http.hpp"

using namespace std;
using namespace nlohmann;
typedef SimpleWeb::Client<SimpleWeb::HTTP> HttpClient;

Session::Session(std::string session_id_, std::string story_id_, std::string scenario_id_, std::string endpoint_, std::string callback_,
                 std::shared_ptr<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>> mq_,
                 std::shared_ptr<std::map<std::string, Story*>> story_pool_) {
    session_id = session_id_;
    story_id = story_id_;
    scenario_id = scenario_id_;
    callback = callback_;
    endpoint = endpoint_;
    mq = mq_;
    story_pool = story_pool_;
    status = new std::map <std::string, std::string>;
    cout << "Successfully created session with id = " << session_id << endl;
}

Session::Session(nlohmann::json j) {
    try {
        session_id = j["session_id"].get<string>();
        story_id = j["story_id"].get<string>();
        scenario_id = j["scenario_id"].get<string>();
        callback = j["callback"].get<string>();
        endpoint = j["endpoint"].get<string>();
        map<std::string, std::string> status;
        for (auto it = j["status"].begin(); it != j["status"].end(); ++it) {
            status[it.key()] = it.value();
        }
    } catch(exception e) {
        cout << "Error when importing from a json object: " << e.what() << endl;
    }
}

nlohmann::json Session::to_json() {
    json j = json{};
    try {
        j["session_id"] = session_id;
        j["story_id"] = story_id;
        j["status"] = (*status);
        j["scenario"] = scenario_id;
        j["callback"] = callback;
        j["endpoint"] = endpoint;
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
    scenario_id = choice;
    cout << "Handling choice for session " << this->session_id << " " << choice << endl;
    (*story_pool)[story_id]->process_session(*this);
    return 0;
}

int Session::set_status(std::string key, std::string value) {
    try {
        (*status)[key] = value;
    } catch(exception e) {
        cout << "Error when setting status in a session: " << e.what() << endl;
        return 1;
    }
    return 0;
}

const string &Session::getScenario_id() const {
    return scenario_id;
}

const std::string &Session::getStatus(std::string var) const {
    std::string val = "false";
    try {
        val = (*status).at(var);
    } catch (exception e) {
        cout << "Error when getting a a value in the status dictionary." << e.what() << endl;
    }
    return val;
}


const string &Session::getSession_id() const {
    return session_id;
}

const string &Session::getStory_id() const {
    return story_id;
}

int Session::generate_msg(std::string content, long timestamp) {
    try {
        Message msg(content, timestamp, callback, session_id);
        (*mq).push(msg);
    } catch (exception e) {
        cout << "Error when getting a a value in the status dictionary." << e.what() << endl;
        return 1;
    }
    cout << "Session " << (*this).getSession_id() << ": added a message to MQ: at " << timestamp << " " << content << endl;
    return 0;
}

void
Session::setMq(const shared_ptr<priority_queue<Message, vector<Message, allocator<Message>>, CompareTimestamp>> &mq) {
    Session::mq = mq;
}

void Session::setStory_pool(const shared_ptr<map<string, Story *>> &story_pool) {
    Session::story_pool = story_pool;
}

void Session::sendMessage(Message msg) {
    json j;
    j["session_id"] = msg.get_session_id();
    j["content"] = msg.get_content();
    j["scenario_id"] = scenario_id;
    j["type"] = "message";
    string json_string = j.dump();
    try {
        HttpClient client(callback);
        auto response=client.request("POST", endpoint, json_string); // The endpoint should always ends with /json
        cout << "Message sent to " << callback << endpoint << " with the following reply:" << endl;
        cout << response->status_code << endl;
    } catch(exception &e) {
        cout << "Error: sendMessage generates the following exception:" << endl << e.what() << endl;
    }
}

void Session::sendChoice(nlohmann::json choice_json) {
    json j;
    j["session_id"] = session_id;
    j["content"] = "";
    j["scenario_id"] = scenario_id;
    j["type"] = "choice";
    j["choices"] = choice_json;
    string json_string= j.dump();
    try {
        HttpClient client(callback);
        auto response=client.request("POST", endpoint, json_string); // The endpoint should always ends with /json
        cout << "Choice sent to " << callback << endpoint << " with the following reply:" << endl;
        cout << response->status_code << endl;
    } catch(exception &e) {
        cout << "Error: sendChoice generates the following exception:" << endl << e.what() << endl;
    }
}

void Session::sendDelay(nlohmann::json delay_json) {
    string json_string= delay_json.dump();
    try {
        HttpClient client(callback);
        auto response=client.request("POST", endpoint, json_string); // The endpoint should always ends with /json
        cout << "Delay sent to " << callback << endpoint << " with the following reply:" << endl;
        cout << response->status_code << endl;
    } catch(exception &e) {
        cout << "Error: sendDelay generates the following exception:" << endl << e.what() << endl;
    }
}

int Session::generate_msg(nlohmann::json choice_json, long timestamp) {
    try {
        Message msg(choice_json.dump(), timestamp, callback, session_id, "choice");
        (*mq).push(msg);
    } catch (exception e) {
        cout << "Error when getting a a value in the status dictionary." << e.what() << endl;
    }
    cout << "Session " << (*this).getSession_id() << ": added a message to MQ: " << choice_json.dump() << endl;
    return 0;
}

int Session::ackDelay(int minutes, long timestamp, std::string message) {
    try {
        json j;
        j["session_id"] = session_id;
        j["content"] = message;
        j["scenario_id"] = scenario_id;
        j["type"] = "delay";
        j["delay"] = minutes;
        string content = j.dump();
        Message msg(content, timestamp, callback, session_id, "delay");
        (*mq).push(msg);
        return 0;
    } catch (exception e) {
        cout << "Error when acknowledging client about delay: " << e.what() << endl;
        return 1;
    }
}
