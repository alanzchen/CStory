#include"message.h"

using namespace std;

Message::Message(string message_, long time, string url_){
    content = message_;
    url = url_;
    priority_queue<message_pair,
                        msg_container,
                        decltype(time)> queue(time);        //The object of priority_queue should be declared in the main function.
}

string Message::get_content(){
    return content;
}

string Message::get_session_id(){
    return session_id;
}
