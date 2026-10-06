#include "../h/_sem.hpp"

const int SEM_ALLOC_FAILED=-1;
const int SEM_NULL_ERR=-1;
const int SEM_FREE_FAILED=-2;
const int SEM_THREAD_SUSPENDED=-1;

int _sem::createSem(_sem** sem, unsigned init){
    size_t blocks=(sizeof(_sem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    *sem=(_sem*)MemUnit::mem_alloc(blocks);
    if (!*sem) return SEM_ALLOC_FAILED;
    (*sem)->val=init;
    (*sem)->blocked=List<semElem>::genList();
    return 0;
}

int _sem::deleteSem(_sem* sem){
    int status=0;
    if (!sem) return SEM_NULL_ERR;
    while (!sem->blocked->isEmpty()){
        semElem* elem=sem->blocked->get();
        Scheduler::put(elem->thread);
        MemUnit::mem_free(elem);
    }
    status=MemUnit::mem_free(sem->blocked);
    if (status<0) return SEM_FREE_FAILED;
    status=MemUnit::mem_free(sem);
    if (status<0) return SEM_FREE_FAILED;
    return 0;
}

int _sem::semWait(_sem* sem,unsigned n){
    if (!sem) return SEM_NULL_ERR;

    if (sem->val<n){
        size_t blocks=(sizeof(semElem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
        semElem* new_elem=(semElem*)MemUnit::mem_alloc(blocks);
        new_elem->val=n;
        new_elem->thread=_thread::running;
        sem->blocked->add(new_elem);
        _thread::running->setSuspended(true);
        _thread::yield();
        if (_thread::running->isSuspended()) return SEM_THREAD_SUSPENDED;
    }
    else sem->val-=n;
    return 0;
}

int _sem::semSignal(_sem* sem,unsigned n){
    if (!sem) return SEM_NULL_ERR;
    sem->val+=n;
    semElem* head=sem->blocked->peek();
    while (head && head->val<=sem->val)
    {
        head=sem->blocked->get();
        _thread* retThread=head->thread;
        retThread->setSuspended(false);
        sem->val-=head->val;
        MemUnit::mem_free(head);
        Scheduler::put(retThread);

    }
    return 0;
}
