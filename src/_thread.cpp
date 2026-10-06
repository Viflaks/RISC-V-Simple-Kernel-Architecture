#include "../h/_thread.hpp"

static const int NO_MEM=-1;
static const int MEM_ALLOC_FAILED=-1;

_thread* _thread::running=nullptr;
_thread* _thread::idle=nullptr;
_thread* _thread::userMainThread=nullptr;
_thread* _thread::mainThread=nullptr;
_thread* _thread::outputConsoleThread=nullptr;
_thread* _thread::inputConsoleThread=nullptr;
time_t _thread::timeSliceCurr=0;

void runIdle(void*){
    while (true){
        __asm__ __volatile__("wfi");
        thread_dispatch();
    }
}

void _thread::runUserMain(){
    RISCV::popSppSpie();
    userMain();
    thread_dispatch();
    thread_exit();
}

void _thread::runThread(){
    RISCV::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

void _thread::dispatch(){
    if (!running->isFinished()) Scheduler::put(running);
    yield();
}

void _thread::yield(){
    if (setjmp(&running->context)==0){
        resetTimeSlice();
        if (Scheduler::isEmpty()) running=idle;
        else running=Scheduler::get();
        longjmp(&running->context);
    }
}

void _thread::SetMainThread(){
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    running=(_thread*)MemUnit::mem_alloc(blocks);
    running->body=nullptr;
    running->arg=nullptr;
    running->stack=nullptr;
    running->finished=true;
    running->suspended=false;
    running->timeslice=DEFAULT_TIME_SLICE;
    mainThread=running;
}

void _thread::SetInputThread(){
    size_t sz=DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE;
    void* stackSpace=MemUnit::mem_alloc(sz);
    createThread(&inputConsoleThread,runInput,nullptr,stackSpace);
    inputConsoleThread->context.sstatus=256;
}

void _thread::SetOutputThread(){
    size_t sz=DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE;
    void* stackSpace=MemUnit::mem_alloc(sz);
    createThread(&outputConsoleThread,runOutput,nullptr,stackSpace);
    outputConsoleThread->context.sstatus=256;
}

void _thread::SetUserMainThread(){
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    userMainThread=(_thread*)MemUnit::mem_alloc(blocks);
    userMainThread->body=nullptr;
    userMainThread->arg=nullptr;
    size_t sz=DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE;
    userMainThread->stack=(uint64*)MemUnit::mem_alloc(sz);
    userMainThread->finished=false;
    userMainThread->suspended=false;
    userMainThread->context.ra=(uint64)runUserMain;
    userMainThread->context.sp=(uint64)userMainThread->stack+DEFAULT_STACK_SIZE;
    userMainThread->context.sstatus=32;
    userMainThread->timeslice=DEFAULT_TIME_SLICE;
    prepstack(&userMainThread->context);
    Scheduler::put(userMainThread);
}

int _thread::createThread(_thread** thread,Body body,void* arg,void* stackSpace){
    if (!stackSpace) return NO_MEM;
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    *thread=(_thread*)MemUnit::mem_alloc(blocks);
    if (!*thread) return NO_MEM;
    (*thread)->body=body;
    (*thread)->arg=arg;
    (*thread)->stack=(uint64*)stackSpace;
    (*thread)->finished=false;
    (*thread)->suspended=false;
    (*thread)->context.ra=(uint64)runThread;
    (*thread)->context.sp=(uint64)(*thread)->stack+DEFAULT_STACK_SIZE;
    (*thread)->context.sstatus=32;
    (*thread)->timeslice=DEFAULT_TIME_SLICE;
    prepstack(&(*thread)->context);
    Scheduler::put(*thread);
    return 0;
}

void _thread::SetIdleThread(){
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    idle=(_thread*)MemUnit::mem_alloc(blocks);
    idle->body=runIdle;
    idle->arg=nullptr;
    size_t sz=DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE;
    idle->stack=(uint64*)MemUnit::mem_alloc(sz);
    idle->finished=true;
    idle->suspended=false;
    idle->context.ra=(uint64)runThread;
    idle->context.sp=(uint64)idle->stack+DEFAULT_STACK_SIZE;
    idle->context.sstatus=288;
    idle->timeslice=DEFAULT_TIME_SLICE;
    prepstack(&idle->context);
}

int _thread::deleteThread(_thread* thread){
    int status=0;
    thread->finished=true;
    if (thread->stack!=nullptr) status=MemUnit::mem_free(thread->stack);
    if (status<0) return MEM_ALLOC_FAILED;
    status=MemUnit::mem_free(thread);
    if (status<0) return MEM_ALLOC_FAILED;
    if (running!=thread) return status;
    if (thread==userMainThread){running=mainThread;}
    else{
        resetTimeSlice();
        if (Scheduler::isEmpty()) running=idle;
        else running=Scheduler::get();
    }
    longjmp(&running->context);
    return status;
}

void _thread::incTimeSlice(){
    timeSliceCurr++;
}

bool _thread::timeRunOut(){
    return running->timeslice==timeSliceCurr;
}

void _thread::resetTimeSlice(){
    timeSliceCurr=0;
}

_thread::~_thread(){

}
