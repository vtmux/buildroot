#############################################################
#
# dvtm
#
#############################################################

VTM_SLMENU_SOURCE = slmenu
#VTM_SLMENU_SITE_METHOD = local
VTM_SLMENU_SITE = https://github.com/vtmux/slmenu.git


VTM_SLMENU_DEPENDENCIES =

define VTM_SLMENU_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define VTM_SLMENU_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/vtm-slmenu $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
