# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/amr/sound_ws/src/sound_package

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amr/sound_ws/build/sound_package

# Utility rule file for sound_package_generate_messages_cpp.

# Include the progress variables for this target.
include CMakeFiles/sound_package_generate_messages_cpp.dir/progress.make

CMakeFiles/sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/PlaySong.h
CMakeFiles/sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/StopSong.h
CMakeFiles/sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/SetVolume.h
CMakeFiles/sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/ToggleMute.h


/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/PlaySong.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/PlaySong.h: /home/amr/sound_ws/src/sound_package/srv/PlaySong.srv
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/PlaySong.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/PlaySong.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/amr/sound_ws/build/sound_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from sound_package/PlaySong.srv"
	cd /home/amr/sound_ws/src/sound_package && /home/amr/sound_ws/build/sound_package/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/amr/sound_ws/src/sound_package/srv/PlaySong.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p sound_package -o /home/amr/sound_ws/devel/.private/sound_package/include/sound_package -e /opt/ros/noetic/share/gencpp/cmake/..

/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/StopSong.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/StopSong.h: /home/amr/sound_ws/src/sound_package/srv/StopSong.srv
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/StopSong.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/StopSong.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/amr/sound_ws/build/sound_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from sound_package/StopSong.srv"
	cd /home/amr/sound_ws/src/sound_package && /home/amr/sound_ws/build/sound_package/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/amr/sound_ws/src/sound_package/srv/StopSong.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p sound_package -o /home/amr/sound_ws/devel/.private/sound_package/include/sound_package -e /opt/ros/noetic/share/gencpp/cmake/..

/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/SetVolume.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/SetVolume.h: /home/amr/sound_ws/src/sound_package/srv/SetVolume.srv
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/SetVolume.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/SetVolume.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/amr/sound_ws/build/sound_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from sound_package/SetVolume.srv"
	cd /home/amr/sound_ws/src/sound_package && /home/amr/sound_ws/build/sound_package/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/amr/sound_ws/src/sound_package/srv/SetVolume.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p sound_package -o /home/amr/sound_ws/devel/.private/sound_package/include/sound_package -e /opt/ros/noetic/share/gencpp/cmake/..

/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/ToggleMute.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/ToggleMute.h: /home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/ToggleMute.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/amr/sound_ws/devel/.private/sound_package/include/sound_package/ToggleMute.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/amr/sound_ws/build/sound_package/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from sound_package/ToggleMute.srv"
	cd /home/amr/sound_ws/src/sound_package && /home/amr/sound_ws/build/sound_package/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/amr/sound_ws/src/sound_package/srv/ToggleMute.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p sound_package -o /home/amr/sound_ws/devel/.private/sound_package/include/sound_package -e /opt/ros/noetic/share/gencpp/cmake/..

sound_package_generate_messages_cpp: CMakeFiles/sound_package_generate_messages_cpp
sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/PlaySong.h
sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/StopSong.h
sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/SetVolume.h
sound_package_generate_messages_cpp: /home/amr/sound_ws/devel/.private/sound_package/include/sound_package/ToggleMute.h
sound_package_generate_messages_cpp: CMakeFiles/sound_package_generate_messages_cpp.dir/build.make

.PHONY : sound_package_generate_messages_cpp

# Rule to build all files generated by this target.
CMakeFiles/sound_package_generate_messages_cpp.dir/build: sound_package_generate_messages_cpp

.PHONY : CMakeFiles/sound_package_generate_messages_cpp.dir/build

CMakeFiles/sound_package_generate_messages_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sound_package_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sound_package_generate_messages_cpp.dir/clean

CMakeFiles/sound_package_generate_messages_cpp.dir/depend:
	cd /home/amr/sound_ws/build/sound_package && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amr/sound_ws/src/sound_package /home/amr/sound_ws/src/sound_package /home/amr/sound_ws/build/sound_package /home/amr/sound_ws/build/sound_package /home/amr/sound_ws/build/sound_package/CMakeFiles/sound_package_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sound_package_generate_messages_cpp.dir/depend
