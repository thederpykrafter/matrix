# use @<command> to supress make echoing command
CC = gcc
CFLAGS = -g -Wall
LFLAGS = -lncurses
OUT_FILE = matrix
OBJS = main.o matrix.o ui.o

all: matrix

# $@: $^
matrix: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LFLAGS)

# $@: $^
%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@

install:
	echo "cp matrix /usr/bin"
	@cp matrix /usr/bin
	@cp matrix /data/data/com.termux/files/usr/bin

clean:
	rm -rf *.o main
