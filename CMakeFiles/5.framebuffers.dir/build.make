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
include CMakeFiles/5.framebuffers.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/5.framebuffers.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/5.framebuffers.dir/flags.make

CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o: CMakeFiles/5.framebuffers.dir/flags.make
CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o: src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o -c /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp

CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp > CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.i

CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/AU/graphics/homework/LearnOpenGL/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp -o CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.s

CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.requires:

.PHONY : CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.requires

CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.provides: CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/5.framebuffers.dir/build.make CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.provides.build
.PHONY : CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.provides

CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.provides.build: CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o


# Object files for target 5.framebuffers
5_framebuffers_OBJECTS = \
"CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o"

# External object files for target 5.framebuffers
5_framebuffers_EXTERNAL_OBJECTS =

bin/4.advanced_opengl/5.framebuffers: CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o
bin/4.advanced_opengl/5.framebuffers: CMakeFiles/5.framebuffers.dir/build.make
bin/4.advanced_opengl/5.framebuffers: /usr/lib64/libglfw.so
bin/4.advanced_opengl/5.framebuffers: CMakeFiles/5.framebuffers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/4.advanced_opengl/5.framebuffers"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/5.framebuffers.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/5.framebuffers.dir/build: bin/4.advanced_opengl/5.framebuffers

.PHONY : CMakeFiles/5.framebuffers.dir/build

CMakeFiles/5.framebuffers.dir/requires: CMakeFiles/5.framebuffers.dir/src/4.advanced_opengl/5.framebuffers/framebuffers_screen_texture.cpp.o.requires

.PHONY : CMakeFiles/5.framebuffers.dir/requires

CMakeFiles/5.framebuffers.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/5.framebuffers.dir/cmake_clean.cmake
.PHONY : CMakeFiles/5.framebuffers.dir/clean

CMakeFiles/5.framebuffers.dir/depend:
	cd /home/pavel/AU/graphics/homework/LearnOpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles/5.framebuffers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/5.framebuffers.dir/depend

