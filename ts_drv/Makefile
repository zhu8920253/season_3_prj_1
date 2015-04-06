KERN_DIR = /opt/FriendlyARM/mini2440/linux-3.4.2/
OUTPUT_DIR = /opt/FriendlyARM/mini2440/linux-3.4.2/out/mini2440

all:
	make ARCH=arm CROSS_COMPILE=arm-linux- O=$(OUTPUT_DIR) -C $(KERN_DIR) M=`pwd` modules 

clean:
	make ARCH=arm CROSS_COMPILE=arm-linux- O=$(OUTPUT_DIR) -C $(KERN_DIR) M=`pwd` modules clean
	rm -rf modules.order

obj-m	+= s3c_ts.o
