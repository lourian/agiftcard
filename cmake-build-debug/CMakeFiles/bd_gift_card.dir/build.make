# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.8

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\dev\lourian\a_gift_card

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\dev\lourian\a_gift_card\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/bd_gift_card.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bd_gift_card.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bd_gift_card.dir/flags.make

CMakeFiles/bd_gift_card.dir/main.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bd_gift_card.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\main.cpp.obj -c C:\dev\lourian\a_gift_card\main.cpp

CMakeFiles/bd_gift_card.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\main.cpp > CMakeFiles\bd_gift_card.dir\main.cpp.i

CMakeFiles/bd_gift_card.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\main.cpp -o CMakeFiles\bd_gift_card.dir\main.cpp.s

CMakeFiles/bd_gift_card.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/main.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/main.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/main.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/main.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/main.cpp.obj


CMakeFiles/bd_gift_card.dir/App.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/App.cpp.obj: ../App.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/bd_gift_card.dir/App.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\App.cpp.obj -c C:\dev\lourian\a_gift_card\App.cpp

CMakeFiles/bd_gift_card.dir/App.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/App.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\App.cpp > CMakeFiles\bd_gift_card.dir\App.cpp.i

CMakeFiles/bd_gift_card.dir/App.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/App.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\App.cpp -o CMakeFiles\bd_gift_card.dir\App.cpp.s

CMakeFiles/bd_gift_card.dir/App.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/App.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/App.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/App.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/App.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/App.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/App.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/App.cpp.obj


CMakeFiles/bd_gift_card.dir/Scene.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/Scene.cpp.obj: ../Scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/bd_gift_card.dir/Scene.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\Scene.cpp.obj -c C:\dev\lourian\a_gift_card\Scene.cpp

CMakeFiles/bd_gift_card.dir/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/Scene.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\Scene.cpp > CMakeFiles\bd_gift_card.dir\Scene.cpp.i

CMakeFiles/bd_gift_card.dir/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/Scene.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\Scene.cpp -o CMakeFiles\bd_gift_card.dir\Scene.cpp.s

CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/Scene.cpp.obj


CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj: ../FlowerModel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\FlowerModel.cpp.obj -c C:\dev\lourian\a_gift_card\FlowerModel.cpp

CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\FlowerModel.cpp > CMakeFiles\bd_gift_card.dir\FlowerModel.cpp.i

CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\FlowerModel.cpp -o CMakeFiles\bd_gift_card.dir\FlowerModel.cpp.s

CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj


CMakeFiles/bd_gift_card.dir/Surface.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/Surface.cpp.obj: ../Surface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/bd_gift_card.dir/Surface.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\Surface.cpp.obj -c C:\dev\lourian\a_gift_card\Surface.cpp

CMakeFiles/bd_gift_card.dir/Surface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/Surface.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\Surface.cpp > CMakeFiles\bd_gift_card.dir\Surface.cpp.i

CMakeFiles/bd_gift_card.dir/Surface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/Surface.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\Surface.cpp -o CMakeFiles\bd_gift_card.dir\Surface.cpp.s

CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/Surface.cpp.obj


CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj: ../PetalSurface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\PetalSurface.cpp.obj -c C:\dev\lourian\a_gift_card\PetalSurface.cpp

CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\PetalSurface.cpp > CMakeFiles\bd_gift_card.dir\PetalSurface.cpp.i

CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\PetalSurface.cpp -o CMakeFiles\bd_gift_card.dir\PetalSurface.cpp.s

CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj


CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj: CMakeFiles/bd_gift_card.dir/flags.make
CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj: ../StemSurface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bd_gift_card.dir\StemSurface.cpp.obj -c C:\dev\lourian\a_gift_card\StemSurface.cpp

CMakeFiles/bd_gift_card.dir/StemSurface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bd_gift_card.dir/StemSurface.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\dev\lourian\a_gift_card\StemSurface.cpp > CMakeFiles\bd_gift_card.dir\StemSurface.cpp.i

CMakeFiles/bd_gift_card.dir/StemSurface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bd_gift_card.dir/StemSurface.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\dev\lourian\a_gift_card\StemSurface.cpp -o CMakeFiles\bd_gift_card.dir\StemSurface.cpp.s

CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.requires:

.PHONY : CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.requires

CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.provides: CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bd_gift_card.dir\build.make CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.provides.build
.PHONY : CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.provides

CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.provides.build: CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj


# Object files for target bd_gift_card
bd_gift_card_OBJECTS = \
"CMakeFiles/bd_gift_card.dir/main.cpp.obj" \
"CMakeFiles/bd_gift_card.dir/App.cpp.obj" \
"CMakeFiles/bd_gift_card.dir/Scene.cpp.obj" \
"CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj" \
"CMakeFiles/bd_gift_card.dir/Surface.cpp.obj" \
"CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj" \
"CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj"

# External object files for target bd_gift_card
bd_gift_card_EXTERNAL_OBJECTS =

bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/main.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/App.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/Scene.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/Surface.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/build.make
bd_gift_card.exe: C:/MinGW/lib/libfreeglut.a
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/linklibs.rsp
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/objects1.rsp
bd_gift_card.exe: CMakeFiles/bd_gift_card.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable bd_gift_card.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\bd_gift_card.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bd_gift_card.dir/build: bd_gift_card.exe

.PHONY : CMakeFiles/bd_gift_card.dir/build

CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/main.cpp.obj.requires
CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/App.cpp.obj.requires
CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/Scene.cpp.obj.requires
CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/FlowerModel.cpp.obj.requires
CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/Surface.cpp.obj.requires
CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/PetalSurface.cpp.obj.requires
CMakeFiles/bd_gift_card.dir/requires: CMakeFiles/bd_gift_card.dir/StemSurface.cpp.obj.requires

.PHONY : CMakeFiles/bd_gift_card.dir/requires

CMakeFiles/bd_gift_card.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\bd_gift_card.dir\cmake_clean.cmake
.PHONY : CMakeFiles/bd_gift_card.dir/clean

CMakeFiles/bd_gift_card.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\lourian\a_gift_card C:\dev\lourian\a_gift_card C:\dev\lourian\a_gift_card\cmake-build-debug C:\dev\lourian\a_gift_card\cmake-build-debug C:\dev\lourian\a_gift_card\cmake-build-debug\CMakeFiles\bd_gift_card.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bd_gift_card.dir/depend
