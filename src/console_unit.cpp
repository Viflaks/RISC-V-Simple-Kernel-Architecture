#include "../h/console_unit.hpp"

void runOutput(void*){
    while (true){
        uint8 status=RISCV::readConStatus();
        while ((status & CONSOLE_TX_STATUS_BIT)!=0){
            char c=ConsoleUnit::getOutputBuffer();
            RISCV::writeConTX(c);
            status=RISCV::readConStatus();
        }
        thread_dispatch();
    }
}
void runInput(void*){
    while (true){
        ConsoleUnit::waitInput();
        uint8 status=RISCV::readConStatus();
        while ((status & CONSOLE_RX_STATUS_BIT)!=0){
            char c=RISCV::readConRX();
            ConsoleUnit::putInputBuffer(c);
            status=RISCV::readConStatus();
        }
        int v=plic_claim();
        plic_complete(v);
        thread_dispatch();
    }
}

char* ConsoleUnit::outputBuffer=nullptr;
_sem* ConsoleUnit::outputCharAvailable=nullptr;
_sem* ConsoleUnit::outputSpaceAvailable=nullptr;
int ConsoleUnit::outputHead=0;
int ConsoleUnit::outputTail=0;

char* ConsoleUnit::inputBuffer=nullptr;
_sem* ConsoleUnit::inputCharAvailable=nullptr;
_sem* ConsoleUnit::inputSpaceAvailable=nullptr;
int ConsoleUnit::inputHead=0;
int ConsoleUnit::inputTail=0;

_sem* ConsoleUnit::mutex=nullptr;

void ConsoleUnit::init(){
    size_t sz=(bufferSize+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    outputBuffer=(char*)MemUnit::mem_alloc(sz);
    for (int i=0;i<64;i++) outputBuffer[i]=51;
    _sem::createSem(&outputCharAvailable,0);
    _sem::createSem(&outputSpaceAvailable,bufferSize);

    inputBuffer=(char*)MemUnit::mem_alloc(sz);
    for (int i=0;i<64;i++) inputBuffer[i]=53;
    _sem::createSem(&inputCharAvailable,0);
    _sem::createSem(&inputSpaceAvailable,bufferSize);

    _sem::createSem(&mutex,0);
}

void ConsoleUnit::free(){
    MemUnit::mem_free(inputBuffer);
    MemUnit::mem_free(outputBuffer);
    _sem::deleteSem(mutex);
    _sem::deleteSem(inputCharAvailable);
    _sem::deleteSem(inputSpaceAvailable);
    _sem::deleteSem(outputCharAvailable);
    _sem::deleteSem(outputSpaceAvailable);

}

void ConsoleUnit::putOutputBuffer(char c){
    _sem::semWait(outputSpaceAvailable,1);
    outputBuffer[outputTail]=c;
    outputTail=(outputTail+1)%bufferSize;
    _sem::semSignal(outputCharAvailable,1);
}

char ConsoleUnit::getOutputBuffer(){
    sem_wait(outputCharAvailable);
    char c=outputBuffer[outputHead];
    outputHead=(outputHead+1)%bufferSize;
    sem_signal(outputSpaceAvailable);
    return c;
}

void ConsoleUnit::putInputBuffer(char c){
    sem_wait(inputSpaceAvailable);
    inputBuffer[inputTail]=c;
    inputTail=(inputTail+1)%bufferSize;
    sem_signal(inputCharAvailable);
}

char ConsoleUnit::getInputBuffer(){
    _sem::semWait(inputCharAvailable,1);
    char c=inputBuffer[inputHead];
    inputHead=(inputHead+1)%bufferSize;
    _sem::semSignal(inputSpaceAvailable,1);
    return c;
}

void ConsoleUnit::signalInput(){
    _sem::semSignal(mutex,1);
}

void ConsoleUnit::waitInput(){
    sem_wait(mutex);
}

void ConsoleUnit::putString(const char* string){
    while (*string!='\0'){
        putOutputBuffer(*string);
        string++;
    }
}
