# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/stavrow/ros_threads/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stavrow/ros_threads/catkin_ws/build

# Include any dependencies generated for this target.
include ros_threads/CMakeFiles/threads_client.dir/depend.make

# Include the progress variables for this target.
include ros_threads/CMakeFiles/threads_client.dir/progress.make

# Include the compile flags for this target's objects.
include ros_threads/CMakeFiles/threads_client.dir/flags.make

ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o: ros_threads/CMakeFiles/threads_client.dir/flags.make
ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o: /home/stavrow/ros_threads/catkin_ws/src/ros_threads/src/threads_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stavrow/ros_threads/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o"
	cd /home/stavrow/ros_threads/catkin_ws/build/ros_threads && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/threads_client.dir/src/threads_client.cpp.o -c /home/stavrow/ros_threads/catkin_ws/src/ros_threads/src/threads_client.cpp

ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/threads_client.dir/src/threads_client.cpp.i"
	cd /home/stavrow/ros_threads/catkin_ws/build/ros_threads && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stavrow/ros_threads/catkin_ws/src/ros_threads/src/threads_client.cpp > CMakeFiles/threads_client.dir/src/threads_client.cpp.i

ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/threads_client.dir/src/threads_client.cpp.s"
	cd /home/stavrow/ros_threads/catkin_ws/build/ros_threads && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stavrow/ros_threads/catkin_ws/src/ros_threads/src/threads_client.cpp -o CMakeFiles/threads_client.dir/src/threads_client.cpp.s

ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.requires:

.PHONY : ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.requires

ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.provides: ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.requires
	$(MAKE) -f ros_threads/CMakeFiles/threads_client.dir/build.make ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.provides.build
.PHONY : ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.provides

ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.provides.build: ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o


# Object files for target threads_client
threads_client_OBJECTS = \
"CMakeFiles/threads_client.dir/src/threads_client.cpp.o"

# External object files for target threads_client
threads_client_EXTERNAL_OBJECTS =

/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: ros_threads/CMakeFiles/threads_client.dir/build.make
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/libroscpp.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/librosconsole.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/librostime.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /opt/ros/kinetic/lib/libcpp_common.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client: ros_threads/CMakeFiles/threads_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stavrow/ros_threads/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client"
	cd /home/stavrow/ros_threads/catkin_ws/build/ros_threads && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ros_threads/CMakeFiles/threads_client.dir/build: /home/stavrow/ros_threads/catkin_ws/devel/lib/ros_threads/threads_client

.PHONY : ros_threads/CMakeFiles/threads_client.dir/build

ros_threads/CMakeFiles/threads_client.dir/requires: ros_threads/CMakeFiles/threads_client.dir/src/threads_client.cpp.o.requires

.PHONY : ros_threads/CMakeFiles/threads_client.dir/requires

ros_threads/CMakeFiles/threads_client.dir/clean:
	cd /home/stavrow/ros_threads/catkin_ws/build/ros_threads && $(CMAKE_COMMAND) -P CMakeFiles/threads_client.dir/cmake_clean.cmake
.PHONY : ros_threads/CMakeFiles/threads_client.dir/clean

ros_threads/CMakeFiles/threads_client.dir/depend:
	cd /home/stavrow/ros_threads/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stavrow/ros_threads/catkin_ws/src /home/stavrow/ros_threads/catkin_ws/src/ros_threads /home/stavrow/ros_threads/catkin_ws/build /home/stavrow/ros_threads/catkin_ws/build/ros_threads /home/stavrow/ros_threads/catkin_ws/build/ros_threads/CMakeFiles/threads_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ros_threads/CMakeFiles/threads_client.dir/depend

