
CROSS_COMPILE = arm-linux-
AS		= $(CROSS_COMPILE)as
LD		= $(CROSS_COMPILE)ld
CC		= $(CROSS_COMPILE)gcc
CPP		= $(CC) -E
AR		= $(CROSS_COMPILE)ar
NM		= $(CROSS_COMPILE)nm

STRIP		= $(CROSS_COMPILE)strip
OBJCOPY		= $(CROSS_COMPILE)objcopy
OBJDUMP		= $(CROSS_COMPILE)objdump

export AS LD CC CPP AR NM
export STRIP OBJCOPY OBJDUMP

CFLAGS := -Wall -Werror -O2 -g
CFLAGS += -I $(shell pwd)/include

#4.3.2 freetype lib
FTLIB  	:= -L/opt/FriendlyARM/mini2440/1_prj/freetype/ft_for_arm/4_3_2_tmp/usr/local/lib
CFLAGS  += -I/opt/FriendlyARM/mini2440/1_prj/freetype/ft_for_arm/4_3_2_tmp/usr/local/include

LDFLAGS := -lm -lfreetype -lts -lpthread -ljpeg

export CFLAGS LDFLAGS

TOPDIR := $(shell pwd)
export TOPDIR

TARGET := digitpic


obj-y += main.o
obj-y += display/
obj-y += encoding/
obj-y += fonts/
obj-y += input/
obj-y += debug/
obj-y += render/
obj-y += page/
obj-y += file/

all : 
	make -C ./ -f $(TOPDIR)/Makefile.build
	$(CC) $(LDFLAGS) $(FTLIB) -o $(TARGET) built-in.o


clean:
	rm -f $(shell find -name "*.o")
	rm -f $(TARGET)

distclean:
	rm -f $(shell find -name "*.o")
	rm -f $(shell find -name "*.d")
	rm -f $(TARGET)
	
