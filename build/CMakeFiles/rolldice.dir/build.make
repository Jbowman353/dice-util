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
CMAKE_SOURCE_DIR = /home/josh/Desktop/sw_dev/dice-util

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/josh/Desktop/sw_dev/dice-util/build

# Include any dependencies generated for this target.
include CMakeFiles/rolldice.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rolldice.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rolldice.dir/flags.make

CMakeFiles/rolldice.dir/src/main.cpp.o: CMakeFiles/rolldice.dir/flags.make
CMakeFiles/rolldice.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/josh/Desktop/sw_dev/dice-util/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rolldice.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rolldice.dir/src/main.cpp.o -c /home/josh/Desktop/sw_dev/dice-util/src/main.cpp

CMakeFiles/rolldice.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rolldice.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/josh/Desktop/sw_dev/dice-util/src/main.cpp > CMakeFiles/rolldice.dir/src/main.cpp.i

CMakeFiles/rolldice.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rolldice.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/josh/Desktop/sw_dev/dice-util/src/main.cpp -o CMakeFiles/rolldice.dir/src/main.cpp.s

CMakeFiles/rolldice.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/rolldice.dir/src/main.cpp.o.requires

CMakeFiles/rolldice.dir/src/main.cpp.o.provides: CMakeFiles/rolldice.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/rolldice.dir/build.make CMakeFiles/rolldice.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/rolldice.dir/src/main.cpp.o.provides

CMakeFiles/rolldice.dir/src/main.cpp.o.provides.build: CMakeFiles/rolldice.dir/src/main.cpp.o


CMakeFiles/rolldice.dir/src/dice.cpp.o: CMakeFiles/rolldice.dir/flags.make
CMakeFiles/rolldice.dir/src/dice.cpp.o: ../src/dice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/josh/Desktop/sw_dev/dice-util/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rolldice.dir/src/dice.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rolldice.dir/src/dice.cpp.o -c /home/josh/Desktop/sw_dev/dice-util/src/dice.cpp

CMakeFiles/rolldice.dir/src/dice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rolldice.dir/src/dice.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/josh/Desktop/sw_dev/dice-util/src/dice.cpp > CMakeFiles/rolldice.dir/src/dice.cpp.i

CMakeFiles/rolldice.dir/src/dice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rolldice.dir/src/dice.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/josh/Desktop/sw_dev/dice-util/src/dice.cpp -o CMakeFiles/rolldice.dir/src/dice.cpp.s

CMakeFiles/rolldice.dir/src/dice.cpp.o.requires:

.PHONY : CMakeFiles/rolldice.dir/src/dice.cpp.o.requires

CMakeFiles/rolldice.dir/src/dice.cpp.o.provides: CMakeFiles/rolldice.dir/src/dice.cpp.o.requires
	$(MAKE) -f CMakeFiles/rolldice.dir/build.make CMakeFiles/rolldice.dir/src/dice.cpp.o.provides.build
.PHONY : CMakeFiles/rolldice.dir/src/dice.cpp.o.provides

CMakeFiles/rolldice.dir/src/dice.cpp.o.provides.build: CMakeFiles/rolldice.dir/src/dice.cpp.o


# Object files for target rolldice
rolldice_OBJECTS = \
"CMakeFiles/rolldice.dir/src/main.cpp.o" \
"CMakeFiles/rolldice.dir/src/dice.cpp.o"

# External object files for target rolldice
rolldice_EXTERNAL_OBJECTS =

rolldice: CMakeFiles/rolldice.dir/src/main.cpp.o
rolldice: CMakeFiles/rolldice.dir/src/dice.cpp.o
rolldice: CMakeFiles/rolldice.dir/build.make
rolldice: CMakeFiles/rolldice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/josh/Desktop/sw_dev/dice-util/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable rolldice"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rolldice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rolldice.dir/build: rolldice

.PHONY : CMakeFiles/rolldice.dir/build

CMakeFiles/rolldice.dir/requires: CMakeFiles/rolldice.dir/src/main.cpp.o.requires
CMakeFiles/rolldice.dir/requires: CMakeFiles/rolldice.dir/src/dice.cpp.o.requires

.PHONY : CMakeFiles/rolldice.dir/requires

CMakeFiles/rolldice.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rolldice.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rolldice.dir/clean

CMakeFiles/rolldice.dir/depend:
	cd /home/josh/Desktop/sw_dev/dice-util/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/josh/Desktop/sw_dev/dice-util /home/josh/Desktop/sw_dev/dice-util /home/josh/Desktop/sw_dev/dice-util/build /home/josh/Desktop/sw_dev/dice-util/build /home/josh/Desktop/sw_dev/dice-util/build/CMakeFiles/rolldice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rolldice.dir/depend

