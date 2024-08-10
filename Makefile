# use @<command> to supress make echoing command
CC = gcc
CFLAGS = -g -Wall
LFLAGS = -lncurses
OUT_FILE = matrix
OBJS = main.o matrix.o ui.o

all: main

# $@: $^
main: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LFLAGS)

# $@: $^
%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -rf *.o main
