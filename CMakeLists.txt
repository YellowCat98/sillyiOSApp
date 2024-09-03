cmake_minimum_required(VERSION 3.20)

# Set the project name and specify it as an iOS application
project(SillyiOSApp LANGUAGES CXX OBJCXX)

# Set the minimum iOS version
set(CMAKE_OSX_DEPLOYMENT_TARGET "15.0")

# Specify that we're targeting iOS
set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_SYSROOT iphoneos) # or "iphoneos" for actual devices

# Specify the source files
set(SOURCES src/hello.mm)

# Create the executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Set the properties for the executable
set_target_properties(${PROJECT_NAME} PROPERTIES
    MACOSX_BUNDLE YES
    MACOSX_BUNDLE_GUI_IDENTIFIER com.yellowcat98.sillyiosApp
    MACOSX_BUNDLE_BUNDLE_NAME "Skibidi"
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "YellowCat98"
    XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "skibidiskibidigyatt"
)

# Link against the UIKit framework (required for iOS apps)
target_link_libraries(${PROJECT_NAME}
    "-framework UIKit"
)

# Enable ARC (Automatic Reference Counting) for Objective-C++ if needed
target_compile_options(${PROJECT_NAME} PRIVATE "-fobjc-arc")
