#include "../h/scheduler.hpp"
List<_thread> Scheduler::schedulerList;

void Scheduler::put(_thread* thread){
    schedulerList.add(thread);
}

_thread* Scheduler::get(){
    return schedulerList.get();
}

bool Scheduler::isEmpty(){
    return schedulerList.isEmpty();
}

void Scheduler::putAtStart(_thread* thread){
    schedulerList.addAtStart(thread);
}

void Scheduler::free(){
    while (!isEmpty()) get();
}
