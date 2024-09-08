cmake_minimum_required(VERSION 3.15)
project(MyiOSProject)

# Set iOS platform
set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_ARCHITECTURES "arm64")
set(CMAKE_OSX_SYSROOT "iphoneos")
set(CMAKE_OSX_DEPLOYMENT_TARGET "12.0") # Set your deployment target

# Disable code signing
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "")
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_REQUIRED "NO")
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "NO")

# Add Objective-C++ and C++ flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -stdlib=libc++")
set(CMAKE_OBJCXX_FLAGS "${CMAKE_OBJCXX_FLAGS} -std=c++17 -fobjc-arc")

# Add source files (Objective-C++ and C++)
file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR}/src/*.mm)

# Create a shared library
add_executable(MyiOSLib SHARED ${SOURCES})

# Link necessary frameworks
target_link_libraries(MyiOSLib
  "-framework UIKit"
  "-framework Foundation"
)

# Output directory for the library
set_target_properties(MyiOSLib PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/output
)
