# rules for compiling
%: %_thread_affinity.cpp
	g++ $@_thread_affinity.cpp -isystem benchmark/include -Lbenchmark/build/src -lbenchmark -lpthread -O3 -march=native -mtune=native -o run_$@
	./run_$@
                   
