cmake_minimum_required(VERSION 3.6)
project(CStory)
include_directories(.)
set(CMAKE_CXX_STANDARD 11)

set(BOOST_COMPONENTS system thread filesystem date_time)
find_package(Boost 1.53.0 COMPONENTS ${BOOST_COMPONENTS} REQUIRED)
include_directories(SYSTEM ${Boost_INCLUDE_DIR})

set(SOURCE_FILES main.cpp console_client.cpp)
add_executable(CStory_Server main.cpp session.cpp story.h story.cpp message.h message.cpp)
add_executable(Console_Client console_client.cpp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra")
target_link_libraries(CStory_Server ${Boost_LIBRARIES})
target_link_libraries(CStory_Server ${CMAKE_THREAD_LIBS_INIT})
target_link_libraries(Console_Client ${Boost_LIBRARIES})
target_link_libraries(Console_Client ${CMAKE_THREAD_LIBS_INIT})