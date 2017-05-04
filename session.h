//
// Created by Alan Chen on 4/8/17.
//

#ifndef CSTORY_SESSION_H
#define CSTORY_SESSION_H

#include <json.hpp>
#include <vector>
#include <queue>
#include <map>
#include "message.h"
#include "story.h"

class Story;

class Message;

class Session {

private:

    std::string session_id;
    std::string story_id;
    std::map <std::string, std::string> status;
    std::string scenario_id;
    std::string callback;
    std::shared_ptr<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>> mq;
    std::shared_ptr<std::map<std::string, Story>> story_pool;

public:

    Session(std::string session_id, std::string story_id, std::string scenario_id, std::string callback,
            std::shared_ptr<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>> mq,
            std::shared_ptr<std::map<std::string, Story>> story);

    Session(nlohmann::json json);

    void
    setMq(const std::shared_ptr<std::priority_queue<Message, std::vector<Message, std::allocator<Message>>, CompareTimestamp>> &mq);

    void setStory_pool(const std::shared_ptr<std::map<std::string, Story>> &story_pool);

    const std::string &getSession_id() const;

    const std::string &getStory_id() const;

    const std::string &getScenario_id() const;

    const std::map<std::string, std::string> &getStatus() const;

    const std::string &getStatus(std::string var) const; // return "false" if the var doesn't exits

    int set_status(std::string key, std::string value);

    /*
     * @ param content: the content of this message
     * @ timestamp: time to send this msg, unit: second
     * TODO: generate a Message object using the given parameters and target url
     */

    int generate_msg(std::string content, long timestamp);

    int handle_reply(std::string choice);

    nlohmann::json to_json();
};

#endif //CSTORY_SESSION_H
