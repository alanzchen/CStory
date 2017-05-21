//
// Created by Lucas Chen on 2017/4/1.
//

#include "story.h"
#include <random>
#include <json.hpp>
#include <boost/algorithm/string.hpp>

void negBool(bool &target) {
    if (target) {
        target = false;
    } else {
        target = true;
    }
}

long getCurrentTime() {
    return time(nullptr);
}

using namespace std;

regex Story::snr_id_re = regex(":: .*");
regex Story::trigger_re = regex("<<set .*>>");
regex Story::continue_re = regex("\\[\\[[\\S_]*]]");
regex Story::if_statement = regex("<<.*if .*>>");
regex Story::else_statement = regex("<<else.*>>");
regex Story::end_if = regex("<<endif>>");
regex Story::delay = regex("\\[\\[delay .*\\]\\]");
regex Story::options = regex("\\[\\[.*\\|.*\\]\\].?");

Story::Story(string story_id, string story_file_path) {
    story_input.open(story_file_path);
    this->story_id = story_id;
    initialize();
    story_input.close();
}

int Story::initialize() {
    string line;
    if (story_input.is_open()) {
        cout << "Story file opened successfully." << endl;
    } else {
        cerr << "Failed to load story file." << endl;
    }
    while (getline(story_input, line)) {
        if (regex_match(line, snr_id_re)) {
            string snr_id = line.substr(3);
            cout << "Handle scenario: " << snr_id << endl;
            read_next_snr(snr_id);
            for (string s: scenarios[snr_id])
                cout << s << endl;
        }
    }
    return 0;
}

int Story::read_next_snr(string snr_id) {
    string line;
    vector<string> lines;
    scenarios[snr_id] = lines;
    while (getline(story_input, line)) {
        if (line.length() > 0) {
            read_line(line, snr_id);
        } else {
            return 0;
        }
    }
    return 0;
}


void Story::read_line(std::string line, std::string snr_id) {
    stack<char> buffer;
    int start = 0;

    for (int i = 0; i < line.size(); i++) {
        char c = line[i];

        if (c == '<') {
            if (buffer.size() == 0 & i != 0) {
                scenarios[snr_id].push_back(line.substr(start, i - start));
                start = i;
            }
            buffer.push(c);
        } else if (c == '>') {
            buffer.pop();
            if (buffer.size() == 0) {
                scenarios[snr_id].push_back(line.substr(start, i + 1 - start));
                start = i + 1;
            }
        }
    }

    string str = line.substr(start);
    if (str.size() != 0) {
        scenarios[snr_id].push_back(str);
    }
}

void Story::process_session(Session session, string snr_id, long tm) {
    bool status = true;
    if (snr_id == "") {
        snr_id = session.getScenario_id();
    }
    vector<string> messages = scenarios[snr_id];
    for (int i = 0; i < messages.size(); i++) {
        string line = messages[i];
        if (regex_match(line, if_statement)) {
            status = judge(line, session);
            continue;
        } else if (regex_match(line, else_statement)) {
            if (regex_match(line, if_statement)) {
                status = judge(line, session);
            } else {
                negBool(status);
            }
            continue;
        } else if (regex_match(line, end_if)) {
            status = true;
            continue;
        }
        if (status) {
            handle_line(line, session, tm);
        }
    }
}

void Story::handle_line(std::string line, Session session, long &timestamp) {
    timestamp += line.size() / 30;
    if (regex_match(line, trigger_re)) {
        handle_set(line, session);
    } else if (regex_match(line, delay)) {
        int delayTime = getDelayTime(line, session);
        timestamp += delayTime;
        set_up_msg(session, timestamp, line);
    } else if (regex_match(line, continue_re)) {
        process_session(session, line.substr(2, line.size() - 4), timestamp);
    } else {
        set_up_msg(session, timestamp, line);
    }
}

bool Story::validate() {
    return false;
}


void Story::handle_set(std::string trigger, Session session) {
    string var_name = get_var_name(trigger);
    string var_val = get_var_value(trigger);
    session.set_status(var_name, var_val);
}


bool Story::judge(std::string ifString, Session session) {
    string varName = get_var_name(ifString);
    string varValue = get_var_value(ifString);
    return session.getStatus().at(varName) == varValue;
}

void Story::set_up_msg(Session session, long msg_time, std::string content) {
//    cout << "Message handled: " << content << " at time: " << msg_time<< endl;
    if (regex_match(content, options)) {
        map<string, string> choices = getOptions(content);
        nlohmann::json choice_json;

    } else {
        session.generate_msg(content, msg_time);
    }
}

std::map<std::string, std::string> Story::getOptions(std::string line) {
    stack<char> buffer;
    map<string, string> result;
    unsigned int start = 0;
    for (unsigned int i = 0; i < line.size(); i++) {
        char c = line[i];
        if (c == '[') {
            if (buffer.size() == 0) {
                start = i;
            }
            buffer.push(c);
        } else if (c == ']') {
            buffer.pop();
            if (buffer.size() == 0) {
                translateOptions(result, line.substr(start, i - start + 1));
            }
        }
    }

    return result;
}

void Story::translateOptions(std::map<std::string, std::string> target, std::string line) {
    unsigned long index = line.find('|');
    string display =  line.substr(2, index - 2);
    string key = line.substr(index+1, line.size() - index - 3);
    target[key] = display;
}


std::string Story::get_var_value(std::string line) {
    unsigned long i = line.size() - 2;
    do {
        i--;
    } while (line[i] != ' ');
    string value = line.substr(i + 1, line.size() - i - 3);
    if (value[0] == '"') {
        value = value.substr(1, value.size() - 2);
    }
    return value;
}

std::string Story::get_var_name(std::string line) {
    int start = -1;
    for (int i = 0; i < line.size(); i++) {
        if (line[i] == '$') {
            start = i + 1;
        }
        if (start != -1 && line[i] == ' ') {
            return line.substr(start, i - start);
        }
    }
    return "";
}
int Story::getDelayTime(std::string line, Session session) {
    unsigned long pos = line.find('^');
    int numerica = stoi(line.substr(8, pos - 9));
    switch (line[pos - 1]) {
        case 'm':
            return numerica * 60;
        case 'h':
            return numerica * 3600;
        default:
            return numerica;
    }
}

std::string Story::getStoryID() {
    return story_id;
}




