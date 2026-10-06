#ifndef OSPROJEKAT_RISCV_HPP
#define OSPROJEKAT_RISCV_HPP
#include "../lib/hw.h"

class RISCV{
public:
    static void popSppSpie();
    static uint64 readSepc();
    static void writeSepc(uint64 sepc);
    static uint64 readSStatus();
    static void writeSStatus(uint64 sstatus);
    static uint64 readScause();
    static uint64 readCode();
    static uint8 readConStatus();
    static uint8 readConRX();
    static void writeConTX(char c);
    static void Halt();
};

#endif //OSPROJEKAT_RISCV_HPP
