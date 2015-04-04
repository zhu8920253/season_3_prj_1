CC = arm-linux-gcc
TARGET = jpg2rgb
INC = /opt/FriendlyARM/mini2440/1_prj/jpeg/libjpeg-turbo-1.2.1/tmp/include
LIB = /opt/FriendlyARM/mini2440/1_prj/jpeg/libjpeg-turbo-1.2.1/tmp/lib

ALL : jpg2rgb.c
	$(CC) -o $(TARGET) $^ -I $(INC) -L $(LIB) -ljpeg

clean:
	rm -rf $(TARGET) *.o
