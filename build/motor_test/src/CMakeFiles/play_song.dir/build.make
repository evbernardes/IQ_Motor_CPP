# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/evbernardes/Code Local/IQ_Motor_CPP"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/evbernardes/Code Local/IQ_Motor_CPP/build"

# Include any dependencies generated for this target.
include motor_test/src/CMakeFiles/play_song.dir/depend.make

# Include the progress variables for this target.
include motor_test/src/CMakeFiles/play_song.dir/progress.make

# Include the compile flags for this target's objects.
include motor_test/src/CMakeFiles/play_song.dir/flags.make

motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o: motor_test/src/CMakeFiles/play_song.dir/flags.make
motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o: ../motor_test/src/play_song.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/evbernardes/Code Local/IQ_Motor_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o"
	cd "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/play_song.dir/play_song.cpp.o -c "/home/evbernardes/Code Local/IQ_Motor_CPP/motor_test/src/play_song.cpp"

motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/play_song.dir/play_song.cpp.i"
	cd "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/evbernardes/Code Local/IQ_Motor_CPP/motor_test/src/play_song.cpp" > CMakeFiles/play_song.dir/play_song.cpp.i

motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/play_song.dir/play_song.cpp.s"
	cd "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/evbernardes/Code Local/IQ_Motor_CPP/motor_test/src/play_song.cpp" -o CMakeFiles/play_song.dir/play_song.cpp.s

motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.requires:

.PHONY : motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.requires

motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.provides: motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.requires
	$(MAKE) -f motor_test/src/CMakeFiles/play_song.dir/build.make motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.provides.build
.PHONY : motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.provides

motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.provides.build: motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o


# Object files for target play_song
play_song_OBJECTS = \
"CMakeFiles/play_song.dir/play_song.cpp.o"

# External object files for target play_song
play_song_EXTERNAL_OBJECTS =

motor_test/src/play_song: motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o
motor_test/src/play_song: motor_test/src/CMakeFiles/play_song.dir/build.make
motor_test/src/play_song: iq-module-communication-cpp/src/libserial_interface.a
motor_test/src/play_song: iq-module-communication-cpp/src/libclient_communication.a
motor_test/src/play_song: iq-module-communication-cpp/src/libiq-module-communication-cpp.a
motor_test/src/play_song: iq-module-communication-cpp/src/libbyte_queue.a
motor_test/src/play_song: iq-module-communication-cpp/src/libcrc_helper.a
motor_test/src/play_song: iq-module-communication-cpp/src/libpacket_finder.a
motor_test/src/play_song: iq-module-communication-cpp/src/libmy_helpers.a
motor_test/src/play_song: motor_test/src/CMakeFiles/play_song.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/evbernardes/Code Local/IQ_Motor_CPP/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable play_song"
	cd "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/play_song.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
motor_test/src/CMakeFiles/play_song.dir/build: motor_test/src/play_song

.PHONY : motor_test/src/CMakeFiles/play_song.dir/build

motor_test/src/CMakeFiles/play_song.dir/requires: motor_test/src/CMakeFiles/play_song.dir/play_song.cpp.o.requires

.PHONY : motor_test/src/CMakeFiles/play_song.dir/requires

motor_test/src/CMakeFiles/play_song.dir/clean:
	cd "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src" && $(CMAKE_COMMAND) -P CMakeFiles/play_song.dir/cmake_clean.cmake
.PHONY : motor_test/src/CMakeFiles/play_song.dir/clean

motor_test/src/CMakeFiles/play_song.dir/depend:
	cd "/home/evbernardes/Code Local/IQ_Motor_CPP/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/evbernardes/Code Local/IQ_Motor_CPP" "/home/evbernardes/Code Local/IQ_Motor_CPP/motor_test/src" "/home/evbernardes/Code Local/IQ_Motor_CPP/build" "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src" "/home/evbernardes/Code Local/IQ_Motor_CPP/build/motor_test/src/CMakeFiles/play_song.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : motor_test/src/CMakeFiles/play_song.dir/depend

