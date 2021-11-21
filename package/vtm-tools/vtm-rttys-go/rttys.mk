#############################################################
#
# dvtm
#
#############################################################

RTTYS_VERSION = 0.6
RTTYS_SOURCE = rttys
RTTYS_SITE_METHOD = local
RTTYS_SITE = $(PWD)/exsrc/$(RTTYS_SOURCE)


RTTYS_DEPENDENCIES =


RTTYS_GOLANG_BUILD_TARGETS += cmd/rttys
RTTYS_GOLANG_INSTALL_BINS += rttys


define RTTYS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/rttys $(TARGET_DIR)/usr/bin
endef

$(eval $(golang-package))
