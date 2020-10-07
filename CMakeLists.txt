cmake_minimum_required(VERSION 3.10)

project(dice-util VERSION 0.1.0)

include_directories(inc)

add_executable(rolldice src/main.cpp src/dice.cpp)