cmake_minimum_required(VERSION 3.20)

# Set the project name and specify it as an iOS application
project(HelloApp LANGUAGES CXX OBJCXX)

# Set the minimum iOS version
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.0")

# Specify that we're targeting iOS
set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_SYSROOT iphoneos) # or "iphoneos" for actual devices

# Specify the source files
set(SOURCE_FILES src/hello.mm)

# Create the executable
add_executable(HelloApp ${SOURCE_FILES})

# Set the properties for the executable
set_target_properties(HelloApp PROPERTIES
    MACOSX_BUNDLE YES
    MACOSX_BUNDLE_GUI_IDENTIFIER com.yellowcat98.sillyiosapp
    MACOSX_BUNDLE_BUNDLE_NAME "HelloApp"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer"
)

# Link against the UIKit framework (required for iOS apps)
target_link_libraries(HelloApp
    "-framework UIKit"
)

# Enable ARC (Automatic Reference Counting) for Objective-C++ if needed
target_compile_options(HelloApp PRIVATE "-fobjc-arc")
