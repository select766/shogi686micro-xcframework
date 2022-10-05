cmake_minimum_required(VERSION 3.15)
project(shogi686micro)

set(CMAKE_CXX_STANDARD 14)

FILE(GLOB SRC ../../*.cpp)
add_library(shogi686micro STATIC ${SRC})
