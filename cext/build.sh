#!/bin/bash
# https://stackoverflow.com/questions/10358745/how-to-use-libraries


clang++ -I include -fPIC -c lib/parq.cpp
clang++ -shared parq.o -o libparq.so
clang++ -I include src/main.cpp -L. -lparq -o main.exe

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd)
echo $LD_LIBRARY_PATH

./main.exe