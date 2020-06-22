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
CMAKE_SOURCE_DIR = "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build"

# Include any dependencies generated for this target.
include motor_test/src/CMakeFiles/step.dir/depend.make

# Include the progress variables for this target.
include motor_test/src/CMakeFiles/step.dir/progress.make

# Include the compile flags for this target's objects.
include motor_test/src/CMakeFiles/step.dir/flags.make

motor_test/src/CMakeFiles/step.dir/step.cpp.o: motor_test/src/CMakeFiles/step.dir/flags.make
motor_test/src/CMakeFiles/step.dir/step.cpp.o: ../motor_test/src/step.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object motor_test/src/CMakeFiles/step.dir/step.cpp.o"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/step.dir/step.cpp.o -c "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src/step.cpp"

motor_test/src/CMakeFiles/step.dir/step.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/step.dir/step.cpp.i"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src/step.cpp" > CMakeFiles/step.dir/step.cpp.i

motor_test/src/CMakeFiles/step.dir/step.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/step.dir/step.cpp.s"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src/step.cpp" -o CMakeFiles/step.dir/step.cpp.s

motor_test/src/CMakeFiles/step.dir/step.cpp.o.requires:

.PHONY : motor_test/src/CMakeFiles/step.dir/step.cpp.o.requires

motor_test/src/CMakeFiles/step.dir/step.cpp.o.provides: motor_test/src/CMakeFiles/step.dir/step.cpp.o.requires
	$(MAKE) -f motor_test/src/CMakeFiles/step.dir/build.make motor_test/src/CMakeFiles/step.dir/step.cpp.o.provides.build
.PHONY : motor_test/src/CMakeFiles/step.dir/step.cpp.o.provides

motor_test/src/CMakeFiles/step.dir/step.cpp.o.provides.build: motor_test/src/CMakeFiles/step.dir/step.cpp.o


# Object files for target step
step_OBJECTS = \
"CMakeFiles/step.dir/step.cpp.o"

# External object files for target step
step_EXTERNAL_OBJECTS =

motor_test/src/step: motor_test/src/CMakeFiles/step.dir/step.cpp.o
motor_test/src/step: motor_test/src/CMakeFiles/step.dir/build.make
motor_test/src/step: iq-module-communication-cpp/src/libclient_communication.a
motor_test/src/step: iq-module-communication-cpp/src/libiq-module-communication-cpp.a
motor_test/src/step: iq-module-communication-cpp/src/libbyte_queue.a
motor_test/src/step: iq-module-communication-cpp/src/libcrc_helper.a
motor_test/src/step: iq-module-communication-cpp/src/libpacket_finder.a
motor_test/src/step: motor_test/src/CMakeFiles/step.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable step"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/step.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
motor_test/src/CMakeFiles/step.dir/build: motor_test/src/step

.PHONY : motor_test/src/CMakeFiles/step.dir/build

motor_test/src/CMakeFiles/step.dir/requires: motor_test/src/CMakeFiles/step.dir/step.cpp.o.requires

.PHONY : motor_test/src/CMakeFiles/step.dir/requires

motor_test/src/CMakeFiles/step.dir/clean:
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src" && $(CMAKE_COMMAND) -P CMakeFiles/step.dir/cmake_clean.cmake
.PHONY : motor_test/src/CMakeFiles/step.dir/clean

motor_test/src/CMakeFiles/step.dir/depend:
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/motor_test/src/CMakeFiles/step.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : motor_test/src/CMakeFiles/step.dir/depend

