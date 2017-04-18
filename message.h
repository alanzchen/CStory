//
// Created by Karl ZHANG on 2017/4/1.
//

#ifndef MESSAGE_H
#define MESSAGE_H

#include <iostream>
#include <iomanip>
#include <time.h>
#include <string>
#include "session.h"
#include "story.h"

class Message {
    
private:
    std::string session_id;
    std::string content;
    std::string url;
    
public:
    /*
     * TODO: just use "long timestamp = time(nullptr)" to get current timestamp
     *
     */
    Message(std::string, long time, std::string url);
    long timestamp;
    std::string get_content();
    std::string get_session_id();
    //std::bool operator<(time1, time2);
};

#endif // MESSAGE_H
