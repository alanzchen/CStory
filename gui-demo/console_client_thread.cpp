#include "console_client_thread.h"

#include <QDebug>


ConsoleClientThread::ConsoleClientThread()
{

}

void ConsoleClientThread::run(){
    startrun(ui__);
}

void ConsoleClientThread::startrun(Dialog *ui_)
{
        string game_server;

        game_server = "localhost:8080";

        // start the client server so that the server can call
        HttpServer server;
        server.config.port=8081;

        string story_id;

        story_id = "silent_night";

        json current_choices;

        Dialog::LocalSession session = Dialog::LocalSession();
        server.resource["^/json$"]["POST"]=[&session, &current_choices, &ui_]
                (shared_ptr<HttpServer::Response> response, shared_ptr<HttpServer::Request> request) {
            try {
                auto j = json::parse(request->content);
                string content;
                if (j["session_id"] != session.session_id) {
                    throw(std::runtime_error("Invalid session_id."));
                }
                if (!j["choice"].get<bool>()) {
                    ui_->pprint2("Taylor", j["content"].get<string>());  // show message to the console
                    cout<<"test1";
                } else {                                                   // this is a choice
                    current_choices = j["choices"];
                }
                session.scenario_id = j["scenario_id"].get<string>();

                *response << "HTTP/1.1 200 OK\r\n"
                          << "Content-Type: application/json\r\n"
                          << "Content-Length: " << content.length() << "\r\n\r\n"
                          << content;
            }
            catch(exception& e) {
                json j;
                j["session_id"] = session.session_id;
                j["error"] = e.what();
                string err = j.dump();
                *response << "HTTP/1.1 400 Bad Request\r\n"
                          << "Content-Type: application/json\r\n"
                          << "Content-Length: " << err.size() << "\r\n\r\n" << err;
            }
        };

        string local_server_error;
        class thread server_thread([&server, &local_server_error](){
            //Start server
            try {
                server.start();
            } catch (exception& e) {
                local_server_error = e.what();
            }
        });

        // request for a session
        session.initialise("localhost:8081", game_server, story_id, ui_);
        ui_->setSession(&session);

        if (session.session_id == "failed") {
            ui_->pprint2("CStory", "Fatal Error: cannot establish connection with the server. Please make sure the server is running and reachable and <b> restart this application</b>.");
            ui_->disableButtons();
        }

        while(true) {
            if (local_server_error.size() != 0) {
                ui_->pprint2("CStory", "Local Client Error: " + local_server_error);
                local_server_error = "";
                ui_->disableButtons();
            }
            if (!current_choices.empty()) {
                session.init_button(current_choices);
            } else {
                boost::this_thread::sleep(boost::posix_time::milliseconds(10));
            }
        }

        server_thread.join();
}
