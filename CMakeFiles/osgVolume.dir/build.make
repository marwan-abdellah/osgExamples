# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abdellah/Software/OSG

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abdellah/Software/OSG

# Include any dependencies generated for this target.
include CMakeFiles/osgVolume.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/osgVolume.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/osgVolume.dir/flags.make

CMakeFiles/osgVolume.dir/osgVolume.cpp.o: CMakeFiles/osgVolume.dir/flags.make
CMakeFiles/osgVolume.dir/osgVolume.cpp.o: osgVolume.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/abdellah/Software/OSG/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/osgVolume.dir/osgVolume.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/osgVolume.dir/osgVolume.cpp.o -c /home/abdellah/Software/OSG/osgVolume.cpp

CMakeFiles/osgVolume.dir/osgVolume.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/osgVolume.dir/osgVolume.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/abdellah/Software/OSG/osgVolume.cpp > CMakeFiles/osgVolume.dir/osgVolume.cpp.i

CMakeFiles/osgVolume.dir/osgVolume.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/osgVolume.dir/osgVolume.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/abdellah/Software/OSG/osgVolume.cpp -o CMakeFiles/osgVolume.dir/osgVolume.cpp.s

CMakeFiles/osgVolume.dir/osgVolume.cpp.o.requires:
.PHONY : CMakeFiles/osgVolume.dir/osgVolume.cpp.o.requires

CMakeFiles/osgVolume.dir/osgVolume.cpp.o.provides: CMakeFiles/osgVolume.dir/osgVolume.cpp.o.requires
	$(MAKE) -f CMakeFiles/osgVolume.dir/build.make CMakeFiles/osgVolume.dir/osgVolume.cpp.o.provides.build
.PHONY : CMakeFiles/osgVolume.dir/osgVolume.cpp.o.provides

CMakeFiles/osgVolume.dir/osgVolume.cpp.o.provides.build: CMakeFiles/osgVolume.dir/osgVolume.cpp.o

# Object files for target osgVolume
osgVolume_OBJECTS = \
"CMakeFiles/osgVolume.dir/osgVolume.cpp.o"

# External object files for target osgVolume
osgVolume_EXTERNAL_OBJECTS =

osgVolume: CMakeFiles/osgVolume.dir/osgVolume.cpp.o
osgVolume: /usr/lib/x86_64-linux-gnu/libGLU.so
osgVolume: /usr/lib/x86_64-linux-gnu/libGL.so
osgVolume: /usr/lib/x86_64-linux-gnu/libSM.so
osgVolume: /usr/lib/x86_64-linux-gnu/libICE.so
osgVolume: /usr/lib/x86_64-linux-gnu/libX11.so
osgVolume: /usr/lib/x86_64-linux-gnu/libXext.so
osgVolume: /usr/lib/libglut.so
osgVolume: /usr/lib/x86_64-linux-gnu/libXmu.so
osgVolume: /usr/lib/x86_64-linux-gnu/libXi.so
osgVolume: /usr/lib/libosgUtil.so
osgVolume: /usr/lib/libosgDB.so
osgVolume: /usr/lib/libosgAnimation.so
osgVolume: /usr/lib/libosgFX.so
osgVolume: /usr/lib/libosgViewer.so
osgVolume: /usr/lib/libosgGA.so
osgVolume: /usr/lib/libosgManipulator.so
osgVolume: /usr/lib/libosgParticle.so
osgVolume: /usr/lib/libosgShadow.so
osgVolume: /usr/lib/libosgSim.so
osgVolume: /usr/lib/libosgTerrain.so
osgVolume: /usr/lib/libosgText.so
osgVolume: /usr/lib/libosgVolume.so
osgVolume: /usr/lib/libosgWidget.so
osgVolume: /usr/lib/libosg.so
osgVolume: /usr/lib/libOpenThreads.so
osgVolume: /home/abdellah/NVIDIA_GPU_Computing_SDK/C/lib/libcutil_x86_64.a
osgVolume: /usr/local/cuda/lib64/libcudart.so
osgVolume: /usr/lib/libcuda.so
osgVolume: CMakeFiles/osgVolume.dir/build.make
osgVolume: CMakeFiles/osgVolume.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable osgVolume"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/osgVolume.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/osgVolume.dir/build: osgVolume
.PHONY : CMakeFiles/osgVolume.dir/build

CMakeFiles/osgVolume.dir/requires: CMakeFiles/osgVolume.dir/osgVolume.cpp.o.requires
.PHONY : CMakeFiles/osgVolume.dir/requires

CMakeFiles/osgVolume.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/osgVolume.dir/cmake_clean.cmake
.PHONY : CMakeFiles/osgVolume.dir/clean

CMakeFiles/osgVolume.dir/depend:
	cd /home/abdellah/Software/OSG && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abdellah/Software/OSG /home/abdellah/Software/OSG /home/abdellah/Software/OSG /home/abdellah/Software/OSG /home/abdellah/Software/OSG/CMakeFiles/osgVolume.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/osgVolume.dir/depend

