CC = gcc
CFLAGS = -Wall -Werror -fPIC
LIBRARY = libcalculator.a
OBJECTS = add.o subtract.o

all: $(LIBRARY) main

$(LIBRARY): $(OBJECTS)
	$(AR) rcs $(LIBRARY) $(OBJECTS)

main: main.o $(LIBRARY)
	$(CC) $(CFLAGS) -o main main.o $(LIBRARY)

main.o: main.c calculator.h
add.o: add.c calculator.h
subtract.o: subtract.c calculator.h

clean:
	rm -f *.o $(LIBRARY) main
