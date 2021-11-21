################################################################################
#
# vtm-rtty
#
################################################################################

VTM_RTTY_VERSION = 0.1
VTM_RTTY_SITE = https://github.com/vtmux/rtty.git
#VTM_RTTY_LICENSE = MIT
#VTM_RTTY_LICENSE_FILES = LICENSE
VTM_RTTY_DEPENDENCIES = libev

ifeq ($(BR2_PACKAGE_MBEDTLS),y)
VTM_RTTY_DEPENDENCIES += mbedtls
VTM_RTTY_CONF_OPTS += \
	-DRTTY_SSL_SUPPORT=ON \
	-DRTTY_USE_MBEDTLS=ON \
	-DRTTY_USE_OPENSSL=OFF \
	-DRTTY_USE_WOLFSSL=OFF
else ifeq ($(BR2_PACKAGE_OPENSSL),y)
VTM_RTTY_DEPENDENCIES += host-pkgconf openssl
VTM_RTTY_CONF_OPTS += \
	-DRTTY_SSL_SUPPORT=ON \
	-DRTTY_USE_MBEDTLS=OFF \
	-DRTTY_USE_OPENSSL=ON \
	-DRTTY_USE_WOLFSSL=OFF
else ifeq ($(BR2_PACKAGE_WOLFSSL),y)
VTM_RTTY_DEPENDENCIES += wolfssl
VTM_RTTY_CONF_OPTS += \
	-DRTTY_SSL_SUPPORT=ON \
	-DRTTY_USE_MBEDTLS=OFF \
	-DRTTY_USE_OPENSSL=OFF \
	-DRTTY_USE_WOLFSSL=ON
else
VTM_RTTY_CONF_OPTS += -DRTTY_SSL_SUPPORT=OFF
endif

$(eval $(cmake-package))
