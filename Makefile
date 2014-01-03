TARGET = :clang
ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = NoAlertsPrivateBrowsing
NoAlertsPrivateBrowsing_FILES = Tweak.xm
NoAlertsPrivateBrowsing_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

internal-after-install::
	install.exec "killall -9 backboardd"