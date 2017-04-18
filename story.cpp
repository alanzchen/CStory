//
// Created by Lucas Chen on 2017/4/1.
//

#include "story.h"
#include <string>
#include <vector>
#include <iostream>
#include <regex>

using namespace std;

regex Story::snr_id_re = regex(":: .*");
regex Story::trigger_re = regex("<<.*>>");
regex Story::continue_re = regex("\\[\\[[\\S_]*]]");
regex Story::end_snr = regex("\\[\\[.*\\|.*]]");
regex Story::one_option = regex("\\[\\[.*?\\]\\]");
regex Story::delay = regex("\\[\\[delay .*\\]\\]");

Story::Story(string story_id, string story_file_path) {
    story_input.open(story_file_path);
    this->story_id = story_id;
    initialize();
}

int Story::initialize() {
    string line;
    while (getline(story_input, line)) {
        if (regex_match(line, snr_id_re)) {
            string snr_id = line.substr(3);
            read_next_snr(snr_id);
        }
    }

    return 0;
}

int Story::read_next_snr(string snr_id) {
    string line;
    vector<string> lines;
    scenarios[snr_id] = lines;
    while (getline(story_input, line)) {
        if (regex_search(line, trigger_re)) {
            vector<string> result = split_line(line);
            for (unsigned i = 0; i < result.size(); i++)
                scenarios[snr_id].push_back(result[i]);

        } else {
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

int Story::process_session(Session session) {
    string snr_id = session.
    return 0;
}

