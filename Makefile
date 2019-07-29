TARGET = iphone
ARCHS = armv7 arm64

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = appdecrypt
appdecrypt_FILES = dumpdecrypted.c
appdecrypt_CFLAGS = -fno-objc-arc
appdecrypt_LDFLAGS = -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/library.mk
