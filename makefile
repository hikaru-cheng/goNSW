COMPILER = gcc
CCFLAGS = -Wall -Werror -std=c11
all: goNSW

goNSW: WGraph.o goNSW.o PQueue.o
	$(COMPILER) -pthread $(CCFLAGS) -o goNSW WGraph.o goNSW.o PQueue.o
goNSW.o: goNSW.c WGraph.h PQueue.h
	$(COMPILER) $(CCFLAGS) -c goNSW.c 
PQueue.o: PQueue.c PQueue.h
	$(COMPILER) $(CCFLAGS) -c PQueue.c
WGraph.o: WGraph.c WGraph.h
	$(COMPILER) $(CCFLAGS) -c WGraph.c



ifeq ($(DEBUG), TRUE)
	CCFLAGS += -g
endif

clean:
	rm -f *.o