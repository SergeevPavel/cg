# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_SOURCE_DIR = /home/pavel/AU/graphics/homework/LearnOpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pavel/AU/graphics/homework/LearnOpenGL

# Include any dependencies generated for this target.
include CMakeFiles/3.1.blending_discard.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/3.1.blending_discard.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/3.1.blending_discard.dir/flags.make

CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o: CMakeFiles/3.1.blending_discard.dir/flags.make
CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o: src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o -c /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp

CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp > CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.i

CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp -o CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.s

CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.requires:

.PHONY : CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.requires

CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.provides: CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.requires
	$(MAKE) -f CMakeFiles/3.1.blending_discard.dir/build.make CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.provides.build
.PHONY : CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.provides

CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.provides.build: CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o


# Object files for target 3.1.blending_discard
3_1_blending_discard_OBJECTS = \
"CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o"

# External object files for target 3.1.blending_discard
3_1_blending_discard_EXTERNAL_OBJECTS =

bin/4.advanced_opengl/3.1.blending_discard: CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o
bin/4.advanced_opengl/3.1.blending_discard: CMakeFiles/3.1.blending_discard.dir/build.make
bin/4.advanced_opengl/3.1.blending_discard: /usr/lib64/libglfw.so
bin/4.advanced_opengl/3.1.blending_discard: CMakeFiles/3.1.blending_discard.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/4.advanced_opengl/3.1.blending_discard"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/3.1.blending_discard.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/3.1.blending_discard.dir/build: bin/4.advanced_opengl/3.1.blending_discard

.PHONY : CMakeFiles/3.1.blending_discard.dir/build

CMakeFiles/3.1.blending_discard.dir/requires: CMakeFiles/3.1.blending_discard.dir/src/4.advanced_opengl/3.1.blending_discard/blending_discard.cpp.o.requires

.PHONY : CMakeFiles/3.1.blending_discard.dir/requires

CMakeFiles/3.1.blending_discard.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/3.1.blending_discard.dir/cmake_clean.cmake
.PHONY : CMakeFiles/3.1.blending_discard.dir/clean

CMakeFiles/3.1.blending_discard.dir/depend:
	cd /home/pavel/AU/graphics/homework/LearnOpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles/3.1.blending_discard.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/3.1.blending_discard.dir/depend

