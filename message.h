#include <iostream>
#include <iomanip>
#include <time.h>
#include <string>
#include "session_id"
#include "Story.h"

class message {

public:
    std::tm timestamp;
    std::string get_content();
    std::string get_session_id();

private:
    std::string session_id;
    std::string content;

};
