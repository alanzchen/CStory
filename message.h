//
// Created by Karl ZHANG on 2017/4/1.
//

#ifndef MESSAGE_H
#define MESSAGE_H

#include <iostream>
#include <iomanip>
#include <time.h>
#include <string>
#include <queue>
#include <algorithm>
#include <map>
#include <vector>
#include <ctime>
#include "session.h"
#include "story.h"

class Message {

public:
    Message(std::string message_, long times, std::string url_, std::string sessionID, bool is_choice = false); //directly use string for temporary message storing.
    std::string get_content() const;
    std::string get_session_id() const;
    long get_time() const;
    const std::string &getUrl() const;

    bool isChoice() const;

private:
    long timestamp;
    std::string session_id;
    std::string content;
    std::string url;
    bool choice;
};

struct CompareTimestamp {
    bool operator()(Message const & p1, Message const & p2) {
        // return "true" if "p1" is ordered before "p2", for example:
        return p1.get_time() > p2.get_time();
    }
};

#endif // MESSAGE_H