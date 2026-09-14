# Compiler & flags
 CC      = g++
 CFLAGS  = -Wall -Werror
 LDFLAGS =

 # Program name
 TARGET  = example

 # Sources -> Objects (collect all .cpp in the dir)
 SRCS := $(wildcard *.cpp)
 OBJS := $(SRCS:.cpp=.o)

 # Compile each .cpp to .o
 %.o: %.cpp
   $(CC) -c -o $@ $< $(CFLAGS)

 # Link all objects into the final program
 $(TARGET): $(OBJS)
   $(CC) -o $@ $^ $(LDFLAGS)

 .PHONY: clean
 clean:
   $(RM) $(OBJS) $(TARGET)
