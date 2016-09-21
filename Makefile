CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.c sds.c 
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=sdshello

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@


