################################################################################
#
# kmod-example
#
################################################################################

KMOD_EXAMPLE_VERSION = 1.0
KMOD_EXAMPLE_SITE = $(BR2_EXTERNAL_KERNEL_DEV_LAB_PATH)/package/kernel-modules/kmod-example
KMOD_EXAMPLE_SITE_METHOD = local

$(eval $(kernel-module))
$(eval $(generic-package))
