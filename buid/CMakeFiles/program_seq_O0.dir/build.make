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
include CMakeFiles/program_seq_O0.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/program_seq_O0.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/program_seq_O0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/program_seq_O0.dir/flags.make

CMakeFiles/program_seq_O0.dir/src/main.c.o: CMakeFiles/program_seq_O0.dir/flags.make
CMakeFiles/program_seq_O0.dir/src/main.c.o: ../src/main.c
CMakeFiles/program_seq_O0.dir/src/main.c.o: CMakeFiles/program_seq_O0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/program_seq_O0.dir/src/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program_seq_O0.dir/src/main.c.o -MF CMakeFiles/program_seq_O0.dir/src/main.c.o.d -o CMakeFiles/program_seq_O0.dir/src/main.c.o -c /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/main.c

CMakeFiles/program_seq_O0.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/program_seq_O0.dir/src/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/main.c > CMakeFiles/program_seq_O0.dir/src/main.c.i

CMakeFiles/program_seq_O0.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/program_seq_O0.dir/src/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/main.c -o CMakeFiles/program_seq_O0.dir/src/main.c.s

CMakeFiles/program_seq_O0.dir/src/countingsort.c.o: CMakeFiles/program_seq_O0.dir/flags.make
CMakeFiles/program_seq_O0.dir/src/countingsort.c.o: ../src/countingsort.c
CMakeFiles/program_seq_O0.dir/src/countingsort.c.o: CMakeFiles/program_seq_O0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/program_seq_O0.dir/src/countingsort.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/program_seq_O0.dir/src/countingsort.c.o -MF CMakeFiles/program_seq_O0.dir/src/countingsort.c.o.d -o CMakeFiles/program_seq_O0.dir/src/countingsort.c.o -c /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/countingsort.c

CMakeFiles/program_seq_O0.dir/src/countingsort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/program_seq_O0.dir/src/countingsort.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/countingsort.c > CMakeFiles/program_seq_O0.dir/src/countingsort.c.i

CMakeFiles/program_seq_O0.dir/src/countingsort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/program_seq_O0.dir/src/countingsort.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/src/countingsort.c -o CMakeFiles/program_seq_O0.dir/src/countingsort.c.s

# Object files for target program_seq_O0
program_seq_O0_OBJECTS = \
"CMakeFiles/program_seq_O0.dir/src/main.c.o" \
"CMakeFiles/program_seq_O0.dir/src/countingsort.c.o"

# External object files for target program_seq_O0
program_seq_O0_EXTERNAL_OBJECTS =

program_seq_O0: CMakeFiles/program_seq_O0.dir/src/main.c.o
program_seq_O0: CMakeFiles/program_seq_O0.dir/src/countingsort.c.o
program_seq_O0: CMakeFiles/program_seq_O0.dir/build.make
program_seq_O0: CMakeFiles/program_seq_O0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable program_seq_O0"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/program_seq_O0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/program_seq_O0.dir/build: program_seq_O0
.PHONY : CMakeFiles/program_seq_O0.dir/build

CMakeFiles/program_seq_O0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/program_seq_O0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/program_seq_O0.dir/clean

CMakeFiles/program_seq_O0.dir/depend:
	cd /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02 /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02 /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles/program_seq_O0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/program_seq_O0.dir/depend

