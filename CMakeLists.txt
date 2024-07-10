cmake_minimum_required(VERSION 3.10)
project(MyLib)

# Set iOS specific options
set(CMAKE_OSX_SYSROOT "iphoneos" CACHE STRING "iOS SDK")
set(CMAKE_OSX_ARCHITECTURES "arm64" CACHE STRING "iOS architectures")

# Specify source files (Objective-C and Objective-C++)
set(SOURCES
    hello.mm
)

# Add a shared library target
add_library(mylib SHARED ${SOURCES})

# Set the output directory for the library
set_target_properties(mylib PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib
)

# Set Objective-C and C++ flags
set(CMAKE_OBJC_FLAGS "${CMAKE_OBJC_FLAGS} -ObjC")
set(CMAKE_CXX_STANDARD 11)  # Example C++ standard, adjust as needed

# Link iOS frameworks
find_library(FOUNDATION_LIBRARY Foundation)
target_link_libraries(mylib
    ${FOUNDATION_LIBRARY}
    # Add other iOS frameworks here as needed
)

# Install the library
install(TARGETS mylib
    LIBRARY DESTINATION lib
)
