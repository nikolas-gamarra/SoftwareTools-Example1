 cmake_minimum_required(VERSION 3.16)
 project(exercise1 LANGUAGES CXX)

 add_executable(example
   src/main.cpp
   src/triangle.cpp
   # (optional) list headers so IDEs show them
   include/triangle.hpp
 )

 target_compile_features(example PRIVATE cxx_std_17)
 target_compile_options(example PRIVATE -Wall -Wextra -Wpedantic -Werror)

 # Make headers in ./include visible to this target
 target_include_directories(example PRIVATE include)
 # (same as: target_include_directories(exercise1 PRIVATE ${CMAKE_SOURCE_DIR}/include) )
