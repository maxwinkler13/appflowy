cmake_minimum_required(VERSION 3.10.0)

project(AppFlowy)

# arm64-v8a
file(COPY
    ${ANDROID_NDK}/sources/cxx-stl/llvm-libc++/libs/arm64-v8a/libc++_shared.so
    DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/jniLibs/arm64-v8a
)

# x86_64
file(COPY
    ${ANDROID_NDK}/sources/cxx-stl/llvm-libc++/libs/x86_64/libc++_shared.so
    DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/jniLibs/x86_64
)