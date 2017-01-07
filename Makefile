CC=gcc
CFLAGS=-fPIC
LDFLAGS=-shared

all: cptrace.so traceme1.out traceme2.out

cptrace.so: cptrace.o
	$(CC) -o $@ $^ $(LDFLAGS)

cptrace.o: cptrace.c
	$(CC) $(CFLAGS) -c -o $@ $^

traceme1.out: traceme1.o
	$(CC) -o $@ $^ 

traceme2.out: traceme2.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -c -o $@ $^

clean:
	rm -f cptrace.o
	rm -f cptrace.so
	rm -f traceme1.o traceme2.o
	rm -f traceme1.out traceme2.out 

.PHONY: all clean
