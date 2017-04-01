//
// Created by Lucas Chen on 2017/4/1.
//
#include <tuple>
#include <string>
#include <vector>
#include <istream>
#include "session.h"

#ifndef CSTORY_T_STORY_H
#define CSTORY_T_STORY_H


class Story {
private:
    std::istream snr_in;
    std::string story_id;
    std::vector<std::tuple<std::string, std::string>> scenarios;
    int read_snr();

public:
    Story(std::istream is);
    int process_session(session *session);
};



#endif //CSTORY_T_STORY_H
