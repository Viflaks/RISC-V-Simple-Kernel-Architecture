#include "../h/event_list.hpp"
List<Event> EventList::eventList;

bool cmp(Event* a,Event* b){
    if (a->time<b->time){
        b->time-=a->time;
        return false;
    }
    a->time-=b->time;
    return true;
}

void EventList::put(_thread* thread,time_t time){
    if (time==0) return;
    thread->setFinished(true);
    size_t mem=(sizeof(Event)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    Event* new_elem = (Event*)MemUnit::mem_alloc(mem);
    new_elem->thread=thread;
    new_elem->time=time;
    eventList.addSorted(new_elem,cmp);
}

void EventList::alert(){
    Event* head=eventList.peek();
    if (head){
        head->time--;
        while (head && head->time==0){
            ret();
            head=eventList.peek();
        }
    }
}

void EventList::ret(){
    Event* head=eventList.get();
    Scheduler::put(head->thread);
    head->thread->setFinished(false);
    MemUnit::mem_free(head);
}

bool EventList::isEmpty(){
    return eventList.isEmpty();
}

void EventList::free(){
    while (!isEmpty()) eventList.get();
}
