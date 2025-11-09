

ETHDRIVER_VERSION = 5b41a23069b3a03c388e98fa199a3daac1ff3586
ETHDRIVER_SITE = git@github.com:choc4688/final-project-source-choc4688.git
ETHDRIVER_SITE_METHOD = git
ETHDRIVER_GIT_SUBMODULES = YES 
 

ETHDRIVER_MODULE_SUBDIRS = custom-eth-driver


define ETHDRIVER_INSTALL_TARGET_CMDS
    $(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(LINUX_VERSION_PROBED)
endef


$(eval $(kernel-module))
$(eval $(generic-package))
