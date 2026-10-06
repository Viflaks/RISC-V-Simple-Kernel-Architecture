#ifndef OSPROJEKAT__SEM_HPP
#define OSPROJEKAT__SEM_HPP
#include "linked_list.hpp"
#include "../h/mem_unit.hpp"
#include "../h/scheduler.hpp"
#include "../h/_thread.hpp"
class _thread;
class _sem{
    struct semElem{
        unsigned val;
        _thread* thread;
    };
public:
    static int createSem(_sem ** sem,unsigned init);
    static int deleteSem(_sem* sem);
    static int semWait(_sem* sem,unsigned n);
    static int semSignal(_sem* sem,unsigned n);
private:
    unsigned val;
    List<semElem>* blocked;
};

#endif //OSPROJEKAT__SEM_HPP
