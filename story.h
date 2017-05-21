//
// Created by Lucas Chen on 2017/4/1.
//



#ifndef CSTORY_T_STORY_H
#define CSTORY_T_STORY_H

#include "session.h"
#include "message.h"
//#include "common_tools.h"
#include <vector>
#include <iostream>
#include <map>
#include <regex>
#include <fstream>
#include <ctime>
#include <stack>

class Session;

long getCurrentTime();

class Story {
private:
    std::string story_id;
    bool validated = true;
    std::map<std::string, std::vector<std::string>> scenarios;
    static std::regex snr_id_re; // :: old_poem_test
    static std::regex trigger_re; // <<set $var = value>>
    static std::regex continue_re;// [[shiny_interest]]
    static std::regex delay_re; // [[delay_re 30s|more_alive]]
    static std::regex if_re; // <<if $var == value>>
    static std::regex else_re; // <<else>>
    static std::regex end_if_re; // <<else if &var == value>>
    static std::regex options_re; // [[option 1|text]] | [[option 2|text]]

    std::ifstream story_input;

    std::string get_var_name(std::string line);

    std::string get_var_value(std::string line);

    void handle_set(std::string trigger, Session session);

    int getDelayTime(std::string line);

    void handle_line(std::string line, Session session, long &timestamp);

    void set_up_msg(Session session, long msg_time, std::string content);

    int read_next_snr(std::string snr_id);

    void read_line(std::string line, std::string snr_id);

    bool judge(std::string ifString, Session session);

    std::map<std::string, std::string> getOptions(std::string line);

    void validate();

    void translateOptions(std::map<std::string, std::string> & target, std::string line);
public:

    Story(std::string story_id, std::string story_file_path);

    std::string getStoryID();

    void initialize();

    bool isValidated();

    void process_session(Session session, std::string snr_id = "", long tm = getCurrentTime());
};


#endif //CSTORY_T_STORY_H
