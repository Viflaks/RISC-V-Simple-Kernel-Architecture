#ifndef OSPROJEKAT_MEM_UNIT_HPP
#define OSPROJEKAT_MEM_UNIT_HPP
#include "../lib/hw.h"

class MemUnit{
    typedef struct free_node{
        size_t size;
        free_node* next;
    }FreeNode;
public:
    static bool isFull();
    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static void mem_init();
    static void merge_nodes(FreeNode* prev, FreeNode* next);
    static void fullFree();
private:
    static FreeNode* free_list;
};



#endif //OSPROJEKAT_MEM_UNIT_HPP
