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

# Utility rule file for extract_measures.

# Include any custom commands dependencies for this target.
include CMakeFiles/extract_measures.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/extract_measures.dir/progress.make

CMakeFiles/extract_measures: ../measures/extract.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating version header [/usr/local/bin/pipenv run python /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/measures/extract.py]"
	PIPENV_PIPFILE=/Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/Pipfile /usr/local/bin/pipenv run python /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/measures/extract.py

extract_measures: CMakeFiles/extract_measures
extract_measures: CMakeFiles/extract_measures.dir/build.make
.PHONY : extract_measures

# Rule to build all files generated by this target.
CMakeFiles/extract_measures.dir/build: extract_measures
.PHONY : CMakeFiles/extract_measures.dir/build

CMakeFiles/extract_measures.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/extract_measures.dir/cmake_clean.cmake
.PHONY : CMakeFiles/extract_measures.dir/clean

CMakeFiles/extract_measures.dir/depend:
	cd /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02 /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02 /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid /Users/luigiscovotto/Desktop/proveMidterm/HPC/CommonAssignment-Team02/buid/CMakeFiles/extract_measures.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/extract_measures.dir/depend

