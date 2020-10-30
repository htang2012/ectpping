CC=gcc
CFLAGS= -c -g

DEPS =
OBJ = ectpping.o libenetaddr.o libectp.o
LIBS= -lpthread

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) $<  -o $@

ectpping: $(OBJ)
	$(CC) -o $@ $^ $(LIBS)


.PHONY: clean
clean:
	rm -f *.o *~ core app


