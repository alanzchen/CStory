#include"message.h"

using namespace std;

Message::Message(string message_, long times, string url_, string sessionID)
{
    content = message_;
    timestamp = times;
    url = url_;
    session_id = sessionID;
    //The object of Message class and priority_queue should be declared in the main function.
}

string Message::get_content() const
{
    return content;
}

string Message::get_session_id() const
{
    return session_id;
}

long Message::get_time() const{
    return timestamp;
}

bool MyCompare::operator()(Message left, Message right) const
{
    return left.get_time()>right.get_time();
}


/* 
 * Below is the main function for test.
 */


int test()
{
    priority_queue<Message,vector<Message>,MyCompare> pqueue;
    
    Message m1("hello",time(nullptr),"url1", "session_id1");
    
    /* When declaring such a Message class, please enter in the oder as:
     * message(string), time(long), url(string), session_id(string)
     */
    
//    int a;        //可用来腾出时间间隔
//    cin >> a;
    
    Message m2("world",time(nullptr),"url2", "session_id2");
    
    Message m3("jimmy",time(nullptr),"url3", "session_id3");
    
    /* 
     * 因为目前计算机计算速度过快，需要在构建不同的Message时留有时间间隔
     * 正常用户使用时通常会产生合理的时间间隔
     */
    
    pqueue.push(m1);
    
    pqueue.push(m2);
    
    pqueue.push(m3);
    
    while(!pqueue.empty())
    {
        cout<<pqueue.top().get_content()<<pqueue.top().get_time()<<pqueue.top().get_session_id()<<endl;
        //Above is for test. What we truly use to show the message is just:
        //cout<<pqueue.top().get_content()<<endl;
        pqueue.pop();
    }

    return 0;
}

const string &Message::getUrl() const {
    return url;
}
