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

struct CompareTimestamp;

class Session {

private:

    std::string session_id;
    std::string story_id;
    std::map <std::string, std::string> * status;
    std::string scenario_id;
    std::string callback;
    std::string endpoint;
    std::shared_ptr<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>> mq;
    std::shared_ptr<std::map<std::string, Story*>> story_pool;

public:

    int delay;

    Session(std::string session_id, std::string story_id, std::string scenario_id, std::string endpoint, std::string callback,
            std::shared_ptr<std::priority_queue<Message, std::vector<Message>, CompareTimestamp>> mq,
            std::shared_ptr<std::map<std::string, Story*>> story);

    Session(nlohmann::json json);

    void
    setMq(const std::shared_ptr<std::priority_queue<Message, std::vector<Message, std::allocator<Message>>, CompareTimestamp>> &mq);

    const std::string &getSession_id() const;

    const std::string &getStory_id() const;

    const std::string &getScenario_id() const;

    const std::string &getStatus(std::string var) const; // return "false" if the var doesn't exits

    int set_status(std::string key, std::string value);

    void setStory_pool(const std::shared_ptr<std::map<std::string, Story *>> &story_pool);

    int generate_msg(std::string content, long timestamp);

    int generate_msg(nlohmann::json choice_json, long timestamp);

    int ackDelay(int minutes, long timestamp, std::string message = "");

    void sendMessage(Message msg);

    void sendChoice(nlohmann::json choice_json);

    void sendDelay(nlohmann::json delay_json);

    int handle_reply(std::string choice);

    nlohmann::json to_json();
};

#endif //CSTORY_SESSION_H
