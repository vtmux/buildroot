#############################################################
#
# dvtm
#
#############################################################

SLMENU_SOURCE = slmenu
SLMENU_SITE_METHOD = local
SLMENU_SITE = $(PWD)/exsrc/$(SLMENU_SOURCE)


SLMENU_DEPENDENCIES =

define SLMENU_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define SLMENU_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/slmenu $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
