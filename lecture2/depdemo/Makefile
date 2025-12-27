CFLAGS=-O2 -Wall -I/workspace
LDFLAGS=-L/workspace -static
main: libhelloworld.a
	# you need to put the archive import after the main.c
	gcc $(CFLAGS) $(LDFLAGS) main.c -lhelloworld -o main
libhelloworld.a: helloworld.o
	ar rcs libhelloworld.a helloworld.o
helloworld.o:
	gcc $(CFLAGS) -c helloworld.c -o helloworld.o
clean:
	rm -rf *.o main *.a
.PHONY: clean
