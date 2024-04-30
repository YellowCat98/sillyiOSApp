# Set the target and architecture
TARGET := iphone:clang:latest:10.0
ARCHS := armv7 arm64

# Set the path to Theos (assuming it's cloned into the home directory)
THEOS := $(HOME)/theos

# Include common settings from Theos
include $(THEOS)/makefiles/common.mk

# Define your tweak
TWEAK_NAME = MyCoolTweak
MyCoolTweak_FILES = hello.m
MyCoolTweak_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
MyCoolTweak_FRAMEWORKS = Foundation UIKit

# Include tweak settings from Theos
include $(THEOS_MAKE_PATH)/tweak.mk

# Run this command after installing the tweak
after-install::
	install.exec "killall -9 SpringBoard"
