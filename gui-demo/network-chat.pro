HEADERS       = \
    client_http.hpp \
    json.hpp \
    server_http.hpp \
    dialog.h \
    console_client_thread.h

SOURCES       = \
                main.cpp \
    dialog.cpp \
    console_client_thread.cpp

FORMS         = \
    dialog.ui
QT           += network widgets

macx {
    QMAKE_CXXFLAGS += -std=c++11

    _BOOST_PATH = /usr/local/Cellar/boost/1.63.0
    INCLUDEPATH += "$${_BOOST_PATH}/include/"
    LIBS += -L$${_BOOST_PATH}/lib
    ## Use only one of these:
    LIBS += -lboost_chrono-mt -lboost_system -lboost_filesystem -lboost_thread-mt # using dynamic lib (not sure if you need that "-mt" at the end or not)
    #LIBS += $${_BOOST_PATH}/lib/libboost_chrono-mt.a # using static lib
}

# install
target.path = $$[QT_INSTALL_EXAMPLES]/network/network-chat
INSTALLS += target


