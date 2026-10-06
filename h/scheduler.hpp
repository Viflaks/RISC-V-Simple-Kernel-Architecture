#ifndef OSPROJEKAT_SCHEDULER_HPP
#define OSPROJEKAT_SCHEDULER_HPP
#include "linked_list.hpp"
class _thread;
class Scheduler{
    static List<_thread> schedulerList;
public:
    static _thread* get();
    static void put(_thread* thread);
    static void putAtStart(_thread* thread);
    static bool isEmpty();
    static void free();
};
#endif //OSPROJEKAT_SCHEDULER_HPP
