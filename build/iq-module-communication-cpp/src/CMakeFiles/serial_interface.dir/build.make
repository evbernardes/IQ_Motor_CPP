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
include iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/depend.make

# Include the progress variables for this target.
include iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/progress.make

# Include the compile flags for this target's objects.
include iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/flags.make

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/flags.make
iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o: ../iq-module-communication-cpp/src/serial_interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial_interface.dir/serial_interface.cpp.o -c "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/iq-module-communication-cpp/src/serial_interface.cpp"

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial_interface.dir/serial_interface.cpp.i"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/iq-module-communication-cpp/src/serial_interface.cpp" > CMakeFiles/serial_interface.dir/serial_interface.cpp.i

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial_interface.dir/serial_interface.cpp.s"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/iq-module-communication-cpp/src/serial_interface.cpp" -o CMakeFiles/serial_interface.dir/serial_interface.cpp.s

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.requires:

.PHONY : iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.requires

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.provides: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.requires
	$(MAKE) -f iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/build.make iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.provides.build
.PHONY : iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.provides

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.provides.build: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o


# Object files for target serial_interface
serial_interface_OBJECTS = \
"CMakeFiles/serial_interface.dir/serial_interface.cpp.o"

# External object files for target serial_interface
serial_interface_EXTERNAL_OBJECTS =

iq-module-communication-cpp/src/libserial_interface.a: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o
iq-module-communication-cpp/src/libserial_interface.a: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/build.make
iq-module-communication-cpp/src/libserial_interface.a: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libserial_interface.a"
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" && $(CMAKE_COMMAND) -P CMakeFiles/serial_interface.dir/cmake_clean_target.cmake
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial_interface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/build: iq-module-communication-cpp/src/libserial_interface.a

.PHONY : iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/build

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/requires: iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/serial_interface.cpp.o.requires

.PHONY : iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/requires

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/clean:
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" && $(CMAKE_COMMAND) -P CMakeFiles/serial_interface.dir/cmake_clean.cmake
.PHONY : iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/clean

iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/depend:
	cd "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/iq-module-communication-cpp/src" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src" "/mnt/data/AMUbox/Work and studies/Origabot/Code/Motor/build/iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : iq-module-communication-cpp/src/CMakeFiles/serial_interface.dir/depend

