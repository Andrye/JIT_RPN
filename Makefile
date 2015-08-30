CXX ?= g++
ASM ?= nasm
CXXFLAGS = -Wall -O2 -g -c
ASMFLAGS = -g -O0 -felf64
SOURCES  = main.cpp tools.asm
OBJECTS_ = $(SOURCES:.cpp=.o)
OBJECTS  = $(OBJECTS_:.asm=.o)
HEADERS  = *.h

EXECUTABLES = exec

exec: $(OBJECTS) $(HEADERS)
	$(CXX) -O2 -g -o $@ $(OBJECTS) 

main.o : main.cpp
	$(CXX) $(CXXFLAGS) $? -o $@

%.o : %.asm
	$(ASM) $? $(ASMFLAGS) -o $@

%.h :

.PHONY : clean

clean :
	rm -f $(OBJECTS) $(EXECUTABLES)
