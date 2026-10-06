.global _ZN7_thread6setjmpEPNS_7ContextE
_ZN7_thread6setjmpEPNS_7ContextE:
    addi sp , sp , -232
    .irp index 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, (\index-3)*8 (sp)
    .endr
    sd ra,(a0)
    sd sp,8(a0)
    csrr t0, sstatus
    sd t0, 16(a0)
    csrr t0, sepc
    sd t0, 24(a0)
    li a0,0

    ret

.global _ZN7_thread7longjmpEPNS_7ContextE
_ZN7_thread7longjmpEPNS_7ContextE:
    ld ra,(a0)
    ld sp,8(a0)
    ld t0, 16(a0)
    csrw sstatus, t0
    ld t0, 24(a0)
    csrw sepc, t0
    .irp index 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, (\index-3)*8 (sp)
    .endr
    addi sp , sp , 232
    li a0,1
    ret

.global _ZN7_thread9prepstackEPNS_7ContextE
_ZN7_thread9prepstackEPNS_7ContextE:
    mv t0,sp
    ld sp,8(a0)
    addi sp , sp , -232
    .irp index 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, (\index-3)*8 (sp)
    .endr
    sd sp,8(a0)
    mv sp,t0
    ret

