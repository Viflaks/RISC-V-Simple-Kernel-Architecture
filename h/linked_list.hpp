#ifndef OSPROJEKAT_LINKED_LIST_HPP
#define OSPROJEKAT_LINKED_LIST_HPP
#include "mem_unit.hpp"
template <typename T>
class List{
    struct Elem{
        T* data;
        Elem* next;
        Elem (T* data,Elem* next):data(data),next(next){}
    };
    Elem* head=nullptr,*tail=nullptr;
public:
    static List<T>* genList(){
        size_t mem=(sizeof(List<T>)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
        List<T>* list= (List<T>*)MemUnit::mem_alloc(mem);
        list->head=nullptr;
        list->tail=nullptr;
        return list;
    }

    void addAtStart(T* data){
        size_t mem=(sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
        new_elem->data=data;
        new_elem->next=head;
        head=new_elem;
        if (tail==nullptr) tail=new_elem;
    }

    void add(T* data){
        size_t mem=(sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
        new_elem->data=data;
        new_elem->next=nullptr;
        if(head==nullptr)head=new_elem;
        else tail->next=new_elem;
        tail=new_elem;
    }
    void addSorted(T* data, bool (*cmp)(T*, T*)){
        size_t mem=(sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
        new_elem->data=data;
        new_elem->next=nullptr;
        Elem* prev=nullptr;
        Elem* curr=head;
        while (curr && cmp(new_elem->data,curr->data)){
            prev=curr;
            curr=curr->next;
        }
        if (prev) prev->next=new_elem;
        else head=new_elem;
        new_elem->next=curr;
        if (!curr){
            tail=new_elem;
        }
    }
    T* get(){
        if (!head) return nullptr;
        Elem* node=head;
        head=head->next;
        if (!head) tail=nullptr;
        T* data=node->data;
        MemUnit::mem_free(node);
        return data;
    }

    T* peek(){
        if (head) return head->data;
        return nullptr;
    }

    bool isEmpty(){
        if (head) return false;
        return true;
    }

};

#endif //OSPROJEKAT_LINKED_LIST_HPP
