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
include CMakeFiles/4.lighting_maps.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/4.lighting_maps.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/4.lighting_maps.dir/flags.make

CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o: CMakeFiles/4.lighting_maps.dir/flags.make
CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o: src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o -c /home/pavel/AU/graphics/homework/LearnOpenGL/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp

CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pavel/AU/graphics/homework/LearnOpenGL/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp > CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.i

CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pavel/AU/graphics/homework/LearnOpenGL/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp -o CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.s

CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.requires:

.PHONY : CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.requires

CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.provides: CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.requires
	$(MAKE) -f CMakeFiles/4.lighting_maps.dir/build.make CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.provides.build
.PHONY : CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.provides

CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.provides.build: CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o


# Object files for target 4.lighting_maps
4_lighting_maps_OBJECTS = \
"CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o"

# External object files for target 4.lighting_maps
4_lighting_maps_EXTERNAL_OBJECTS =

bin/2.lighting/4.lighting_maps: CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o
bin/2.lighting/4.lighting_maps: CMakeFiles/4.lighting_maps.dir/build.make
bin/2.lighting/4.lighting_maps: /usr/lib64/libglfw.so
bin/2.lighting/4.lighting_maps: CMakeFiles/4.lighting_maps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/2.lighting/4.lighting_maps"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/4.lighting_maps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/4.lighting_maps.dir/build: bin/2.lighting/4.lighting_maps

.PHONY : CMakeFiles/4.lighting_maps.dir/build

CMakeFiles/4.lighting_maps.dir/requires: CMakeFiles/4.lighting_maps.dir/src/2.lighting/4.lighting_maps/lighting_maps_specular.cpp.o.requires

.PHONY : CMakeFiles/4.lighting_maps.dir/requires

CMakeFiles/4.lighting_maps.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/4.lighting_maps.dir/cmake_clean.cmake
.PHONY : CMakeFiles/4.lighting_maps.dir/clean

CMakeFiles/4.lighting_maps.dir/depend:
	cd /home/pavel/AU/graphics/homework/LearnOpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles/4.lighting_maps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/4.lighting_maps.dir/depend

