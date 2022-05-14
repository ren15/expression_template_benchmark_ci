
cd ${PWD}/blaze
cmake -E make_directory "build"
cmake -S . -B "build" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_DIR}
    
cmake --build "build" -j
cd build
cmake --install . --prefix ${CMAKE_PREFIX_DIR} 