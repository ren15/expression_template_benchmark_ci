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

list(APPEND CMAKE_MODULE_PATH ${BLAZE_LIBRARY_PATH}/cmake)
include(Blaze_Import)
Blaze_Import(
   QUIET
   BLAS off
   LAPACK off
   THREADING Boost
   CACHE_SIZE auto
   VECTORIZATION on
   STORAGE_ORDER rowMajor
   THRESHOLD_DMATDVECMULT 100000UL
   THRESHOLD_SMP_DVECDVECADD 1000000UL
)


add_executable(blaze_bench
src/views_blaze.cpp
)

target_link_libraries(blaze_bench PRIVATE 
Blaze
)

