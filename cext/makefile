# C++ library for reading parquet files
#	
#	Makefile for GNU Make tool 
#
# Created on: 2. 9. 2023
#      Author: Tomas Zitka

CC=clang++
CFLAGS=-g -Wall -pedantic

OBJ=parq.o
LINKOBJ=libparq

BIN=main.exe
LIB=libparq.so

RM=rm -f


all: $(BIN) clean

lib: $(LINKOBJ) clean

$(BIN): $(LINKOBJ)
	$(CC) $(CFLAGS) -I include/ src/main.cpp -L. -lparq -o $(BIN)  


$(LINKOBJ): $(OBJ)
	$(CC) $(CFLAGS) -shared parq.o -o $(LIB)

parq.o:
	$(CC) $(CFLAGS) -I include -fPIC -c lib/parq.cpp
	
clean:
	$(RM) $(OBJ)
	
purge:
	$(RM) $(BIN)
	$(RM) $(LIB)
	$(RM) $(OBJ)

rebuild: purge all clean
