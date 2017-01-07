CC=gcc
CFLAGS=-fPIC
LDFLAGS=-shared

all: cptrace.so

cptrace.so: cptrace.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -f cptrace.o
	rm -f cptrace.so

.PHONY: all clean
