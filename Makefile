# Variables de compilació
CC      := g++
CFLAGS  := -Wall -Werror
LDFLAGS := 

# Nom del programa final
TARGET  := example

# Captura automàtica de fitxers font i objectes
SRCS    := $(wildcard *.cpp)
OBJS    := $(SRCS:.cpp=.o)

# Regla principal (compila tot el projecte)
all: $(TARGET)

# Enllaç dels objectes per crear el programa final
$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)

# Compilació de cada fitxer .cpp a .o
%.o: %.cpp
	$(CC) -c -o $@ $< $(CFLAGS)

# Neteja de fitxers generats
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)

