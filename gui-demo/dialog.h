#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include <QString>
#include <QMetaType>
#include <QTextCursor>

#include "client_http.hpp"
#include "server_http.hpp"

//Added for the default_resource example

#include <fstream>
#include <boost/filesystem.hpp>
#include <boost/thread/thread.hpp>
#include "json.hpp"
#include <vector>
#include <algorithm>
#include <map>
#include <vector>
#include <time.h>
#include "dialog.h"
#include <QApplication>
#include <QtCore/QSettings>

using namespace std;
using json = nlohmann::json;
typedef SimpleWeb::Client<SimpleWeb::HTTP> HttpClient;
typedef SimpleWeb::Server<SimpleWeb::HTTP> HttpServer;

namespace Ui {
class Dialog;
}

class Dialog : public QDialog
{
    Q_OBJECT

public:
    struct LocalSession {
        string session_id = "failed";
        string scenario_id = "start";
        string story_id;
        string endpoint;
        Dialog * ui;
        HttpClient * connection;
        string game_server;
        string callback;
        LocalSession() {}

        void initialise(string callback_, string game_server_, string story_id_, Dialog * ui_ ) {
            ui = ui_;
            json j;
            story_id = story_id_;
            callback = callback_;
            game_server = game_server_;
            j["story_id"] = story_id;
            j["callback"] = callback;
            j["endpoint"] = "/json";
            callback = callback_;
            connection = new HttpClient(game_server);
            string response;
            try {
                response = (*this).request("/start", j.dump());
                auto r = json::parse(response);
                if (r["scenario"] == scenario_id) {
                    session_id =  r["session_id"];
                } else {
                    ui->pprint2("CStory", "Invalid response from the server:");
                    cout << response << endl;
                }
            } catch (exception & e) {
                cout << "Error: " << e.what() << endl;
                cout << response << endl;
            }
        }

        string request(string path, string payload) {
            auto response = (*connection).request("POST", path, payload);
            try {
                stringstream ss;
                ss << response->content.rdbuf();
                string content=ss.str();
                return content;
            } catch (exception & e) {
                return response->status_code;
            }
        }

        void init_button(json &choices) { // originally "choose"

            int count = 1;

            //enable the buttons here
            ui->enableButtons();

            //vector<string> choices_vec;//id
            //vector<string> choices_str_vec;//content
            //auto vec_it = choices_vec.begin();
            //auto vec_str_it = choices_str_vec.begin();
    //            ui->displayWords("CStory> What would you say?\n");
            for (json::iterator it = choices.begin(); it != choices.end(); it++) {
    //            ui->tempChoice = it.value();
    //            choices_vec.insert(vec_it, it.key());
    //            choices_str_vec.insert(vec_str_it, it.value());
                //vec_it = choices_vec.begin();
                //vec_str_it = choices_str_vec.begin();
                if (count==1) {
                    ui->setLBtext(it.value());
                    ui->tempChoice1 = it.value();
                    ui->tempChoiceid1 = it.key();
                }
                if (count==2) {
                    ui->setRBtext(it.value());
                    ui->tempChoice2 = it.value();
                    ui->tempChoiceid2 = it.key();
                }
                count++;
            }
            choices = json();

        }

        void choose(string choice_id, string choice_text) {
            ui->pprint2("You", choice_text); // print the reply to the window
            json j;
            j["session_id"] = session_id;
            j["choice"] = choice_id;
            connection = new HttpClient(game_server);
            try {
                (*this).request("/json", j.dump());
            } catch (exception &e) {
                string str(e.what());
                ui->pprint2("CStory", "Error: " + str);
            }


            // disable the buttons here
            ui->disableButtons();
            //ui->setWindowTitle("Silent Night");
        }
    };

    explicit Dialog(QWidget *parent = 0);
    ~Dialog();
    void getSessionStory();
    void welcomeWords();
    void pprint2(QString people, std::__1::string msg);
    void displayWords(QString str);
    void setSession(LocalSession * session_);
    std::string tempChoice1;
    std::string tempChoice2;
    std::string tempChoiceid1;
    std::string tempChoiceid2;
    LocalSession * session;
    bool flag1 = false;
    bool flag2 = false;

public slots:

    void disableButtons();
    void enableButtons();
    void setLBtext(std::string str);
    void setRBtext(std::string str);

private slots:
    
    void on_button1_clicked();

    void on_button2_clicked();

private:
    
    Ui::Dialog *ui;
};

#endif // DIALOG_H
