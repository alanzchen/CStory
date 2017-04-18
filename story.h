//
// Created by Lucas Chen on 2017/4/1.
//
#include <tuple>
#include <string>
#include <vector>
#include <iostream>
#include <map>
#include <regex>
#include <fstream>
#include "session.h"

#ifndef CSTORY_T_STORY_H
#define CSTORY_T_STORY_H

class Story {
private:
    static std::regex snr_id_re;//:: old_poem_test
    std::string story_id;
    std::map<std::string, std::vector<std::string>> scenarios;
    static std::regex trigger_re; // <<set $galley_door_visited = false>>
    static std::regex continue_re;// [[shiny_interest]]
    static std::regex end_snr; // [[游戏结束|goodbye_hell]] | [[我听见有人在说话。|vocal_demo]]
    static std::regex delay; // [[delay 30s|more_alive]]
    static std::regex one_option; //[[我听见有人在说话。|vocal_demo]]
    std::ifstream story_input;

    int read_next_snr(std::string snr_id);

public:
    std::vector<std::string> split_line(std::string line);
    Story(std::string story_id, std::string story_file_path);
    int initialize();
    int process_session(Session session);
};


#endif //CSTORY_T_STORY_H
