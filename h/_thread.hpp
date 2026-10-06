#ifndef OSPROJEKAT_TCB_HPP
#define OSPROJEKAT_TCB_HPP
#include "../lib/hw.h"
#include "../h/mem_unit.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.h"

extern void userMain();
extern void runOutput(void*);
extern void runInput(void*);
using Body=void(*)(void*);

class _thread{
public:
    struct  Context{
        uint64 ra;
        uint64 sp;
        uint64 sstatus;
        uint64 sepc;
    };
    bool isFinished(){return finished;}

    void setFinished(bool finished){this->finished=finished;}

    bool isSuspended(){return suspended;}

    void setSuspended(bool suspended){this->suspended=suspended;}

    static int createThread(_thread** thread,Body body,void* arg,void* stackSpace);

    static int deleteThread(_thread* thread);

    static void SetMainThread();

    static void SetOutputThread();

    static void SetInputThread();

    static void SetUserMainThread();

    static void SetIdleThread();

    static void runThread();

    static void dispatch();

    static void yield();

    static int setjmp(Context* old);

    static int prepstack(Context* ready);

    static int longjmp(Context* running);

    static void incTimeSlice();

    static void resetTimeSlice();

    static bool timeRunOut();

    static void runUserMain();

    ~_thread();

    static _thread* running;
    static _thread* idle;
    static _thread* userMainThread;
    static _thread* mainThread;
    static _thread* outputConsoleThread;
    static _thread* inputConsoleThread;
private:
    static time_t timeSliceCurr;

    Body body;
    void* arg;
    uint64* stack;
    time_t timeslice;
    Context context;
    bool finished;
    bool suspended;
};

#endif //OSPROJEKAT_TCB_HPP
