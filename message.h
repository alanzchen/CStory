#include <iostream>
#include<iomanip>
#include <fstream>
//#include "json.hpp"
#include <vector>
#include <algorithm>
#include <map>
#include <vector>
#include <time.h>
#include <string>

class message {

public:
    std::tm timestamp;
    std::string get_content();
    std::string get_session_id();

private:
    std::string session_id;
    std::string content;

};
