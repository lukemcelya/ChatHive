# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lukemcelya/dev/ChatHive

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lukemcelya/dev/ChatHive/build

# Include any dependencies generated for this target.
include CMakeFiles/ChatHive.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ChatHive.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ChatHive.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ChatHive.dir/flags.make

CMakeFiles/ChatHive.dir/codegen:
.PHONY : CMakeFiles/ChatHive.dir/codegen

CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o: CMakeFiles/ChatHive.dir/flags.make
CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o: /Users/lukemcelya/dev/ChatHive/src/ChatRoom.cpp
CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o: CMakeFiles/ChatHive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lukemcelya/dev/ChatHive/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o -MF CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o.d -o CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o -c /Users/lukemcelya/dev/ChatHive/src/ChatRoom.cpp

CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lukemcelya/dev/ChatHive/src/ChatRoom.cpp > CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.i

CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lukemcelya/dev/ChatHive/src/ChatRoom.cpp -o CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.s

CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o: CMakeFiles/ChatHive.dir/flags.make
CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o: /Users/lukemcelya/dev/ChatHive/src/ChatServer.cpp
CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o: CMakeFiles/ChatHive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lukemcelya/dev/ChatHive/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o -MF CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o.d -o CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o -c /Users/lukemcelya/dev/ChatHive/src/ChatServer.cpp

CMakeFiles/ChatHive.dir/src/ChatServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ChatHive.dir/src/ChatServer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lukemcelya/dev/ChatHive/src/ChatServer.cpp > CMakeFiles/ChatHive.dir/src/ChatServer.cpp.i

CMakeFiles/ChatHive.dir/src/ChatServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ChatHive.dir/src/ChatServer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lukemcelya/dev/ChatHive/src/ChatServer.cpp -o CMakeFiles/ChatHive.dir/src/ChatServer.cpp.s

CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o: CMakeFiles/ChatHive.dir/flags.make
CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o: /Users/lukemcelya/dev/ChatHive/src/ChatSession.cpp
CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o: CMakeFiles/ChatHive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lukemcelya/dev/ChatHive/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o -MF CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o.d -o CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o -c /Users/lukemcelya/dev/ChatHive/src/ChatSession.cpp

CMakeFiles/ChatHive.dir/src/ChatSession.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ChatHive.dir/src/ChatSession.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lukemcelya/dev/ChatHive/src/ChatSession.cpp > CMakeFiles/ChatHive.dir/src/ChatSession.cpp.i

CMakeFiles/ChatHive.dir/src/ChatSession.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ChatHive.dir/src/ChatSession.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lukemcelya/dev/ChatHive/src/ChatSession.cpp -o CMakeFiles/ChatHive.dir/src/ChatSession.cpp.s

CMakeFiles/ChatHive.dir/src/Database.cpp.o: CMakeFiles/ChatHive.dir/flags.make
CMakeFiles/ChatHive.dir/src/Database.cpp.o: /Users/lukemcelya/dev/ChatHive/src/Database.cpp
CMakeFiles/ChatHive.dir/src/Database.cpp.o: CMakeFiles/ChatHive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lukemcelya/dev/ChatHive/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ChatHive.dir/src/Database.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatHive.dir/src/Database.cpp.o -MF CMakeFiles/ChatHive.dir/src/Database.cpp.o.d -o CMakeFiles/ChatHive.dir/src/Database.cpp.o -c /Users/lukemcelya/dev/ChatHive/src/Database.cpp

CMakeFiles/ChatHive.dir/src/Database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ChatHive.dir/src/Database.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lukemcelya/dev/ChatHive/src/Database.cpp > CMakeFiles/ChatHive.dir/src/Database.cpp.i

CMakeFiles/ChatHive.dir/src/Database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ChatHive.dir/src/Database.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lukemcelya/dev/ChatHive/src/Database.cpp -o CMakeFiles/ChatHive.dir/src/Database.cpp.s

CMakeFiles/ChatHive.dir/src/Main.cpp.o: CMakeFiles/ChatHive.dir/flags.make
CMakeFiles/ChatHive.dir/src/Main.cpp.o: /Users/lukemcelya/dev/ChatHive/src/Main.cpp
CMakeFiles/ChatHive.dir/src/Main.cpp.o: CMakeFiles/ChatHive.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/lukemcelya/dev/ChatHive/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ChatHive.dir/src/Main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ChatHive.dir/src/Main.cpp.o -MF CMakeFiles/ChatHive.dir/src/Main.cpp.o.d -o CMakeFiles/ChatHive.dir/src/Main.cpp.o -c /Users/lukemcelya/dev/ChatHive/src/Main.cpp

CMakeFiles/ChatHive.dir/src/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ChatHive.dir/src/Main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lukemcelya/dev/ChatHive/src/Main.cpp > CMakeFiles/ChatHive.dir/src/Main.cpp.i

CMakeFiles/ChatHive.dir/src/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ChatHive.dir/src/Main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lukemcelya/dev/ChatHive/src/Main.cpp -o CMakeFiles/ChatHive.dir/src/Main.cpp.s

# Object files for target ChatHive
ChatHive_OBJECTS = \
"CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o" \
"CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o" \
"CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o" \
"CMakeFiles/ChatHive.dir/src/Database.cpp.o" \
"CMakeFiles/ChatHive.dir/src/Main.cpp.o"

# External object files for target ChatHive
ChatHive_EXTERNAL_OBJECTS =

ChatHive: CMakeFiles/ChatHive.dir/src/ChatRoom.cpp.o
ChatHive: CMakeFiles/ChatHive.dir/src/ChatServer.cpp.o
ChatHive: CMakeFiles/ChatHive.dir/src/ChatSession.cpp.o
ChatHive: CMakeFiles/ChatHive.dir/src/Database.cpp.o
ChatHive: CMakeFiles/ChatHive.dir/src/Main.cpp.o
ChatHive: CMakeFiles/ChatHive.dir/build.make
ChatHive: /opt/homebrew/lib/libboost_system.dylib
ChatHive: /Library/Developer/CommandLineTools/SDKs/MacOSX15.2.sdk/usr/lib/libsqlite3.tbd
ChatHive: CMakeFiles/ChatHive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/lukemcelya/dev/ChatHive/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ChatHive"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatHive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ChatHive.dir/build: ChatHive
.PHONY : CMakeFiles/ChatHive.dir/build

CMakeFiles/ChatHive.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ChatHive.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ChatHive.dir/clean

CMakeFiles/ChatHive.dir/depend:
	cd /Users/lukemcelya/dev/ChatHive/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lukemcelya/dev/ChatHive /Users/lukemcelya/dev/ChatHive /Users/lukemcelya/dev/ChatHive/build /Users/lukemcelya/dev/ChatHive/build /Users/lukemcelya/dev/ChatHive/build/CMakeFiles/ChatHive.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ChatHive.dir/depend

