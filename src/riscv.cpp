#include "../h/riscv.hpp"
void RISCV::popSppSpie(){
    __asm__ __volatile__(
            "csrw sepc,ra\n"
            "sret");
}
uint64 RISCV::readSepc(){
    uint64 sepc;
    __asm__ __volatile__("csrr %0,sepc":"=r"(sepc));
    return sepc;
}

void RISCV::writeSepc(uint64 sepc){
    __asm__ __volatile__("csrw sepc,%0"::"r"(sepc));
}

uint64 RISCV::readSStatus(){
    uint64 sstatus;
    __asm__ __volatile__("csrr %0,sstatus":"=r"(sstatus));
    return sstatus;
}

void RISCV::writeSStatus(uint64 sstatus){
    __asm__ __volatile__("csrw sstatus,%0"::"r"(sstatus));
}

uint64 RISCV::readCode(){
    uint64 code;
    __asm__ __volatile__("mv %0,a0":"=r"(code));
    return code;
}

uint64 RISCV::readScause(){
    uint64 scause;
    __asm__ __volatile__("csrr %0,scause":"=r"(scause));
    return scause;
}

uint8 RISCV::readConRX()
{
    uint8 conRX;
    __asm__ __volatile__(
    "lb %0, 0(%1)"
    :"=r"(conRX): "r"(CONSOLE_RX_DATA));
    return conRX;
}

void RISCV::writeConTX(char c)
{
    __asm__ __volatile__(
    "sb %0, 0(%1)"
    ::"r"(c), "r"(CONSOLE_TX_DATA));
}

uint8 RISCV::readConStatus()
{
    uint8 status;
    __asm__ __volatile__(
    "lb %0, 0(%1)"
    :"=r"(status):"r"(CONSOLE_STATUS));
    return status;
}

void RISCV::Halt(){
    __asm__ __volatile__(
    "li t0, 0x5555\n"
    "li t1, 0x100000\n"
    "sw t0, 0(t1)");
}
