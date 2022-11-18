#ifndef CPU_RELAX_H
#define CPU_RELAX_H

namespace sync {
  
    inline static void cpu_relax() {  
    
    #if (COMPILER == MVCC)
        _mm_pause();
    #elif (COMPILER == GCC || COMPILER == LLVM)
        asm volatile("pause\n": : :"memory");
    #endif
    }

}

#endif // CPU_RELAX_H