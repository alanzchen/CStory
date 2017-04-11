//
// Created by Karl ZHANG on 2017/4/1.
//

#ifndef MESSAGE_H
#define MESSAGE_H

#include <iostream>
#include <iomanip>
#include <time.h>
#include <string>
#include "session_id"
#include "Story.h"

class message {
    
private:
    std::string session_id;
    std::string content;
    std::string url;
    
public:
    Message(std::vector<std::string>, std::tm time, std::string url);
    std::tm timestamp;
    std::string get_content();
    std::string get_session_id();
    //std::bool operator<(time1, time2);
};

#endif // MESSAGE_H
