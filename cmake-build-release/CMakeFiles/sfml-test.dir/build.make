# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release"

# Include any dependencies generated for this target.
include CMakeFiles/sfml-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sfml-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sfml-test.dir/flags.make

CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.obj: CMakeFiles/sfml-test.dir/flags.make
CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.obj: CMakeFiles/sfml-test.dir/includes_CXX.rsp
CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.obj: ../src/main/cpp/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sfml-test.dir\src\main\cpp\main.cpp.obj -c "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\src\main\cpp\main.cpp"

CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\src\main\cpp\main.cpp" > CMakeFiles\sfml-test.dir\src\main\cpp\main.cpp.i

CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\src\main\cpp\main.cpp" -o CMakeFiles\sfml-test.dir\src\main\cpp\main.cpp.s

# Object files for target sfml-test
sfml__test_OBJECTS = \
"CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.obj"

# External object files for target sfml-test
sfml__test_EXTERNAL_OBJECTS =

sfml-test.exe: CMakeFiles/sfml-test.dir/src/main/cpp/main.cpp.obj
sfml-test.exe: CMakeFiles/sfml-test.dir/build.make
sfml-test.exe: C:/mingw32/lib/libsfml-system.a
sfml-test.exe: C:/mingw32/lib/libsfml-window.a
sfml-test.exe: C:/mingw32/lib/libsfml-graphics.a
sfml-test.exe: CMakeFiles/sfml-test.dir/linklibs.rsp
sfml-test.exe: CMakeFiles/sfml-test.dir/objects1.rsp
sfml-test.exe: CMakeFiles/sfml-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sfml-test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sfml-test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sfml-test.dir/build: sfml-test.exe

.PHONY : CMakeFiles/sfml-test.dir/build

CMakeFiles/sfml-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sfml-test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sfml-test.dir/clean

CMakeFiles/sfml-test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release\CMakeFiles\sfml-test.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/sfml-test.dir/depend
