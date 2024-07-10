cmake_minimum_required(VERSION 3.20)
project(sillyiOSApp)

# Set the iOS platform and minimum version
set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_ARCHITECTURES arm64 CACHE STRING "Build architecture for iOS")

# Set the minimum iOS version
set(CMAKE_OSX_DEPLOYMENT_TARGET "17.0" CACHE STRING "Minimum iOS version")

# Set the SDK path
set(CMAKE_OSX_SYSROOT "iphoneos" CACHE STRING "iOS SDK path")

# Add your executable or library here
add_executable(sillyiOSApp hello.mm)
