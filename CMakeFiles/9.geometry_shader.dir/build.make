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
include CMakeFiles/9.geometry_shader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/9.geometry_shader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/9.geometry_shader.dir/flags.make

CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o: CMakeFiles/9.geometry_shader.dir/flags.make
CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o: src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o -c /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp

CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp > CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.i

CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp -o CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.s

CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.requires:

.PHONY : CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.requires

CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.provides: CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.requires
	$(MAKE) -f CMakeFiles/9.geometry_shader.dir/build.make CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.provides.build
.PHONY : CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.provides

CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.provides.build: CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o


# Object files for target 9.geometry_shader
9_geometry_shader_OBJECTS = \
"CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o"

# External object files for target 9.geometry_shader
9_geometry_shader_EXTERNAL_OBJECTS =

bin/4.advanced_opengl/9.geometry_shader: CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o
bin/4.advanced_opengl/9.geometry_shader: CMakeFiles/9.geometry_shader.dir/build.make
bin/4.advanced_opengl/9.geometry_shader: /usr/lib64/libglfw.so
bin/4.advanced_opengl/9.geometry_shader: CMakeFiles/9.geometry_shader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/4.advanced_opengl/9.geometry_shader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/9.geometry_shader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/9.geometry_shader.dir/build: bin/4.advanced_opengl/9.geometry_shader

.PHONY : CMakeFiles/9.geometry_shader.dir/build

CMakeFiles/9.geometry_shader.dir/requires: CMakeFiles/9.geometry_shader.dir/src/4.advanced_opengl/9.geometry_shader/geometry_shader_houses.cpp.o.requires

.PHONY : CMakeFiles/9.geometry_shader.dir/requires

CMakeFiles/9.geometry_shader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/9.geometry_shader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/9.geometry_shader.dir/clean

CMakeFiles/9.geometry_shader.dir/depend:
	cd /home/pavel/AU/graphics/homework/LearnOpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles/9.geometry_shader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/9.geometry_shader.dir/depend

