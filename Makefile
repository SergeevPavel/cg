# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pavel/AU/graphics/homework/LearnOpenGL/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named task2

# Build rule for target.
task2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 task2
.PHONY : task2

# fast build rule for target.
task2/fast:
	$(MAKE) -f CMakeFiles/task2.dir/build.make CMakeFiles/task2.dir/build
.PHONY : task2/fast

#=============================================================================
# Target rules for targets named task3

# Build rule for target.
task3: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 task3
.PHONY : task3

# fast build rule for target.
task3/fast:
	$(MAKE) -f CMakeFiles/task3.dir/build.make CMakeFiles/task3.dir/build
.PHONY : task3/fast

#=============================================================================
# Target rules for targets named task4

# Build rule for target.
task4: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 task4
.PHONY : task4

# fast build rule for target.
task4/fast:
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/build
.PHONY : task4/fast

src/task2/main.o: src/task2/main.cpp.o

.PHONY : src/task2/main.o

# target to build an object file
src/task2/main.cpp.o:
	$(MAKE) -f CMakeFiles/task2.dir/build.make CMakeFiles/task2.dir/src/task2/main.cpp.o
.PHONY : src/task2/main.cpp.o

src/task2/main.i: src/task2/main.cpp.i

.PHONY : src/task2/main.i

# target to preprocess a source file
src/task2/main.cpp.i:
	$(MAKE) -f CMakeFiles/task2.dir/build.make CMakeFiles/task2.dir/src/task2/main.cpp.i
.PHONY : src/task2/main.cpp.i

src/task2/main.s: src/task2/main.cpp.s

.PHONY : src/task2/main.s

# target to generate assembly for a file
src/task2/main.cpp.s:
	$(MAKE) -f CMakeFiles/task2.dir/build.make CMakeFiles/task2.dir/src/task2/main.cpp.s
.PHONY : src/task2/main.cpp.s

src/task3/main.o: src/task3/main.cpp.o

.PHONY : src/task3/main.o

# target to build an object file
src/task3/main.cpp.o:
	$(MAKE) -f CMakeFiles/task3.dir/build.make CMakeFiles/task3.dir/src/task3/main.cpp.o
.PHONY : src/task3/main.cpp.o

src/task3/main.i: src/task3/main.cpp.i

.PHONY : src/task3/main.i

# target to preprocess a source file
src/task3/main.cpp.i:
	$(MAKE) -f CMakeFiles/task3.dir/build.make CMakeFiles/task3.dir/src/task3/main.cpp.i
.PHONY : src/task3/main.cpp.i

src/task3/main.s: src/task3/main.cpp.s

.PHONY : src/task3/main.s

# target to generate assembly for a file
src/task3/main.cpp.s:
	$(MAKE) -f CMakeFiles/task3.dir/build.make CMakeFiles/task3.dir/src/task3/main.cpp.s
.PHONY : src/task3/main.cpp.s

src/task4/deferred_shading.o: src/task4/deferred_shading.cpp.o

.PHONY : src/task4/deferred_shading.o

# target to build an object file
src/task4/deferred_shading.cpp.o:
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/task4/deferred_shading.cpp.o
.PHONY : src/task4/deferred_shading.cpp.o

src/task4/deferred_shading.i: src/task4/deferred_shading.cpp.i

.PHONY : src/task4/deferred_shading.i

# target to preprocess a source file
src/task4/deferred_shading.cpp.i:
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/task4/deferred_shading.cpp.i
.PHONY : src/task4/deferred_shading.cpp.i

src/task4/deferred_shading.s: src/task4/deferred_shading.cpp.s

.PHONY : src/task4/deferred_shading.s

# target to generate assembly for a file
src/task4/deferred_shading.cpp.s:
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/task4/deferred_shading.cpp.s
.PHONY : src/task4/deferred_shading.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... task2"
	@echo "... task3"
	@echo "... task4"
	@echo "... rebuild_cache"
	@echo "... src/task2/main.o"
	@echo "... src/task2/main.i"
	@echo "... src/task2/main.s"
	@echo "... src/task3/main.o"
	@echo "... src/task3/main.i"
	@echo "... src/task3/main.s"
	@echo "... src/task4/deferred_shading.o"
	@echo "... src/task4/deferred_shading.i"
	@echo "... src/task4/deferred_shading.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
