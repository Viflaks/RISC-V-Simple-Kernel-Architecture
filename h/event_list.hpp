#ifndef OSPROJEKAT_EVENT_LIST_HPP
#define OSPROJEKAT_EVENT_LIST_HPP
#include "../lib/hw.h"
#include "mem_unit.hpp"
#include "linked_list.hpp"
#include "scheduler.hpp"
#include "_thread.hpp"
struct Event{
    _thread* thread;
    time_t time;
};

class EventList{
    static List<Event> eventList;
public:
    static void free();
    static void ret();
    static void alert();
    static void put(_thread* thread,time_t time);
    static bool isEmpty();
};

#endif //OSPROJEKAT_EVENT_LIST_HPP
