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
include CMakeFiles/1.advanced_lighting.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/1.advanced_lighting.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1.advanced_lighting.dir/flags.make

CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o: CMakeFiles/1.advanced_lighting.dir/flags.make
CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o: src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o -c /home/pavel/AU/graphics/homework/LearnOpenGL/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp

CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/AU/graphics/homework/LearnOpenGL/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp > CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.i

CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/AU/graphics/homework/LearnOpenGL/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp -o CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.s

CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.requires:

.PHONY : CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.requires

CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.provides: CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.requires
	$(MAKE) -f CMakeFiles/1.advanced_lighting.dir/build.make CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.provides.build
.PHONY : CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.provides

CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.provides.build: CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o


# Object files for target 1.advanced_lighting
1_advanced_lighting_OBJECTS = \
"CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o"

# External object files for target 1.advanced_lighting
1_advanced_lighting_EXTERNAL_OBJECTS =

bin/5.advanced_lighting/1.advanced_lighting: CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o
bin/5.advanced_lighting/1.advanced_lighting: CMakeFiles/1.advanced_lighting.dir/build.make
bin/5.advanced_lighting/1.advanced_lighting: /usr/lib64/libglfw.so
bin/5.advanced_lighting/1.advanced_lighting: CMakeFiles/1.advanced_lighting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/5.advanced_lighting/1.advanced_lighting"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1.advanced_lighting.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1.advanced_lighting.dir/build: bin/5.advanced_lighting/1.advanced_lighting

.PHONY : CMakeFiles/1.advanced_lighting.dir/build

CMakeFiles/1.advanced_lighting.dir/requires: CMakeFiles/1.advanced_lighting.dir/src/5.advanced_lighting/1.advanced_lighting/advanced_lighting.cpp.o.requires

.PHONY : CMakeFiles/1.advanced_lighting.dir/requires

CMakeFiles/1.advanced_lighting.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1.advanced_lighting.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1.advanced_lighting.dir/clean

CMakeFiles/1.advanced_lighting.dir/depend:
	cd /home/pavel/AU/graphics/homework/LearnOpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles/1.advanced_lighting.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/1.advanced_lighting.dir/depend
