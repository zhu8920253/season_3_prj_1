CROSSCOMPILE := arm-linux-

CFLAGS 	:= -Wall -O2 -c
#3.4.1
#FTLIB  	:= -L/opt/FriendlyARM/mini2440/1_prj/freetype/ft_for_arm/tmp/usr/local/lib
#CFLAGS  += -I/opt/FriendlyARM/mini2440/1_prj/freetype/ft_for_arm/tmp/usr/local/include

#4.3.2
FTLIB  	:= -L/opt/FriendlyARM/mini2440/1_prj/freetype/ft_for_arm/4_3_2_tmp/usr/local/lib
CFLAGS  += -I/opt/FriendlyARM/mini2440/1_prj/freetype/ft_for_arm/4_3_2_tmp/usr/local/include
CFLAGS  += -finput-charset=GBK

LDFLAGS := -lm -lfreetype

CC 	:= $(CROSSCOMPILE)gcc
LD 	:= $(CROSSCOMPILE)ld

OBJS := show_lines.o
TARGET := show_line

all: $(OBJS)
	$(CC) $(FTLIB) $(LDFLAGS) -o $(TARGET) $^

clean:
	rm -f $(TARGET) $(OBJS)

%.o:%.c
	$(CC) $(CFLAGS) -o $@ $<
