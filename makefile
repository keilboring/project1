# I am a comment, and I want to say that the variable CC will be
# the compiler to use.
CC=g++
# Hey!, I am comment number 2. I want to say that CFLAGS will be the
# options I'll pass to the compiler.
CFLAGS=-c -Wall

all: hello

hello: main.o program.o
	$(CC) main.o program.o -o hello

main.o: main.c
	$(CC) $(CFLAGS) main.c

program.o: program.c program.h
	$(CC) $(CFLAGS) program.c

clean:
	"C:\MinGW\msys\1.0\bin\rm.exe" *.o			
	"C:\MinGW\msys\1.0\bin\rm.exe" hello.exe			



