ARCHS := arm64
TARGET := iphone:clang:16.5:14.0
PACKAGE_FORMAT = ipa

# Set the path to Theos (assuming it's cloned into the home directory)
THEOS := $(CURDIR)/theos

# Include common settings from Theos
include $(THEOS)/makefiles/common.mk

# Define your tweak
TWEAK_NAME = Tweak
Tweak_FILES = hello.m
Tweak_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
Tweak_FRAMEWORKS = Foundation UIKit

# Specify the output directory
PACKAGE_PATH := /Users/runner/work/sillyiOSApp/sillyiOSApp/ # im smart

# Include tweak settings from Theos
include $(THEOS_MAKE_PATH)/tweak.mk

# Run this command after installing the tweak
after-install::
	install.exec "killall -9 SpringBoard"
