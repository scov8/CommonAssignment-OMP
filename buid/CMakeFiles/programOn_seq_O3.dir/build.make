# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid

# Include any dependencies generated for this target.
include CMakeFiles/programOn_seq_O3.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/programOn_seq_O3.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/programOn_seq_O3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/programOn_seq_O3.dir/flags.make

CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o: CMakeFiles/programOn_seq_O3.dir/flags.make
CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o: ../src/mainOn.c
CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o: CMakeFiles/programOn_seq_O3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o -MF CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o.d -o CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o -c /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/mainOn.c

CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/mainOn.c > CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.i

CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/mainOn.c -o CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.s

CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o: CMakeFiles/programOn_seq_O3.dir/flags.make
CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o: ../src/countingsort.c
CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o: CMakeFiles/programOn_seq_O3.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o -MF CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o.d -o CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o -c /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/countingsort.c

CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/countingsort.c > CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.i

CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/countingsort.c -o CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.s

# Object files for target programOn_seq_O3
programOn_seq_O3_OBJECTS = \
"CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o" \
"CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o"

# External object files for target programOn_seq_O3
programOn_seq_O3_EXTERNAL_OBJECTS =

programOn_seq_O3: CMakeFiles/programOn_seq_O3.dir/src/mainOn.c.o
programOn_seq_O3: CMakeFiles/programOn_seq_O3.dir/src/countingsort.c.o
programOn_seq_O3: CMakeFiles/programOn_seq_O3.dir/build.make
programOn_seq_O3: CMakeFiles/programOn_seq_O3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable programOn_seq_O3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/programOn_seq_O3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/programOn_seq_O3.dir/build: programOn_seq_O3
.PHONY : CMakeFiles/programOn_seq_O3.dir/build

CMakeFiles/programOn_seq_O3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/programOn_seq_O3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/programOn_seq_O3.dir/clean

CMakeFiles/programOn_seq_O3.dir/depend:
	cd /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02 /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02 /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles/programOn_seq_O3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/programOn_seq_O3.dir/depend

