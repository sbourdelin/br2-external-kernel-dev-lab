#include <linux/module.h>
#include <linux/kernel.h>

static int kmod_example_init(void)
{
	pr_info("init kmod-example module\n");
	return 0;
}

static void kmod_example_exit(void)
{
	pr_info("exit kmod-example module\n");
}

module_init(kmod_example_init)
module_exit(kmod_example_exit)
MODULE_LICENSE("GPL");
