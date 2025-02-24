cmake_minimum_required(VERSION 3.10)
project(ChatHive)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(BOOST_ROOT "C:/Users/Luke/boost_1_87_0/boost_1_87_0")

find_package(Boost 1.87 REQUIRED COMPONENTS system)

if (Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
else()
    message(FATAL_ERROR "Boost not found!")
endif()

# Define source files
file(GLOB SOURCES "src/*.cpp")

# Create the executable
add_executable(ChatHive ${SOURCES})

# Include header files
include_directories(include)

# Enable compiler warnings
if (MSVC)
    target_compile_options(ChatHive PRIVATE /W4)
else()
    target_compile_options(ChatHive PRIVATE -Wall -Wextra -pedantic)
endif()