#ifndef CONSOLE_CLIENT_THREAD_H
#define CONSOLE_CLIENT_THREAD_H

#include <QThread>
#include <iostream>
#include <QDialog>
#include <QString>
#include <QMetaType>
#include <QTextCursor>

#include "dialog.h"

class ConsoleClientThread : public QThread
{
    Q_OBJECT

public:
    ConsoleClientThread();
    void run();
    void startrun(Dialog * ui_);
    Dialog * ui__;
};

#endif // CONSOLE_CLIENT_THREAD_H
