DEBUG = 0
TARGET = iphone:latest
PACKAGE_VERSION = 0.0.1

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = WiFiCalling
WiFiCalling_FILES = Switch.xm
WiFiCalling_PRIVATE_FRAMEWORKS = TelephonyUtilities
WiFiCalling_LIBRARIES = flipswitch
WiFiCalling_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk

TWEAK_NAME = WiFiCallingTweak
WiFiCallingTweak_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk