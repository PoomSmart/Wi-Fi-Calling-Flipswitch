DEBUG = 0
PACKAGE_VERSION = 0.0.2

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = WiFiCalling
WiFiCalling_FILES = Switch.xm
WiFiCalling_PRIVATE_FRAMEWORKS = TelephonyUtilities
WiFiCalling_LIBRARIES = flipswitch
WiFiCalling_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk