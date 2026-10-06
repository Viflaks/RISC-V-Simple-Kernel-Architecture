#include "../h/mem_unit.hpp"

const int PTR_NULL_ERR=-1;
const int ADDR_OUT_OF_BOUNDS_ERR=-2;

MemUnit::FreeNode* MemUnit::free_list = nullptr;

void MemUnit::mem_init(){
    free_list = (FreeNode*)HEAP_START_ADDR;
    free_list->size=(size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    free_list->next=nullptr;
}

void* MemUnit::mem_alloc(size_t size)
{
    size_t sz=size+1;
    FreeNode* prev = nullptr;
    FreeNode* node = free_list;
    while (node){
        if (node->size >= sz) break;
        prev = node;
        node=node->next;
    }
    if (node==nullptr){
        return nullptr;
    }
    if (node->size ==sz){
        if (prev) prev->next=node->next;
        else free_list=node->next;
    }
    else{
        FreeNode* newNode=(FreeNode*)((char*)node+sz*MEM_BLOCK_SIZE);
        newNode->size=node->size-sz;
        newNode->next=node->next;
        if (prev) prev->next=newNode;
        else free_list=newNode;
    }
    *(size_t*)node=sz;
    return (void*)((char*)node+MEM_BLOCK_SIZE);
}

int MemUnit::mem_free(void* ptr){
    if (!ptr) return PTR_NULL_ERR;
    FreeNode* node=(FreeNode*)((char*)ptr-MEM_BLOCK_SIZE);
    if (node<HEAP_START_ADDR || node>HEAP_END_ADDR) return ADDR_OUT_OF_BOUNDS_ERR;
    size_t sz=*(size_t*)node;
    if ((char*)node + sz * MEM_BLOCK_SIZE > HEAP_END_ADDR) return ADDR_OUT_OF_BOUNDS_ERR;
    node->size=sz;
    FreeNode* prev=nullptr;
    FreeNode* next=free_list;
    while (next){
        if (next>node) break;
        prev=next;
        next=next->next;
    }
    if (prev) prev->next=node;
    else free_list=node;
    node->next=next;
    if (next && (char*)node+sz*MEM_BLOCK_SIZE==(char*)next) merge_nodes(node,next);
    if (prev && (char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)node) merge_nodes(prev,node);
    ptr=nullptr;
    return 0;

}

void MemUnit::merge_nodes(FreeNode* prev, FreeNode* next){
    prev->next=next->next;
    prev->size+=next->size;
}

bool MemUnit::isFull(){
    if (free_list->next==nullptr && free_list->size==((size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE)) return true;
    return false;
}

void MemUnit::fullFree(){
    free_list = (FreeNode*)HEAP_START_ADDR;
    free_list->size=(size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    free_list->next=nullptr;
}
