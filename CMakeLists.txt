cmake_minimum_required(VERSION 3.10)
project(ChatHive)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Use vcpkg toolchain (modify with your actual path)
if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    set(CMAKE_TOOLCHAIN_FILE "C:/Tools/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "")
endif()

cmake_policy(SET CMP0167 NEW)
find_package(Boost 1.86 REQUIRED COMPONENTS system)
find_package(SQLite3 REQUIRED)
find_package(OpenSSL REQUIRED)

if (Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
else()
    message(FATAL_ERROR "Boost not found!")
endif()

# Define source files
file(GLOB SOURCES "src/*.cpp")

if (WIN32)
    add_definitions(-D_WIN32_WINNT=0x0A00) 
endif()

# Create the executable
add_executable(ChatHive ${SOURCES})

#Link libraries
target_link_libraries(ChatHive ${Boost_LIBRARIES} SQLite::SQLite3 OpenSSL::SSL OpenSSL::Crypto)

# Include header files
include_directories(include)

# Enable compiler warnings
if (MSVC)
    target_compile_options(ChatHive PRIVATE /W4)
else()
    target_compile_options(ChatHive PRIVATE -Wall -Wextra -pedantic)
endif()