# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /home/jones/Documents/clion-2018.2.5/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/jones/Documents/clion-2018.2.5/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug"

# Include any dependencies generated for this target.
include src/CMakeFiles/ShadowViewer.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ShadowViewer.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/ShadowViewer.dir/flags.make

src/CMakeFiles/ShadowViewer.dir/glfw_window.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/glfw_window.cpp.o: ../src/glfw_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/ShadowViewer.dir/glfw_window.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/glfw_window.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/glfw_window.cpp"

src/CMakeFiles/ShadowViewer.dir/glfw_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/glfw_window.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/glfw_window.cpp" > CMakeFiles/ShadowViewer.dir/glfw_window.cpp.i

src/CMakeFiles/ShadowViewer.dir/glfw_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/glfw_window.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/glfw_window.cpp" -o CMakeFiles/ShadowViewer.dir/glfw_window.cpp.s

src/CMakeFiles/ShadowViewer.dir/glmath.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/glmath.cpp.o: ../src/glmath.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/ShadowViewer.dir/glmath.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/glmath.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/glmath.cpp"

src/CMakeFiles/ShadowViewer.dir/glmath.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/glmath.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/glmath.cpp" > CMakeFiles/ShadowViewer.dir/glmath.cpp.i

src/CMakeFiles/ShadowViewer.dir/glmath.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/glmath.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/glmath.cpp" -o CMakeFiles/ShadowViewer.dir/glmath.cpp.s

src/CMakeFiles/ShadowViewer.dir/main.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/ShadowViewer.dir/main.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/main.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/main.cpp"

src/CMakeFiles/ShadowViewer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/main.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/main.cpp" > CMakeFiles/ShadowViewer.dir/main.cpp.i

src/CMakeFiles/ShadowViewer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/main.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/main.cpp" -o CMakeFiles/ShadowViewer.dir/main.cpp.s

src/CMakeFiles/ShadowViewer.dir/shader.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/shader.cpp.o: ../src/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/ShadowViewer.dir/shader.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/shader.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/shader.cpp"

src/CMakeFiles/ShadowViewer.dir/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/shader.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/shader.cpp" > CMakeFiles/ShadowViewer.dir/shader.cpp.i

src/CMakeFiles/ShadowViewer.dir/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/shader.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/shader.cpp" -o CMakeFiles/ShadowViewer.dir/shader.cpp.s

src/CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.o: ../src/ShadowViewer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/ShadowViewer.cpp"

src/CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/ShadowViewer.cpp" > CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.i

src/CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/ShadowViewer.cpp" -o CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.s

src/CMakeFiles/ShadowViewer.dir/Mesh.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/Mesh.cpp.o: ../src/Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/ShadowViewer.dir/Mesh.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/Mesh.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/Mesh.cpp"

src/CMakeFiles/ShadowViewer.dir/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/Mesh.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/Mesh.cpp" > CMakeFiles/ShadowViewer.dir/Mesh.cpp.i

src/CMakeFiles/ShadowViewer.dir/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/Mesh.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/Mesh.cpp" -o CMakeFiles/ShadowViewer.dir/Mesh.cpp.s

src/CMakeFiles/ShadowViewer.dir/sphere.cpp.o: src/CMakeFiles/ShadowViewer.dir/flags.make
src/CMakeFiles/ShadowViewer.dir/sphere.cpp.o: ../src/sphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/ShadowViewer.dir/sphere.cpp.o"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ShadowViewer.dir/sphere.cpp.o -c "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/sphere.cpp"

src/CMakeFiles/ShadowViewer.dir/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ShadowViewer.dir/sphere.cpp.i"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/sphere.cpp" > CMakeFiles/ShadowViewer.dir/sphere.cpp.i

src/CMakeFiles/ShadowViewer.dir/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ShadowViewer.dir/sphere.cpp.s"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src/sphere.cpp" -o CMakeFiles/ShadowViewer.dir/sphere.cpp.s

# Object files for target ShadowViewer
ShadowViewer_OBJECTS = \
"CMakeFiles/ShadowViewer.dir/glfw_window.cpp.o" \
"CMakeFiles/ShadowViewer.dir/glmath.cpp.o" \
"CMakeFiles/ShadowViewer.dir/main.cpp.o" \
"CMakeFiles/ShadowViewer.dir/shader.cpp.o" \
"CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.o" \
"CMakeFiles/ShadowViewer.dir/Mesh.cpp.o" \
"CMakeFiles/ShadowViewer.dir/sphere.cpp.o"

# External object files for target ShadowViewer
ShadowViewer_EXTERNAL_OBJECTS =

ShadowViewer: src/CMakeFiles/ShadowViewer.dir/glfw_window.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/glmath.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/main.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/shader.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/ShadowViewer.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/Mesh.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/sphere.cpp.o
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/build.make
ShadowViewer: /usr/lib/x86_64-linux-gnu/libGLEW.so
ShadowViewer: liblodePNG.a
ShadowViewer: /usr/lib/x86_64-linux-gnu/libglfw.so.3.2
ShadowViewer: /usr/lib/x86_64-linux-gnu/libGLEW.so
ShadowViewer: /usr/lib/x86_64-linux-gnu/libGL.so
ShadowViewer: /usr/lib/x86_64-linux-gnu/libGLU.so
ShadowViewer: src/CMakeFiles/ShadowViewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../ShadowViewer"
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ShadowViewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/ShadowViewer.dir/build: ShadowViewer

.PHONY : src/CMakeFiles/ShadowViewer.dir/build

src/CMakeFiles/ShadowViewer.dir/clean:
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" && $(CMAKE_COMMAND) -P CMakeFiles/ShadowViewer.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ShadowViewer.dir/clean

src/CMakeFiles/ShadowViewer.dir/depend:
	cd "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping" "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/src" "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug" "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src" "/home/jones/Documents/Computergraphics/repository/computergraphics/Shadows and Cube Mapping/cmake-build-debug/src/CMakeFiles/ShadowViewer.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/ShadowViewer.dir/depend

