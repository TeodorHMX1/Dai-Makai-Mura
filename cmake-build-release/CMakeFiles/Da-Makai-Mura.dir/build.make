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
include CMakeFiles/Da-Makai-Mura.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Da-Makai-Mura.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Da-Makai-Mura.dir/flags.make

CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.obj: CMakeFiles/Da-Makai-Mura.dir/flags.make
CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.obj: CMakeFiles/Da-Makai-Mura.dir/includes_CXX.rsp
CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.obj: ../src/main/cpp/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.obj"
	C:\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Da-Makai-Mura.dir\src\main\cpp\main.cpp.obj -c "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\src\main\cpp\main.cpp"

CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.i"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\src\main\cpp\main.cpp" > CMakeFiles\Da-Makai-Mura.dir\src\main\cpp\main.cpp.i

CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.s"
	C:\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\src\main\cpp\main.cpp" -o CMakeFiles\Da-Makai-Mura.dir\src\main\cpp\main.cpp.s

# Object files for target Da-Makai-Mura
Da__Makai__Mura_OBJECTS = \
"CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.obj"

# External object files for target Da-Makai-Mura
Da__Makai__Mura_EXTERNAL_OBJECTS =

Da-Makai-Mura.exe: CMakeFiles/Da-Makai-Mura.dir/src/main/cpp/main.cpp.obj
Da-Makai-Mura.exe: CMakeFiles/Da-Makai-Mura.dir/build.make
Da-Makai-Mura.exe: C:/mingw32/lib/libsfml-system.a
Da-Makai-Mura.exe: C:/mingw32/lib/libsfml-window.a
Da-Makai-Mura.exe: C:/mingw32/lib/libsfml-graphics.a
Da-Makai-Mura.exe: CMakeFiles/Da-Makai-Mura.dir/linklibs.rsp
Da-Makai-Mura.exe: CMakeFiles/Da-Makai-Mura.dir/objects1.rsp
Da-Makai-Mura.exe: CMakeFiles/Da-Makai-Mura.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Da-Makai-Mura.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Da-Makai-Mura.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Da-Makai-Mura.dir/build: Da-Makai-Mura.exe

.PHONY : CMakeFiles/Da-Makai-Mura.dir/build

CMakeFiles/Da-Makai-Mura.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Da-Makai-Mura.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Da-Makai-Mura.dir/clean

CMakeFiles/Da-Makai-Mura.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release" "C:\Users\grigo\Desktop\BSc Games Programming\Year 1\Dai-Makai-Mura\cmake-build-release\CMakeFiles\Da-Makai-Mura.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Da-Makai-Mura.dir/depend
