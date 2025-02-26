#!/bin/bash


# Set build directory
BUILD_DIR="build"

# Remove old build directory if it exists
rm -rf $BUILD_DIR

# Build the project
cmake --build $BUILD_DIR

# Run the chat server
echo "Starting Chat Server..."
cd $BUILD_DIR
./ChatHive
