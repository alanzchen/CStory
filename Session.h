//
// Created by Alan Chen on 4/8/17.
//

#include <json.hpp>
#ifndef CSTORY_SESSIONS_H
#define CSTORY_SESSIONS_H


class Session {
private:
    std::string session_id;
    std::string story_id;
    std::map <std::string, std::string> status;
    std::string scenario_id;
    shared_ptr <std::priority_queue<message_pair,
            msg_container,
            decltype(time_comp)>> *queue;
public:
    Session(std::string session_id, std::string story_id, std::string scenario_id);

    Session(nlohmann::json json);

    std::string get_id();

    std::string get_story_id();

    int enqueue_msg(message m);

    int handle_reply(std::string choice);

    int set_status(std::string key, std::string value);

    nlohmann::json to_json();
};

#endif //CSTORY_SESSIONS_H
