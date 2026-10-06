#ifndef OSPROJEKAT_CONSOLE_UNIT_HPP
#define OSPROJEKAT_CONSOLE_UNIT_HPP
#include "../lib/hw.h"
#include "mem_unit.hpp"
#include "riscv.hpp"
#include "_thread.hpp"
#include "_sem.hpp"
const int bufferSize=MEM_BLOCK_SIZE;

class ConsoleUnit{
public:
    static void init();
    static void free();
    static void putOutputBuffer(char c);
    static char getOutputBuffer();
    static void putInputBuffer(char c);
    static char getInputBuffer();
    static void signalInput();
    static void waitInput();
    static void putString(const char* string);
private:
    static char* outputBuffer;
    static _sem* outputCharAvailable;
    static _sem* outputSpaceAvailable;
    static int outputHead;
    static int outputTail;

    static char* inputBuffer;
    static _sem* inputCharAvailable;
    static _sem* inputSpaceAvailable;
    static int inputHead;
    static int inputTail;

    static _sem* mutex;
};

#endif //OSPROJEKAT_CONSOLE_UNIT_HPP
