
FINAL_APPLICATION_VERSION = 7fa97d676a3b34b7162a40bd940d386aa190ffbd
FINAL_APPLICATION_SITE = git@github.com:choc4688/final-project-source-choc4688.git
FINAL_APPLICATION_SITE_METHOD = git
FINAL_APPLICATION_GIT_SUBMODULES = YES 

FINAL_APPLICATION_DEPENDENCIES = lwip


define FINAL_APPLICATION_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lwip_app
endef   

# @D = Build Directory
define FINAL_APPLICATION_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/lwip_app/lwip_app $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/lwip_app/testlwip-start-stop.sh $(TARGET_DIR)/etc/init.d/S99testlwip
endef


$(eval $(generic-package))
