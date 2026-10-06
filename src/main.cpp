#include "../h/console_unit.hpp"
#include "../h/event_list.hpp"
#include "../h/mem_unit.hpp"
#include "../h/scheduler.hpp"
#include "../h/_thread.hpp"
#include "../h/syscall_c.h"
extern void userMain();
extern "C" void InterruptHandler();
/*void fullHalt2(){
    _thread::deleteThread(_thread::inputConsoleThread);
    _thread::deleteThread(_thread::outputConsoleThread);
    _thread::deleteThread(_thread::idle);
    ConsoleUnit::free();
    Scheduler::free();
    EventList::free();
    MemUnit::mem_free(_thread::running);
    RISCV::Halt();
}*/
void fullHalt(){
    MemUnit::fullFree();
    RISCV::Halt();
}
int main(){
    MemUnit::mem_init();
    _thread::SetMainThread();
    _thread::SetIdleThread();
    _thread::SetUserMainThread();
    _thread::SetInputThread();
    _thread::SetOutputThread();
    ConsoleUnit::init();
    __asm__ __volatile__("csrw stvec, %0" : :"r" (InterruptHandler));
    thread_dispatch();
    fullHalt();
    return 0;
}