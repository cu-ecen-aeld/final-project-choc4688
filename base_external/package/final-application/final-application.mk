
FINALAPP_ASSIGNMENTS_VERSION = 5b41a23069b3a03c388e98fa199a3daac1ff3586
FINALAPP_ASSIGNMENTS_SITE = git@github.com:choc4688/final-project-source-choc4688.git
FINALAPP_ASSIGNMENTS_SITE_METHOD = git
FINALAPP_ASSIGNMENTS_GIT_SUBMODULES = YES 

define FINALAPP_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lwip_app
endef   

# @D = Build Directory
define FINALAPP_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/lwip_app/testlwip $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/lwip_app/testlwip-start-stop.sh $(TARGET_DIR)/etc/init.d/S99testlwip
endef


$(eval $(generic-package))
