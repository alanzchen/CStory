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
    Message(std::string message_, long times, std::string url_, std::string sessionID); //directly use string for temporary message storing.
    std::string get_content() const;
    std::string get_session_id() const;
    long get_time() const;

    const std::string &getUrl() const;

private:
    long timestamp;
    std::string session_id;
    std::string content;
    std::string url;
};

class MyCompare//定义比较方法，比较time, time小的在前面
{

public:
    bool operator()(Message left, Message right) const;

};

struct CompareTimestamp {
    bool operator()(Message const & p1, Message const & p2) {
        // return "true" if "p1" is ordered before "p2", for example:
        return p1.get_time() < p2.get_time();
    }
};

#endif // MESSAGE_H


/* Below is something not sure. Could be reference.

using message_pair = std::pair<long timestamp, std::string session_id>;
using msg_container = std::vector<message_pair>;

std::priority_queue<message_pair,
                    msg_container,
                    decltype(timestamp)> queue(timestamp);


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
