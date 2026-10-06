#include "../h/syscall_cpp.hpp"
//Memory Unit CPP
void* operator new (size_t sz){
    void* ret= mem_alloc(sz);
    return ret;
}

void operator delete(void* ptr){
    mem_free(ptr);
}
//Memory Unit CPP

//class Thread
Thread::Thread(void (*body)(void*), void* arg){
    this->body = body;
    this->arg = arg;
}

Thread::Thread(){
    this->body = runWrapper;
    this->arg = this;
}

int Thread::start(){
    return thread_create(&myHandle,body,arg);
}

void Thread::dispatch(){
    thread_dispatch();
}

void Thread::runWrapper(void* arg){
    Thread* t=(Thread*)arg;
    t->run();
}

Thread::~Thread(){
}

int Thread::sleep(time_t time){
    return time_sleep(time);
}
//class Thread

//class PeriodicThread
PeriodicThread::PeriodicThread(time_t period):Thread(),period(period){
}

void PeriodicThread::run(){
    while (period!=0){
        periodicActivation();
        sleep(period);
    }
}

void PeriodicThread::terminate(){
    period=0;
}

//class PeriodicThread

//class Semaphore
Semaphore::Semaphore(unsigned init){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore(){
    sem_close(myHandle);
}

int Semaphore::wait(){
    return sem_wait(myHandle);
}

int Semaphore::signal(){
    return sem_signal(myHandle);
}

//class Semaphore

//class Console

char Console::getc(){
    return ::getc();
}

void Console::putc(char c){
    ::putc(c);
}
//class Console
