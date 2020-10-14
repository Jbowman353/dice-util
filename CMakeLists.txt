cmake_minimum_required(VERSION 3.10)

project(dice-util VERSION 0.1.0)

include_directories(inc)

set(Boost_USE_STATIC_LIBS OFF) 
set(Boost_USE_MULTITHREADED ON)  
set(Boost_USE_STATIC_RUNTIME OFF) 
find_package(Boost 1.45.0 COMPONENTS program_options) 

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable(rolldice src/main.cpp src/dice.cpp)
    target_link_libraries(rolldice ${Boost_LIBRARIES})
endif()

