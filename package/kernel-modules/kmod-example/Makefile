obj-m += $(addsuffix .o, $(notdir $(basename $(wildcard $(BR2_EXTERNAL_KERNEL_DEV_LAB_PATH)/package/kernel-modules/kmod-example/*.c))))

.PHONY: all clean

all:
	$(MAKE) -C '/lib/modules/$(shell uname -r)/build' M='$(PWD)' modules

clean:
	$(MAKE) -C '$(LINUX_DIR)' M='$(PWD)' clean
