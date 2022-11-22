// Copyright (c) 2018 The LevelDB Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file. See the AUTHORS file for names of contributors.

#ifndef STORAGE_LEVELDB_PORT_PORT_STDCXX_H_
#define STORAGE_LEVELDB_PORT_PORT_STDCXX_H_

// port/port_config.h availability is automatically detected via __has_include
// in newer compilers. If LEVELDB_HAS_PORT_CONFIG_H is defined, it overrides the
// configuration detection.
#if defined(LEVELDB_HAS_PORT_CONFIG_H)

#if LEVELDB_HAS_PORT_CONFIG_H
#include "port/port_config.h"
#endif  // LEVELDB_HAS_PORT_CONFIG_H

#elif defined(__has_include)

#if __has_include("port/port_config.h")
#include "port/port_config.h"
#endif  // __has_include("port/port_config.h")

#endif  // defined(LEVELDB_HAS_PORT_CONFIG_H)

#if HAVE_CRC32C
#include <crc32c/crc32c.h>
#endif  // HAVE_CRC32C
#if HAVE_SNAPPY
#include <snappy.h>
#endif  // HAVE_SNAPPY

#include <cassert>
#include <condition_variable>  // NOLINT
#include <cstddef>
#include <cstdint>
#include <mutex>  // NOLINT
#include <string>
#include "port/thread_annotations.h"
#include <iostream>
#include <atomic>
#include <thread>
#include<vector>
#define DEFAULT_CONSTRUCTOR
//#define ORIG
//#define PTHREAD
//#define CAS
#define TAS
//#define TTAS
//#define FAI
//#define ANDERSON
//#define TICKET
//#define MCS

#ifdef ANDERSON
      #define CACHELINE_SIZE 64
#endif

namespace leveldb {
namespace port {
class CondVar;

class LOCKABLE Mutex {
 public:
 
#ifdef DEFAULT_CONSTRUCTOR
Mutex() = default;
#endif

#ifdef PTHREAD
  Mutex(){
	  pthread_mutex_init(&pthread_mutex_lock1, NULL);
  }
#endif

#ifdef ANDERSON
  Mutex():LockedFlags(32) {
    {
        for (auto &flag : LockedFlags)
            flag.first = true;

        LockedFlags[0].first = false;
    }
  }
#endif

  ~Mutex() = default;
  Mutex(const Mutex&) = delete;
  Mutex& operator=(const Mutex&) = delete;

  void Lock() EXCLUSIVE_LOCK_FUNCTION() {
	if(flag.load()==false){
		
#ifdef ORIG
		mu_.lock();
#endif

#ifdef PTHREAD
		pthread_mutex_lock(&pthread_mutex_lock1);
#endif

#ifdef CAS
		bool expected = false;
		while (!cas_lock_flag.compare_exchange_strong(expected, true)) {
			expected = false;
		}
#endif
		
#ifdef TAS
		while (tas_lock_flag.exchange(1));
#endif

#ifdef TTAS
		do{
		while(ttas_lock_flag.load()){;}
		}while (ttas_lock_flag.exchange(1));
#endif

#ifdef FAI
#endif

#ifdef ANDERSON
	const size_t index = (NextFreeIdx.fetch_add(1))%LockedFlags.size();
        auto &flag = LockedFlags[index].first;

        // Ensure overflow never happens
        if (index == 0)
            NextFreeIdx -= LockedFlags.size();

        while (flag);

        flag = true;
#endif

#ifdef TICKET
            auto place = my_ticket_num.fetch_add(1);
	    while (curr_serving != place){
	    }
#endif

#ifdef MCS
 I->next = NULL;
    qnode *predecessor = new qnode;
    predecessor = I;   
    predecessor = L->exchange(predecessor);
    if (predecessor!=NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
	;
    }
#endif


	}
	else{
		mu_.lock();
	}
  }
  
  
 





  void Unlock() UNLOCK_FUNCTION() {
	if(flag.load()==false){
#ifdef ORIG
		mu_.lock();
#endif

#ifdef PTHREAD
		pthread_mutex_unlock(&pthread_mutex_lock1);
#endif

#ifdef CAS
		cas_lock_flag.store(false);
#endif
		
#ifdef TAS
		tas_lock_flag.exchange(0);
#endif

#ifdef TTAS
		ttas_lock_flag.exchange(0);
#endif

#ifdef ANDERSON
	const size_t idx = NextServingIdx.fetch_add(1);
        LockedFlags[idx%LockedFlags.size()].first = false;
#endif

#ifdef TICKET
	asm volatile("" : : : "memory");
	curr_serving = curr_serving + 1;
#endif

#ifdef MCS


  if(I->next){
    I->next->locked = false;
  }
  else{
    qnode *old_tail = NULL;
    old_tail = L->exchange(old_tail);
    if(old_tail == I)
      return;

    qnode *userper = old_tail;
    userper = L->exchange(userper);
    while((I->next) == NULL){
	    ;
    }
    if(userper)
      userper->next = I->next;
    else
      I->next->locked = false;
  }
    
#endif

	}
	else{
		mu_.unlock();
		//std::cout<<"inside condition variable Unlock()\n"; 
	}
  }
  void AssertHeld() ASSERT_EXCLUSIVE_LOCK() {}

 private:
  friend class CondVar;
  std::mutex mu_;
  std::atomic<bool> flag{false};

#ifdef PTHREAD
  pthread_mutex_t pthread_mutex_lock1;
#endif

#ifdef CAS
  std::atomic<bool>cas_lock_flag{false};
#endif

#ifdef TAS
  std::atomic<int> tas_lock_flag{0};
#endif

#ifdef TTAS
  std::atomic<int> ttas_lock_flag{0};
#endif

#ifdef ANDERSON
  using PaddedFlag = std::pair<std::atomic_bool, uint8_t[CACHELINE_SIZE-sizeof(std::atomic_bool)]>;
    static_assert(sizeof(PaddedFlag) == CACHELINE_SIZE, "");
    alignas(CACHELINE_SIZE) std::vector<PaddedFlag> LockedFlags;
    alignas(CACHELINE_SIZE) std::atomic_size_t      NextFreeIdx = {0};
    alignas(CACHELINE_SIZE) std::atomic_size_t      NextServingIdx = {1};
#endif

#ifdef TICKET
        std::atomic<uint64_t> my_ticket_num{0};	
	volatile std::uint64_t curr_serving{0};
#endif

#ifdef MCS
typedef struct qnode {
  struct qnode *next;
  bool locked;
} qnode;

std::atomic<qnode*> *L = new std::atomic<qnode*>;
qnode* I = new qnode;

#endif

};



// Thinly wraps std::mutex.
/*class LOCKABLE Mutex {
 public:
  Mutex() = default;
  ~Mutex() = default;

  Mutex(const Mutex&) = delete;
  Mutex& operator=(const Mutex&) = delete;

  void Lock() EXCLUSIVE_LOCK_FUNCTION() { mu_.lock(); }
  void Unlock() UNLOCK_FUNCTION() { mu_.unlock(); }
  void AssertHeld() ASSERT_EXCLUSIVE_LOCK() {}

 private:
  friend class CondVar;
  std::mutex mu_;
};*/
// Thinly wraps std::condition_variable.
class CondVar {
 public:
  //explicit CondVar(Mutex* mu) : mu_(mu) { assert(mu != nullptr); }
  explicit CondVar(Mutex* mu) : mu_(mu){ 
	  assert(mu != nullptr); 
	  mu->flag.store(true);
  }
  ~CondVar() = default;

  CondVar(const CondVar&) = delete;
  CondVar& operator=(const CondVar&) = delete;

  void Wait() {
    //mu_->flag.store(true);
    //std::cout<<"\nTotal count before entering = "<<in_count<<"\n";
    //in_count++;
    std::unique_lock<std::mutex> lock(mu_->mu_, std::adopt_lock);
    //std::unique_lock<std::mutex> lock(my_mu_, std::adopt_lock);
    cv_.wait(lock);
    lock.release();
    //out_count++;
    //std::cout<<"I am going out: "<<out_count<<"\n";
    //std::cout<<"Total inside: "<<in_count - out_count<<"\n";
    //mu_->flag.store(false);
  }
  void Signal() { 
         /* std::cout<<"notifying 1\n";
	  if(in_count!=0){
		  std::cout<<"in count not zero, decrementing\n";
		  in_count--;
	  }*/
	  cv_.notify_one(); 
          //std::cout<<"Total count after notifying 1 of waiters = "<<in_count<<"\n";
  }
  void SignalAll() { 
	  //in_count = 0;
	  cv_.notify_all(); 
          //std::cout<<"Notified all, now the count is = "<<in_count<<"\n";

  }

 private:
  //int in_count = 0, out_count = 0;
  std::condition_variable cv_;
  Mutex* const mu_;
  //std::mutex my_mu_;
};

inline bool Snappy_Compress(const char* input, size_t length,
                            std::string* output) {
#if HAVE_SNAPPY
  output->resize(snappy::MaxCompressedLength(length));
  size_t outlen;
  snappy::RawCompress(input, length, &(*output)[0], &outlen);
  output->resize(outlen);
  return true;
#else
  // Silence compiler warnings about unused arguments.
  (void)input;
  (void)length;
  (void)output;
#endif  // HAVE_SNAPPY

  return false;
}

inline bool Snappy_GetUncompressedLength(const char* input, size_t length,
                                         size_t* result) {
#if HAVE_SNAPPY
  return snappy::GetUncompressedLength(input, length, result);
#else
  // Silence compiler warnings about unused arguments.
  (void)input;
  (void)length;
  (void)result;
  return false;
#endif  // HAVE_SNAPPY
}

inline bool Snappy_Uncompress(const char* input, size_t length, char* output) {
#if HAVE_SNAPPY
  return snappy::RawUncompress(input, length, output);
#else
  // Silence compiler warnings about unused arguments.
  (void)input;
  (void)length;
  (void)output;
  return false;
#endif  // HAVE_SNAPPY
}

inline bool GetHeapProfile(void (*func)(void*, const char*, int), void* arg) {
  // Silence compiler warnings about unused arguments.
  (void)func;
  (void)arg;
  return false;
}

inline uint32_t AcceleratedCRC32C(uint32_t crc, const char* buf, size_t size) {
#if HAVE_CRC32C
  return ::crc32c::Extend(crc, reinterpret_cast<const uint8_t*>(buf), size);
#else
  // Silence compiler warnings about unused arguments.
  (void)crc;
  (void)buf;
  (void)size;
  return 0;
#endif  // HAVE_CRC32C
}

}  // namespace port
}  // namespace leveldb

#endif  // STORAGE_LEVELDB_PORT_PORT_STDCXX_H_
