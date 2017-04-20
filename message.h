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
#include "session.h"
#include "story.h"

using message_pair = std::pair<long timestamp, std::string session_id>;   //Might be some probblems with this.
using msg_container = std::vector<message_pair>;

std::priority_queue<message_pair,
                    msg_container,
                    decltype(timestamp)> queue(timestamp);   //Might be some probblems with this.

class Message {
    
private:
    std::string session_id;
    std::string content;
    std::string url;
    
public:
    Message(std::string message_, long time, std::string url_);   //directly use string for temporary message storing.
    long timestamp;
    std::string get_content();
    std::string get_session_id();
};

struct node
{
    friend bool operator< (node n1, node n2)
    {
         return n1.priority < n2.priority;
    }
    int priority;
    int value;
};


#endif // MESSAGE_H


/* Below is something not sure.

bool time_comp = [](const message_pair& m1, const message_pair& m2);  //directly compare, no need this.


class mycomparison{          //http://www.cplusplus.com/reference/queue/priority_queue/priority_queue/
    bool reverse;

public:
    mycomparison(const bool& revparam=false) {reverse=revparam;}
    bool operator() (const int& lhs, const int&rhs) const{
        if (reverse) return (lhs>rhs);
        else return (lhs<rhs);
    }
};
*/
