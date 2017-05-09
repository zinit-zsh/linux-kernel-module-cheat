obj-m += hello.o
ccflags-y := -Wno-declaration-after-statement -std=gnu99

.PHONY: all clean

all:
	$(MAKE) -C '$(LINUX_DIR)' M='$(PWD)' modules

clean:
	$(MAKE) -C '$(LINUX_DIR)' M='$(PWD)' clean
