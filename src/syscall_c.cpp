#include "../h/syscall_c.h"
int u=0;
void* mem_alloc (size_t size){
    size_t sz=(size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    void* retVal;
    __asm__ __volatile__(
        "li a0, 0x01\n"
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (sz)
        :"a0","a1");
    return retVal;
};

int mem_free (void* ptr){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x02\n"
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (ptr)
        :"a0","a1");
    return retVal;
};

int thread_create (thread_t* handle,void(*start_routine)(void*),void* arg){
    int retVal;
    void* stack=mem_alloc(DEFAULT_STACK_SIZE);
    __asm__ __volatile__(
        "li a0, 0x11\n"
        "mv a1, %1\n"
        "mv a2, %2\n"
        "mv a3, %3\n"
        "mv a4, %4\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (handle),"r"(start_routine),"r"(arg),"r"(stack)
        :"a0","a1","a2","a3","a4");
    return retVal;
}

int thread_exit (){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x12\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :
        :"a0");
    return retVal;
}

void thread_dispatch (){
    __asm__ __volatile__(
        "li a0, 0x13\n"
        "ecall\n"
        :
        :
        :"a0");
}



int sem_open (sem_t* handle,unsigned init){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x21\n"
        "mv a1, %1\n"
        "mv a2, %2\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (handle),"r"(init)
        :"a0","a1","a2");
    return retVal;
}

int sem_close (sem_t handle){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x22\n"
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (handle)
        :"a0","a1");
    return retVal;
}

int sem_wait (sem_t id){
    int retVal=0;
    __asm__ __volatile__(
        "li a0, 0x23\n"
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id)
        :"a0","a1");
    return retVal;
}

int sem_signal (sem_t id){
    int retVal=0;
    __asm__ __volatile__(
        "li a0, 0x24\n"
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id)
        :"a0","a1");
    return retVal;
}

int sem_wait_n(sem_t id,unsigned n){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x25\n"
        "mv a1, %1\n"
        "mv a2, %2\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id),"r"(n)
        :"a0","a1","a2");
    return retVal;
}
int sem_signal_n(sem_t id,unsigned n){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x26\n"
        "mv a1, %1\n"
        "mv a2, %2\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id),"r"(n)
        :"a0","a1","a2");
    return retVal;
}
int time_sleep(time_t time){
    int retVal;
    __asm__ __volatile__(
        "li a0, 0x31\n"
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (time)
        :"a0","a1");
    return retVal;
}

char getc(){
    char c;
    __asm__ __volatile__(
        "li a0, 0x41\n"
        "ecall\n"
        "mv %0,a0"
        :"=r" (c)
        ::"a0");
    return c;
}
void putc (char c){
    __asm__ __volatile__(
        "li a0, 0x42\n"
        "mv a1, %0\n"
        "ecall\n"
        ::"r" (c)
        :"a0","a1");
}
