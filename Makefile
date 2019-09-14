FINALPACKAGE = 1
PACKAGE_VERSION = 1.0

include $(THEOS)/makefiles/common.mk

ARCHS = arm64 arm64e

TWEAK_NAME = NoMoreLabels

NoMoreLabels_FILES = Tweak.xm
NoMoreLabels_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
