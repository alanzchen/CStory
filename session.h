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

    std::string get_snr_id();

    std::string get_status(std::string var); // return "false" if the var doesn't exits

    int set_status(std::string key, std::string value);

    /*
     * @ param content: the content of this message
     * @ timestamp: time to send this msg, unit: second
     * TODO: generage a Message object using the given parameters and target url
     */
    int generate_msg(std::string content, long timestamp);

    int handle_reply(std::string choice);

    nlohmann::json to_json();
};

#endif //CSTORY_SESSIONS_H
