#!/bin/bash

#FPATH='/Users/jatinkhare/Desktop/parallel_project'

echo "Select 1 for compliling for 'ubuntu', and 2 for 'g++-12'"

read arg2
if [ $arg2 == 1 ]
then
  echo "Compiling for ubuntu..."
  //g++  -lpthread -pthread $1.cpp -o $1_ubuntu.o   
  
  g++ $1.cpp -isystem benchmark/include \
  -Lbenchmark/build/src -lbenchmark -lpthread -pthread -o $1_ubuntu.o

  objdump -d $1_ubuntu.o > $1_ubuntu.asm
  #vim $arg2_clang.asm

elif [ $arg2 == 2 ]
then
  echo "Compiling for g++-12..."
  #g++-12 $arg2.cpp -o $arg2_gcc.o -O3
  
  g++-12 $arg2.cpp -std=c++11 -isystem $FPATH/benchmark/include \
  -L$FPATH/benchmark/build/src -lbenchmark -lpthread -o $arg2_gcc.o

  objdump -d $arg2_gcc.o > $arg2_gcc.asm
  #vim $arg2_gcc.asm

elif [ $arg2 == 3 ]
then
  echo "Deleting clang files..."
  rm -r $1_clang.*
  rm -r $1.o

else
  echo "Deleting gcc files..."
  rm -r $1_gcc.*
  rm -r $1.o
fi
