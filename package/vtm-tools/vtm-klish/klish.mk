#############################################################
#
# klish
#
#############################################################

  
KLISH_VERSION = 1.6.9
KLISH_SOURCE = klish-$(KLISH_VERSION)
KLISH_SITE_METHOD = local
KLISH_SITE = $(PWD)/exsrc/$(KLISH_SOURCE)

KLISH_INSTALL_STAGING = YES
KLISH_INSTALL_TARGET = YES
KLISH_CONF_OPTS = --disable-gpl --without-tcl

#define KLISH_INSTALL_TARGET_CMDS
#	$(INSTALL) -D -m 0755 $(@D)/clish/* $(TARGET_DIR)/usr/bin
#endef


$(eval $(autotools-package)) 
