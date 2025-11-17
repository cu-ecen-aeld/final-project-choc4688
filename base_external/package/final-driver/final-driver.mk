

FINAL_DRIVER_VERSION = 48ec7c2d8d6e490ec36b2d2051efda8e6a880efa
FINAL_DRIVER_SITE = git@github.com:choc4688/final-project-source-choc4688.git
FINAL_DRIVER_SITE_METHOD = git
FINAL_DRIVER_GIT_SUBMODULES = YES 
 
FINAL_DRIVER_MODULE_SUBDIRS = custom-eth-driver

define FINAL_DRIVER_INSTALL_TARGET_CMDS
    $(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(LINUX_VERSION_PROBED)
endef


$(eval $(kernel-module))
$(eval $(generic-package))
