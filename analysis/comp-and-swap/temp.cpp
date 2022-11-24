√#include <ctime>
#include <iostream>

int
main(int, const char**)
{
     std::clock_t    start;

     start = std::clock();
     // your test
     std::cout << "Time: " << (std::clock() - start) / (double)(CLOCKS_PER_SEC / 1000) << " ms" << std::endl;
     return 0;
}
