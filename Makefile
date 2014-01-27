ARCHS = armv7 armv7s arm64

TARGET = iphone:clang:latest:5.0

THEOS_BUILD_DIR = Packages

FINALPACKAGE = 1

include theos/makefiles/common.mk

TWEAK_NAME = NoCarrier
NoCarrier_CFLAGS = -fobjc-arc
NoCarrier_FILES = NoCarrier.x

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
