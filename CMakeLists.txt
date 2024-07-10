cmake_minimum_required(VERSION 3.10)
project(MyApp)

# Set iOS specific options
set(CMAKE_OSX_SYSROOT "iphoneos" CACHE STRING "iOS SDK")
set(CMAKE_OSX_ARCHITECTURES "arm64" CACHE STRING "iOS architectures")
set(CMAKE_SYSROOT "/Applications/Xcode_15.0.1.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk")

# Specify source files (Objective-C++ in this case)
set(SOURCES
    hello.mm  # Assuming this is your source file (Objective-C++)
)

# Add a library target
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Set the output directory for the library
set_target_properties(${PROJECT_NAME} PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib
)

# Set Objective-C++ flags
set(CMAKE_OBJCXX_FLAGS "${CMAKE_OBJCXX_FLAGS} -ObjC++")

# Set C++ standard (adjust as needed)
set(CMAKE_CXX_STANDARD 11)

# Link iOS frameworks (example with Foundation and UIKit)
target_link_libraries(${PROJECT_NAME} "-framework Foundation")
target_link_libraries(${PROJECT_NAME} "-framework UIKit")
