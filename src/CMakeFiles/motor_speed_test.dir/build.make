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
CMAKE_SOURCE_DIR = "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor"

# Include any dependencies generated for this target.
include src/CMakeFiles/motor_speed_test.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/motor_speed_test.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/motor_speed_test.dir/flags.make

src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o: src/CMakeFiles/motor_speed_test.dir/flags.make
src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o: motor_test/src/motor_speed_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o -c "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src/motor_speed_test.cpp"

src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.i"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src/motor_speed_test.cpp" > CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.i

src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.s"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src/motor_speed_test.cpp" -o CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.s

src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.requires:

.PHONY : src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.requires

src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.provides: src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/motor_speed_test.dir/build.make src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.provides.build
.PHONY : src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.provides

src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.provides.build: src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o


# Object files for target motor_speed_test
motor_speed_test_OBJECTS = \
"CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o"

# External object files for target motor_speed_test
motor_speed_test_EXTERNAL_OBJECTS =

src/motor_speed_test: src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o
src/motor_speed_test: src/CMakeFiles/motor_speed_test.dir/build.make
src/motor_speed_test: src/CMakeFiles/motor_speed_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable motor_speed_test"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motor_speed_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/motor_speed_test.dir/build: src/motor_speed_test

.PHONY : src/CMakeFiles/motor_speed_test.dir/build

src/CMakeFiles/motor_speed_test.dir/requires: src/CMakeFiles/motor_speed_test.dir/motor_speed_test.cpp.o.requires

.PHONY : src/CMakeFiles/motor_speed_test.dir/requires

src/CMakeFiles/motor_speed_test.dir/clean:
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src" && $(CMAKE_COMMAND) -P CMakeFiles/motor_speed_test.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/motor_speed_test.dir/clean

src/CMakeFiles/motor_speed_test.dir/depend:
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/motor_test/src" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/src/CMakeFiles/motor_speed_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/motor_speed_test.dir/depend

