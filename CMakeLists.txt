cmake_minimum_required(VERSION 3.15)
project(expression_template_benchmark)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_C_FLAGS "-O3 -ffast-math -march=native ${CMAKE_C_FLAGS}")
set(CMAKE_C_FLAGS "-Wall -Wextra -Wconversion -Wshadow -Wpedantic ${CMAKE_C_FLAGS}")
set(CMAKE_C_FLAGS "-Ofast -march=native -funroll-loops -DNDEBUG -fwhole-program -flto ${CMAKE_C_FLAGS}")

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_CXX_FLAGS}")

# set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=address,undefined")
# set(CMAKE_CXX_CLANG_TIDY "clang-tidy")

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_executable(blaze_bench
src/views_blaze.cpp
)

