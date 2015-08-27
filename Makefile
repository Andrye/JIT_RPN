CXX ?= g++
ASM ?= nasm
CXXFLAGS = -Wall -O2 -g -c
ASMFLAGS = -g -O0 -felf64
SOURCES  = main.cpp tools.asm
OBJECTS_ = $(SOURCES:.cpp=.o)
OBJECTS  = $(OBJECTS_:.asm=.o)

EXECUTABLES = exec

exec: $(OBJECTS)
	$(CXX) -g -o $@ $?

main.o : main.cpp
	$(CXX) $(CXXFLAGS) $? -o $@

%.o : %.asm
	$(ASM) $? $(ASMFLAGS) -o $@

.PHONY : clean

clean :
	rm -f $(OBJECTS) $(EXECUTABLES)
