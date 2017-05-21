//
// Created by Lucas Chen on 2017/4/1.
//

#include "story.h"
#include <random>
#include <boost/algorithm/string.hpp>

void neg_bool(bool &target) {
    if (target) {
        target = false;
    } else {
        target = true;
    }
}

long get_current_time() {
    return time(nullptr);
}

using namespace std;

regex Story::snr_id_re = regex(":: .*");
regex Story::trigger_re = regex("<<set .*>>");
regex Story::continue_re = regex("\\[\\[[\\S_]*]]");
regex Story::if_re = regex("<<.*if .*>>");
regex Story::else_re = regex("<<else.*>>");
regex Story::end_if_re = regex("<<endif>>");
regex Story::delay_re = regex(".*delay.*");
regex Story::options_re = regex("\\[\\[.*\\|.*\\]\\].?");

/*
 * Constructor of Story
 * take a file path as the input to initialize the story
 */
Story::Story(string story_id, string story_file_path) {
    story_input.open(story_file_path);
    this->story_id = story_id;
    initialize();
    story_input.close();
}


    // read the story script from file


void Story::initialize() {
    string line;
    if (story_input.is_open()) {
        cout << "Story file opened successfully." << endl;
    } else {
        cerr << "Failed to load story file." << endl;
    }
    while (getline(story_input, line)) {

         // if the line is detected as a id of scenario
         // use read_next_snr() to read the the scenario
        if (regex_match(line, snr_id_re)) {
            string snr_id = line.substr(3);
            cout << "Handle scenario: " << snr_id << endl;
            read_next_snr(snr_id);
        }
    }

    validate();
}

int Story::read_next_snr(string snr_id) {
    string line;
    vector<string> lines;
    scenarios[snr_id] = lines;
    while (getline(story_input, line)) {
        // if meet empty, scenario end here
        if (line.length() > 0) {
            read_line(line, snr_id);
        } else {
            return 0;
        }
    }
    return 0;
}


/*
 * handle each line and format it or clearning it.
 */
void Story::read_line(std::string line, std::string snr_id) {
    stack<char> buffer;
    unsigned int start = 0;

    // use stack to split the expressions out.
    for (unsigned int i = 0; i < line.size(); i++) {
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

/*
 * check if the story is validated
 * avoid the problem such as duplicate scenario ID
 * or no scenraio ID found but it's a target of some other scenario
 */
void Story::validate() {
    for (map<string, vector<string> >::iterator it = scenarios.begin(); it != scenarios.end(); it++) {
        vector<string> contents = it->second;
        if (contents.size() == 0)
            validated = false;
        string end = contents[contents.size() - 1];
        if (regex_match(end, options_re)) {
            map<string, string> options = getOptions(end);
            for (map<string, string>::iterator opt = options.begin(); opt != options.end(); opt++) {
                string option = opt->second;
                if (!scenarios.count(option)) {
                    validated = false;
                }
            }
        } else if (regex_match(end, continue_re)) {
            string option = end.substr(2, end.size() - 4);
            if (!scenarios.count(option)) {
                validated = false;
            }
        }
    }
}


/*
 * main.cpp will invoke this function and pass a session into it
 */
void Story::process_session(Session &session, string snr_id, long tm) {
    cout << "Processing session " << session.getSession_id() << endl;
    bool status = true;
    if (snr_id == "") {
        snr_id = session.getScenario_id();
    }
    vector<string> messages = scenarios[snr_id];
    for (int i = 0; i < messages.size(); i++) {
        string line = messages[i];
        if (regex_match(line, if_re)) {
            cout << "handle if statement: " << line;
            status = judge(line, session);
            if (status) {
                cout << " satisfied" << endl;
            } else {
                cout << " unsatisfied" << endl;
            }
            continue;
        } else if (regex_match(line, else_re)) {
            cout << "handle else statement: " << line << endl;
            if (regex_match(line, if_re)) {
                cout << "handle if statement: " << line;
                status = judge(line, session);
                if (status) {
                    cout << " satisfied" << endl;
                } else {
                    cout << "unsatisfied" << endl;
                }
            } else {
                neg_bool(status);
            }
            continue;
        } else if (regex_match(line, end_if_re)) {
            status = true;
            continue;
        }
        if (status) {
            handle_line(line, session, tm);
        }
    }
}

/*
 * processing the player's game line by line
 * detect if there are delay, value updates or if-expression
 * and setup the messages for session
 */
void Story::handle_line(std::string line, Session session, long &timestamp) {
    timestamp += line.size() / 30;
    if (regex_match(line, trigger_re)) {
        timestamp -= line.size() / 30;
        handle_set(line, session);
    } else if (regex_match(line, delay_re)) {
        if (regex_match(line, options_re)) {
            cout << "handle delay " << line << endl;
            map<string, string> option = getOptions(line);
            map<string, string>::iterator i = option.begin();
            string next_snr = i->first;
            string text = i->second;
            int delayTime = get_delay_time(text);
            int index = line.find('^');
            string msgcontent = text.substr(index - 1);
            cout << "delay " << delayTime << "s for msg: " << msgcontent << endl;
            session.ackDelay(delayTime / 60, timestamp, msgcontent);
            timestamp += delayTime;
            process_session(session, next_snr, timestamp);
        } else {
            int delayTime = get_delay_time(line);
            timestamp += delayTime;
            unsigned index = line.find('^');
            line = line.substr(index + 1);
            set_up_msg(session, timestamp, line);
        }
    } else if (regex_match(line, continue_re)) {
        cout << "continue_re" << line << endl;
        process_session(session, line.substr(2, line.size() - 4), timestamp);
    } else if (regex_match(line, options_re)) {
        set_up_msg(session, timestamp - line.size() / 30, line);
    } else {
        set_up_msg(session, timestamp, line);
    }
}

/*
 * update status of a session
 */
void Story::handle_set(std::string trigger, Session session) {
    cout << "handle set: " << trigger << endl;
    string var_name = get_var_name(trigger);
    string var_val = get_var_value(trigger);

    session.set_status(var_name, var_val);
}

/*
 * check is a if-statement is satisfied
 */
bool Story::judge(std::string ifString, Session session) {
    string varName = get_var_name(ifString);
    string varValue = get_var_value(ifString);
    return session.getStatus(varName) == varValue;
}

/*
 * set message for a session
 */
void Story::set_up_msg(Session session, long msg_time, std::string content) {
    if (regex_match(content, options_re)) {
        map<string, string> choices = getOptions(content);
        nlohmann::json choice_json(choices);
        session.generate_msg(choice_json, msg_time);
    } else {
        session.generate_msg(content, msg_time);
    }
}

/*
 * get all options from an choice script
 * return a map, the key is the text to be display
 * and value is the id of the corresponding scenario
 *
 * use stack as a buffer to split specific part out
 */
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
                translate_options(result, line.substr(start, i - start + 1));
            }
        }
    }

    return result;
}

/*
 * analyze the options and put the result in given map
 */
void Story::translate_options(std::map<std::string, std::string> &target, std::string line) {
    unsigned long index = line.find('|');
    string display = line.substr(2, index - 2);
    string key = line.substr(index + 1, line.size() - index - 3);
    target[key] = display;
}

/*
 * get the variable name in an set-statement or if-statement
 */
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

/*
 * get the variable value in an set-statement or if-statement
 */
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

/*
 * calculate how long should the message be delayed
 * according to a delay-statement
 */
int Story::get_delay_time(std::string line) {
    unsigned long pos = line.find('^');
    int start = 0, end = 0;

    for (unsigned int i = 0; i < line.size(); i++) {
        if (line[i] == ' ') {
            start = i;
        } else if (line[i] == '^') {
            end = i;
            break;
        }
    }

    string n = line.substr(start + 1, end - start - 2);

    int numerica = stoi(n);
    switch (line[pos - 1]) {
        case 'm':
            return numerica * 60;
        case 'h':
            return numerica * 3600;
        default:
            return numerica;
    }
}

/*
 * getter of id
 */
std::string Story::get_story_ID() {
    return story_id;
}

/*
 * get the validate status of the story
 */
bool Story::is_validated() {
    return validated;
}

