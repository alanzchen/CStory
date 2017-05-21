#include "dialog.h"
#include "ui_dialog.h"
#include <iostream>
#include <QPushButton>
#include <QScrollBar>
#include <QApplication>
#include <QtCore/QSettings>
using namespace std;
using json = nlohmann::json;
typedef SimpleWeb::Client<SimpleWeb::HTTP> HttpClient;
typedef SimpleWeb::Server<SimpleWeb::HTTP> HttpServer;

Dialog::Dialog(QWidget *parent) :

    QDialog(parent),
    ui(new Ui::Dialog)
{
    ui->setupUi(this);
    this->setWindowTitle("CStory: Silent Night");
}

Dialog::~Dialog()
{
    delete ui;
}

void Dialog::setLBtext(std::string str){
    QString qstr;
    qstr = QString::fromStdString(str);
    ui->button1->setText(qstr);       //Displayed name could be changed dynamically.
}

void Dialog::setRBtext(std::string str){
    QString qstr;
    qstr = QString::fromStdString(str);
    ui->button2->setText(qstr);       //Displayed name could be changed dynamically.
}

void Dialog::enableButtons(){
    ui->button1->setEnabled(true);
    ui->button2->setEnabled(true);
}

void Dialog::disableButtons(){
    ui->button1->setEnabled(false);
    ui->button2->setEnabled(false);
}

void Dialog::welcomeWords(){
    ui->textBrowser->append("<b>CStory ></b> Welcome to CStory Engine Demo Console Client! Now you are using a demo version and will automatically enter the magic story: <Silent Night>");
    ui->textBrowser->append("\n<b>CStory ></b> Connecting to localhost:8080\n");
}

void Dialog::displayWords(QString str){
    ui->textBrowser->append(str);
}

void Dialog::setSession(LocalSession * session_) {
    this->session = session_;
}

void Dialog::pprint2(QString people, std::string msg) {
    QString qstr;
    qstr = QString::fromStdString(msg);
    if (msg.size() != 0) ui->textBrowser->append("<b>" + people + " > </b>" + qstr);
    ui->textBrowser->moveCursor(QTextCursor::End);
}

void Dialog::on_button1_clicked()
{
    (*session).choose(tempChoiceid1, tempChoice1);
}


void Dialog::on_button2_clicked()
{
    (*session).choose(tempChoiceid2, tempChoice2);
}
