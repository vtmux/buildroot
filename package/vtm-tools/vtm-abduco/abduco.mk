#############################################################
#
# abduco
#
#############################################################

VTM_ABDUCO_VERSION = 0.1
#VTM_ABDUCO_SOURCE = vtm-abduco-$(VTM-ABDUCO_VERSION)
#VTM_ABDUCO_SITE_METHOD = local
VTM_ABDUCO_SITE = https://github.com/vtmux/abduco.git 


VTM_ABDUCO_DEPENDENCIES =

define VTM_ABDUCO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define VTM_ABDUCO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/vtm-abduco $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
