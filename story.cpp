//
// Created by Lucas Chen on 2017/4/1.
//

#include "story.h"
#include <boost/algorithm/string.hpp>


using namespace std;


regex Story::snr_id_re = regex(":: .*");
regex Story::trigger_re = regex("<<set .*>>");
regex Story::continue_re = regex("\\[\\[[\\S_]*]]");
regex Story::end_snr = regex("\\[\\[.*\\|.*]]");
regex Story::if_statement = regex("<<.*if .*>>");
regex Story::else_statement = regex("<<else.*>>");
regex Story::end_if = regex("<<endif>>");
regex Story::one_option = regex("\\[\\[.*?\\]\\]");
regex Story::delay = regex("\\[\\[delay .*\\]\\]");

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
//            cout << "Handle scenario: " << snr_id << endl;
            read_next_snr(snr_id);
//            for (string s: scenarios[snr_id])
//                cout << s << endl;
        }
    }

    return 0;
}

int Story::read_next_snr(string snr_id) {
    string line;
    vector<string> lines;
    scenarios[snr_id] = lines;
    while (getline(story_input, line)) {
        if (!regex_search(line, trigger_re) & line.length() > 0) {
            scenarios[snr_id].push_back(line);
        }

        if (regex_match(line, end_snr)) {
            return 0;
        }
    }
    return 0;
}

vector<string> Story::split_line(std::string line) {
    vector<string> result;
    unsigned temp = 0;
    for (unsigned i = 0; i < line.size(); i++) {
        if ((line.at(i) == '>' && line.at(i - 1) == '>') ||
            (i < line.size() && line.at(i + 1) == '<' && line.at(i + 2) == '<')) {
            result.push_back(line.substr(temp, i - temp));
            temp = i + 1;
        }
    }

    result.push_back(line.substr(temp));

    return result;
}

int Story::process_session(Session session, string snr_id) {
    cout << "Story " << (*this).story_id << ": processing session " << session.getSession_id() << endl;
    if (snr_id == "") {
        snr_id = session.getScenario_id();
    }
    vector<string> snr_content = scenarios[snr_id];
    string line;
    for (int i = 0; i < snr_content.size(); i++) {
        line = snr_content[i];
        if (regex_match(line, if_statement)) {
            handle_if(i, snr_content, session);
        } else {
            handle_line(line, session);
        }
    }
    return 0;
}

void Story::handle_set(std::string trigger, Session session) {
    string var_name = get_var_name(trigger);
    string var_val = get_var_value(trigger);
    session.set_status(var_name, var_val);
}

void Story::handle_line(std::string line, Session session) {
    if (regex_match(line, trigger_re)) {
        handle_set(line, session);
    } else if (regex_match(line, delay)) {
        handle_delay(line, session);
    } else if (regex_match(line, continue_re)) {
        process_session(session, line.substr(2, line.size() - 4));
    } else {
        set_up_msg(session, time(nullptr), line);
    }
}

void Story::handle_if(int &i, std::vector<std::string> content, Session session) {
    string var_name = get_var_name(content[i]);
    string var_val = get_var_value(content[i]);

    if (session.getStatus(var_name) == var_val) {
        while (!regex_match(content[i], else_statement) && i < content.size()) {
            handle_line(content[i], session);
            i++;
        }
    } else {

        do {
            i++;
        } while (!regex_match(content[i], else_statement) && i < content.size());

        if (regex_match(content[i], if_statement)) {
            handle_if(i, content, session);
        } else {
            i++;
            while (!regex_match(content[i], end_if) && i < content.size()) {
                handle_line(content[i], session);
            }
        }
    }
}

void Story::set_up_msg(Session session, long msg_time, std::string content) {
    session.generate_msg(content, msg_time);
}

std::string Story::get_var_value(std::string line) {
    int i = line.size() - 2;
    do {
        i--;
    } while (line[i] != ' ');
    return line.substr(i + 1, line.size() - i - 3);
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

void Story::handle_delay(std::string line, Session session) {
    unsigned int pos = line.find('^');
    int numerica = stoi(line.substr(8, pos - 9));
    switch (line[pos - 1]) {
        case 'm':
            numerica = numerica * 60;
            break;
        case 'h':
            numerica = numerica * 3600;
            break;
        default:
            break;
    }
    set_up_msg(session, time(nullptr) + numerica, line);
}

