SRC = src/main.c
#INC =

CC = zcc

CFLAGS = +agon -pragma-define:CRT_ENABLE_COMMANDLINE=0 -pragma-define:CLIB_DEFAULT_SCREEN_MODE=1 -DJOYSTICK_DIALOG -DSPEED=1500 -DAMALLOC -O2


all: a.bin

a.bin: $(SRC) $(INC)
	$(CC) $(CFLAGS) src/main.c -o snakes.bin

clean:
	rm snakes.bin
