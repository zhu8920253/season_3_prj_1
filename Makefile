#Freetype lib
FT_LIB = /opt/FriendlyARM/mini2440/1_prj/freetype/freetype-2.4.10/tmp/lib/

#Freetype include
FT_INC = /opt/FriendlyARM/mini2440/1_prj/freetype/freetype-2.4.10/tmp/include/freetype2/

#charset
INPUT_CHARSET = input-charset=GBK
EXEC_CHARSET  = exec-charset=UTF-8
CC = gcc
FLAGS = -L $(FT_LIB) -lfreetype -lm -I $(FT_INC) -f$(INPUT_CHARSET) -f$(EXEC_CHARSET)

all:
	$(CC) example1.c $(FLAGS)

clean:
	rm -rf a.out
