#############################################################
#
# klish
#
#############################################################

  
VTM_KLISH_VERSION = 0.1
VTM_KLISH_SOURCE = vtm-klish-$(VMT_KLISH_VERSION)
#VTM_KLISH_SITE_METHOD = local
VTM_KLISH_SITE = $(PWD)/exsrc/$(VTM_KLISH_SOURCE)

VTM_KLISH_INSTALL_STAGING = YES
VTM_KLISH_INSTALL_TARGET = YES
VTM_KLISH_CONF_OPTS = --disable-gpl --without-tcl

#define VTM_KLISH_INSTALL_TARGET_CMDS
#	$(INSTALL) -D -m 0755 $(@D)/vtm-clish/* $(TARGET_DIR)/usr/bin
#endef


$(eval $(autotools-package)) 
