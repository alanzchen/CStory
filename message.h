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

public:
    std::tm timestamp;
    std::string get_content();
    std::string get_session_id();

private:
    std::string session_id;
    std::string content;

};

#endif // MESSAGE_H
