# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andrew/CLRF/c-python

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andrew/CLRF/c-python/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/callback.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/callback.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/callback.dir/flags.make

CMakeFiles/callback.dir/callback.c.o: CMakeFiles/callback.dir/flags.make
CMakeFiles/callback.dir/callback.c.o: ../callback.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/andrew/CLRF/c-python/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/callback.dir/callback.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/callback.dir/callback.c.o   -c /home/andrew/CLRF/c-python/callback.c

CMakeFiles/callback.dir/callback.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/callback.dir/callback.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/andrew/CLRF/c-python/callback.c > CMakeFiles/callback.dir/callback.c.i

CMakeFiles/callback.dir/callback.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/callback.dir/callback.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/andrew/CLRF/c-python/callback.c -o CMakeFiles/callback.dir/callback.c.s

# Object files for target callback
callback_OBJECTS = \
"CMakeFiles/callback.dir/callback.c.o"

# External object files for target callback
callback_EXTERNAL_OBJECTS =

callback: CMakeFiles/callback.dir/callback.c.o
callback: CMakeFiles/callback.dir/build.make
callback: /usr/lib/x86_64-linux-gnu/libpython3.6m.so
callback: CMakeFiles/callback.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/andrew/CLRF/c-python/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable callback"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/callback.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/callback.dir/build: callback

.PHONY : CMakeFiles/callback.dir/build

CMakeFiles/callback.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/callback.dir/cmake_clean.cmake
.PHONY : CMakeFiles/callback.dir/clean

CMakeFiles/callback.dir/depend:
	cd /home/andrew/CLRF/c-python/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andrew/CLRF/c-python /home/andrew/CLRF/c-python /home/andrew/CLRF/c-python/cmake-build-debug /home/andrew/CLRF/c-python/cmake-build-debug /home/andrew/CLRF/c-python/cmake-build-debug/CMakeFiles/callback.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/callback.dir/depend

