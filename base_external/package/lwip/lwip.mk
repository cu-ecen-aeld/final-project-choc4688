

LWIP_VERSION = 4599f551dead9eac233b91c0b9ee5879f5d0620a
LWIP_SITE = https://git.savannah.nongnu.org/git/lwip.git
LWIP_SITE_METHOD = git
LWIP_GIT_SUBMODULES = YES 
 

LWIP_MODULE_SUBDIRS = src
LWIP_MODULE_SUBDIRS += api
LWIP_MODULE_SUBDIRS += core
LWIP_MODULE_SUBDIRS += include

#Needed because my lwip_app Makefile requires my lwip to be installed already
#because of dependencies, and apparently Buildroot only checks the staging directory only
#rather than target directory when doing cross-compilation dependency resolution.
LWIP_INSTALL_STAGING = YES

#Below staging section partially from ChatGPT
define LWIP_INSTALL_STAGING_CMDS
	$(INSTALL) -d $(STAGING_DIR)/lwip
	$(shell mkdir -p $(STAGING_DIR)/usr/lib/lwip/src)
	cp -a -R $(@D)/* $(STAGING_DIR)/usr/lib/lwip/
endef
# 	cp -a $(@D)/src/Filelists.mk $(STAGING_DIR)/usr/lib/lwip/src/


define LWIP_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/usr/lib/lwip
	cp -a $(@D)/src/* $(TARGET_DIR)/usr/lib/lwip/
endef


$(eval $(generic-package))
