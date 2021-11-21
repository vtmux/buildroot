#############################################################
#
# abduco
#
#############################################################

ABDUCO_VERSION = 0.6
ABDUCO_SOURCE = abduco-$(ABDUCO_VERSION)
ABDUCO_SITE_METHOD = local
ABDUCO_SITE = $(PWD)/exsrc/$(ABDUCO_SOURCE)


ABDUCO_DEPENDENCIES =

define ABDUCO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define ABDUCO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/abduco $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
