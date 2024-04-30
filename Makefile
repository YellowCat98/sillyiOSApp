ARCHS = arm64
TARGET = iphone:clang:latest:14.0
SYSROOT = $(THEOS)/sdks/iPhoneOS14.0.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Tweak
Tweak_FILES = hello.m
Tweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
