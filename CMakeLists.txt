cmake_minimum_required(VERSION 3.10)
project(MyLib)

# Set iOS specific options
set(CMAKE_OSX_SYSROOT "iphoneos" CACHE STRING "iOS SDK")
set(CMAKE_OSX_ARCHITECTURES "arm64" CACHE STRING "iOS architectures")

# Specify source files
set(SOURCES
    hello.m
)

# Add a shared library target
add_library(mylib SHARED ${SOURCES})

# Set the output directory for the library
set_target_properties(mylib PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib
)

# Optionally, set additional compiler flags
target_compile_options(mylib PRIVATE
    -Wall
    -Wextra
    # Add more options as needed
)

# Optionally, link against libraries
target_link_libraries(mylib
    # Add any libraries here, for example:
    # -framework Foundation
)

# Install the library
install(TARGETS mylib
    LIBRARY DESTINATION lib
)
