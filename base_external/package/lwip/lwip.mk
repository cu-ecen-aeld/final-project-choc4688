

LWIP_VERSION = 4599f551dead9eac233b91c0b9ee5879f5d0620a
LWIP_SITE = https://git.savannah.nongnu.org/git/lwip.git
LWIP_SITE_METHOD = git
LWIP_GIT_SUBMODULES = YES 
 

LWIP_MODULE_SUBDIRS = src
LWIP_MODULE_SUBDIRS += api
LWIP_MODULE_SUBDIRS += core
LWIP_MODULE_SUBDIRS += include


define LWIP_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/usr/lib/lwip
	cp -a $(@D)/src/* $(TARGET_DIR)/usr/lib/lwip/
endef


$(eval $(generic-package))
