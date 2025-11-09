

FINALDRIVER_VERSION = 5b41a23069b3a03c388e98fa199a3daac1ff3586
FINALDRIVER_SITE = git@github.com:choc4688/final-project-source-choc4688.git
FINALDRIVER_SITE_METHOD = git
FINALDRIVER_GIT_SUBMODULES = YES 
 

FINALDRIVER_MODULE_SUBDIRS = custom-eth-driver


define FINALDRIVER_INSTALL_TARGET_CMDS
    $(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(LINUX_VERSION_PROBED)
endef


$(eval $(kernel-module))
$(eval $(generic-package))
