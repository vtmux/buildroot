#############################################################
#
# vtm-rttys
#
#############################################################

VTM_RTTYS_VERSION = 0.1
VTM_RTTYS_SOURCE = vtm-rttys
#VTM_RTTYS_SITE_METHOD = local
VTM_RTTYS_SITE = https://github.com/vtmux/rttys.git

VTM_RTTYS_DEPENDENCIES =


VTM_RTTYS_GO_BUILD_TARGETS += cmd/rttys
VTM_RTTYS_GO_INSTALL_BINS += rttys


define RTTYS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/vtm-rttys $(TARGET_DIR)/usr/bin
endef

$(eval $(golang-package))
