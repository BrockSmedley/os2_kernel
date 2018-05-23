#include <linux/init.h>
#include <linux/module.h>
MODULE_LICENSE("Dual BSD/GPL");

static int hello(void)
{
  printk(KERN_ALERT "Hello, yocto\n");
  return 0;
}

static void hello_exit(void)
{
  printk(KERN_ALERT, "Goodbye, yocto\n");
  return 0;
}

module_init(hello);
module_exit(hello_exit);
