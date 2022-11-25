if [ $1 == "clean" ]
then
	echo "clean done!"
	rm -rf run_*
elif [ $2 -eq 1 ]
then
	echo "compiling.."
	g++ $1.cpp -std=c++11 -isystem ../../../benchmark/include -L../../../benchmark/build/src -lbenchmark -lpthread -o run_$1
	./run_$1
else
	echo "compiling for affinity specific code.."
	g++ $1.cpp -isystem ../../../benchmark/include -L../../../benchmark/build/src -lbenchmark -lpthread -O3 -march=native -mtune=native -o run_$1
	./run_$1
fi
