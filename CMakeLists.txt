cmake_minimum_required(VERSION 3.15)
project(sillyiOSApp LANGUAGES OBJCXX Swift)

# Set iOS platform
set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_ARCHITECTURES "arm64")
set(CMAKE_OSX_SYSROOT "iphoneos")
set(CMAKE_OSX_DEPLOYMENT_TARGET "12.0") # Set your deployment target

# Disable code signing
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "")
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_REQUIRED "NO")
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "NO")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -stdlib=libc++")
set(CMAKE_OBJCXX_FLAGS "${CMAKE_OBJCXX_FLAGS} -std=c++17 -fobjc-arc")

file(GLOB_RECURSE SOURCES ${CMAKE_SOURCE_DIR}/src/*.mm ${CMAKE_SOURCE_DIR}/src/*.hpp ${CMAKE_SOURCE_DIR}/src/*.swift)

add_executable(${PROJECT_NAME} ${SOURCES})

target_link_libraries(${PROJECT_NAME}
  	"-framework UIKit"
  	"-framework Foundation"
)

set_target_properties(${PROJECT_NAME} PROPERTIES
	MACOSX_BUNDLE_GUI_IDENTIFIER "com.yellowcat98.sillyiosapp"
    XCODE_ATTRIBUTE_PRODUCT_NAME "sillyiOSApp"
    XCODE_ATTRIBUTE_INFOPLIST_FILE "${CMAKE_SOURCE_DIR}/Info.plist"
)

set_target_properties(${PROJECT_NAME} PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/output
)