TARGET := iphone:clang::10.0
ARCHS := armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HelloTweak
HelloTweak_FILES = hello.m

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
