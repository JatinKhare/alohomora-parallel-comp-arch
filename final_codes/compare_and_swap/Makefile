# rules for compiling
%: %.cpp
	g++ $@.cpp -std=c++11 -isystem benchmark/include -Lbenchmark/build/src -lbenchmark -lpthread -o run_$@
	./run_$@
#                   
