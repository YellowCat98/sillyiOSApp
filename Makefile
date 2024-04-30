TARGET := iphone:clang:latest:10.0
ARCHS := armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyCoolTweak
MyCoolTweak_FILES = hello.m
MyCoolTweak_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
MyCoolTweak_FRAMEWORKS = Foundation UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
