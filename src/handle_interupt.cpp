#include "../lib/hw.h"
#include "../h/mem_unit.hpp"
#include "../h/riscv.hpp"
#include "../h/_thread.hpp"
#include "../h/_sem.hpp"
#include "../h/event_list.hpp"
#include "../h/console_unit.hpp"
static const uint64 USER_SYSCALL_INTERUPT=0x08;
static const uint64 SYS_SYSCALL_INTERUPT=0x09;
static const uint64 ILLEGAL_INSTRUCTION_INTERUPT=0x02;
static const uint64 BAD_READ_INTERUPT=0x05;
static const uint64 BAD_WRITE_INTERUPT=0x07;
static const uint64 TIMER_INTERUPT=0x8000000000000001;
static const uint64 CONSOLE_INTERUPT=0x8000000000000009;
extern void fullHalt();

uint64 handleSysCall(uint64 code,uint64 a1_val,uint64 a2_val,uint64 a3_val,uint64 a4_val)
{
    uint64 ret=code;
    switch (code){
    case 0x01:{
            size_t size=(size_t)a1_val;
            ret=(uint64)MemUnit::mem_alloc(size);
            break;
    }
    case 0x02:{
            void* ptr=(void*)a1_val;
            ret=MemUnit::mem_free(ptr);
            break;
    }
    case 0x11:{
            _thread** handle=(_thread**)a1_val;
            Body body=(Body)a2_val;
            void* arg=(void*)a3_val;
            void* stack=(void*)a4_val;
            ret = _thread::createThread(handle,body,arg,stack);
            break;
    }
    case 0x12:{
            ret=_thread::deleteThread(_thread::running);
            break;
    }
    case 0x13:{
            _thread::dispatch();
            break;
    }
    case 0x21:{
            _sem** handle=(_sem**)a1_val;
            unsigned init=(unsigned)a2_val;
            ret=_sem::createSem(handle,init);
            break;
    }
    case 0x22:{
            _sem* sem=(_sem*)a1_val;
            ret=_sem::deleteSem(sem);
            break;
    }
    case 0x23:{
            _sem* sem=(_sem*)a1_val;
            ret=_sem::semWait(sem,1);
            break;
    }
    case 0x24:{
            _sem* sem=(_sem*)a1_val;
            ret=_sem::semSignal(sem,1);
            break;
    }
    case 0x25:{
            _sem* sem=(_sem*)a1_val;
            unsigned n=(unsigned)a2_val;
            ret=_sem::semWait(sem,n);
            break;
    }
    case 0x26:{
            _sem* sem=(_sem*)a1_val;
            unsigned n=(unsigned)a2_val;
            ret=_sem::semSignal(sem,n);
            break;
    }
    case 0x31:{
            time_t time=time_t(a1_val);
            EventList::put(_thread::running,time);
            _thread::dispatch();
            ret=0;
            break;
    }
    case 0x41:{
            ret=ConsoleUnit::getInputBuffer();
            break;
    }
    case 0x42:{
            char c=(char)a1_val;
            ConsoleUnit::putOutputBuffer(c);
            break;
    }
    default:
        break;
    }
    uint64 sepc=RISCV::readSepc();
    sepc+=4;
    RISCV::writeSepc(sepc);
    return ret;
}
void handleIllegalInstruct(){
    Scheduler::free();
    Scheduler::put(_thread::outputConsoleThread);
    ConsoleUnit::putString("Ilegalna Instrukcija\n");
    _thread::dispatch();
    fullHalt();
}
void handleBadRead(){
    Scheduler::free();
    Scheduler::put(_thread::outputConsoleThread);
    ConsoleUnit::putString("Nedozvoljeno Citanje sa date adrese\n");
    _thread::dispatch();
    fullHalt();
}
void handleBadWrite(){
    Scheduler::free();
    Scheduler::put(_thread::outputConsoleThread);
    ConsoleUnit::putString("Nedozvoljeno upisivanje na datu adresu\n");
    _thread::dispatch();
    fullHalt();
}
void handleTimer(){
    __asm__ __volatile__("csrc sip,2");
    EventList::alert();
    _thread::incTimeSlice();
    if (_thread::timeRunOut()){
        _thread::dispatch();
    }
}
void handleConsole(){
    int v=plic_claim();
    if (v==CONSOLE_IRQ){
        uint8 status=RISCV::readConStatus();
        if ((status & CONSOLE_RX_STATUS_BIT)!=0){
            ConsoleUnit::signalInput();
        }
    }
    plic_complete(v);
}
uint64 handleInterrupt()
{
    uint64 code;
    uint64 a1_val;
    uint64 a2_val;
    uint64 a3_val;
    uint64 a4_val;
    __asm__ __volatile__(
        "mv %0, a0\n"
        "mv %1, a1\n"
        "mv %2, a2\n"
        "mv %3, a3\n"
        "mv %4, a4\n"
        : "=r"(code), "=r"(a1_val), "=r"(a2_val), "=r"(a3_val),"=r"(a4_val)
        );
    uint64 scause=RISCV::readScause();
    uint64 ret=code;
    switch (scause){
    case USER_SYSCALL_INTERUPT:
    case SYS_SYSCALL_INTERUPT:
        ret=handleSysCall(code,a1_val,a2_val,a3_val,a4_val);
        break;
    case ILLEGAL_INSTRUCTION_INTERUPT:
        handleIllegalInstruct();
        break;
    case BAD_READ_INTERUPT:
        handleBadRead();
        break;
    case BAD_WRITE_INTERUPT:
        handleBadWrite();
        break;
    case TIMER_INTERUPT:
        handleTimer();
        break;
    case CONSOLE_INTERUPT:
        handleConsole();
        break;
    default:
        break;
    }
    return ret;
}