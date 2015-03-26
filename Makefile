SDKVERSION = 8.0
ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

BUNDLE_NAME = WiFiCalling
WiFiCalling_FILES = Switch.xm
WiFiCalling_PRIVATE_FRAMEWORKS = TelephonyUtilities
WiFiCalling_LIBRARIES = flipswitch
WiFiCalling_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk
