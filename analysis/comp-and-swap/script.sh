g++ cas_thread_affinity.cpp -isystem ../../../benchmark/include -L../../../benchmark/build/src -lbenchmark -lpthread -O3 -march=native -mtune=native -o run_thread_affinity

perf stat -d ./run_thread_affinity  --benchmark_filter=threadAffinity/real_time
perf c2c record ./run_thread_affinity  --benchmark_filter=threadAffinity/real_time

#perf stat -d ./run_thread_affinity  --benchmark_filter=osScheduling/real_time
#perf c2c record ./run_thread_affinity  --benchmark_filter=osScheduling/real_time
