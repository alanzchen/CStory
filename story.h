//
// Created by Lucas Chen on 2017/4/1.
//



#ifndef CSTORY_T_STORY_H
#define CSTORY_T_STORY_H

#include "session.h"
#include <tuple>
#include <string>
#include <vector>
#include <iostream>
#include <map>
#include <regex>
#include <fstream>
#include <ctime>

class Session;

class Message;

class Story {
private:
    static std::regex snr_id_re;//:: old_poem_test
    std::string story_id;
    std::map<std::string, std::vector<std::string>> scenarios;
    static std::regex trigger_re; // <<set $galley_door_visited = false>>
    static std::regex continue_re;// [[shiny_interest]]
    static std::regex end_snr; // [[游戏结束|goodbye_hell]] | [[我听见有人在说话。|vocal_demo]]
    static std::regex delay; // [[delay 30s|more_alive]]
    static std::regex if_statement;
    static std::regex else_statement;
    static std::regex end_if;
    static std::regex one_option; //[[我听见有人在说话。|vocal_demo]]

    std::ifstream story_input;

    std::string get_var_name(std::string line);

    std::string get_var_value(std::string line);

    void handle_if(int & i, std::vector<std::string> content, Session session);

    void handle_set(std::string trigger, Session session);

    void handle_delay(std::string line, Session session);

    void handle_line(std::string line, Session session);

    void set_up_msg(Session session, long msg_time, std::string content);

    int read_next_snr(std::string snr_id);



public:
    std::vector<std::string> split_line(std::string line);
    Story(std::string story_id, std::string story_file_path);
    int initialize();
    int process_session(Session session, std::string snr_id = "");
};


#endif //CSTORY_T_STORY_H
