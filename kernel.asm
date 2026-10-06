
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	d3013103          	ld	sp,-720(sp) # 8000bd30 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	49d060ef          	jal	ra,80006cb8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <InterruptHandler>:
.global InterruptHandler
InterruptHandler:
    addi sp , sp , -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8 (sp)
    .endr
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00213823          	sd	sp,16(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04b13c23          	sd	a1,88(sp)
    8000102c:	06c13023          	sd	a2,96(sp)
    80001030:	06d13423          	sd	a3,104(sp)
    80001034:	06e13823          	sd	a4,112(sp)
    80001038:	06f13c23          	sd	a5,120(sp)
    8000103c:	09013023          	sd	a6,128(sp)
    80001040:	09113423          	sd	a7,136(sp)
    80001044:	09213823          	sd	s2,144(sp)
    80001048:	09313c23          	sd	s3,152(sp)
    8000104c:	0b413023          	sd	s4,160(sp)
    80001050:	0b513423          	sd	s5,168(sp)
    80001054:	0b613823          	sd	s6,176(sp)
    80001058:	0b713c23          	sd	s7,184(sp)
    8000105c:	0d813023          	sd	s8,192(sp)
    80001060:	0d913423          	sd	s9,200(sp)
    80001064:	0da13823          	sd	s10,208(sp)
    80001068:	0db13c23          	sd	s11,216(sp)
    8000106c:	0fc13023          	sd	t3,224(sp)
    80001070:	0fd13423          	sd	t4,232(sp)
    80001074:	0fe13823          	sd	t5,240(sp)
    80001078:	0ff13c23          	sd	t6,248(sp)
    call _Z15handleInterruptv
    8000107c:	6ed000ef          	jal	ra,80001f68 <_Z15handleInterruptv>
    .irp index 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8 (sp)
    .endr
    80001080:	00813083          	ld	ra,8(sp)
    80001084:	01013103          	ld	sp,16(sp)
    80001088:	01813183          	ld	gp,24(sp)
    8000108c:	02013203          	ld	tp,32(sp)
    80001090:	02813283          	ld	t0,40(sp)
    80001094:	03013303          	ld	t1,48(sp)
    80001098:	03813383          	ld	t2,56(sp)
    8000109c:	04013403          	ld	s0,64(sp)
    800010a0:	04813483          	ld	s1,72(sp)
    800010a4:	05813583          	ld	a1,88(sp)
    800010a8:	06013603          	ld	a2,96(sp)
    800010ac:	06813683          	ld	a3,104(sp)
    800010b0:	07013703          	ld	a4,112(sp)
    800010b4:	07813783          	ld	a5,120(sp)
    800010b8:	08013803          	ld	a6,128(sp)
    800010bc:	08813883          	ld	a7,136(sp)
    800010c0:	09013903          	ld	s2,144(sp)
    800010c4:	09813983          	ld	s3,152(sp)
    800010c8:	0a013a03          	ld	s4,160(sp)
    800010cc:	0a813a83          	ld	s5,168(sp)
    800010d0:	0b013b03          	ld	s6,176(sp)
    800010d4:	0b813b83          	ld	s7,184(sp)
    800010d8:	0c013c03          	ld	s8,192(sp)
    800010dc:	0c813c83          	ld	s9,200(sp)
    800010e0:	0d013d03          	ld	s10,208(sp)
    800010e4:	0d813d83          	ld	s11,216(sp)
    800010e8:	0e013e03          	ld	t3,224(sp)
    800010ec:	0e813e83          	ld	t4,232(sp)
    800010f0:	0f013f03          	ld	t5,240(sp)
    800010f4:	0f813f83          	ld	t6,248(sp)
    addi sp , sp , 256
    800010f8:	10010113          	addi	sp,sp,256
    800010fc:	10200073          	sret

0000000080001100 <_ZN7_thread6setjmpEPNS_7ContextE>:
.global _ZN7_thread6setjmpEPNS_7ContextE
_ZN7_thread6setjmpEPNS_7ContextE:
    addi sp , sp , -232
    80001100:	f1810113          	addi	sp,sp,-232
    .irp index 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, (\index-3)*8 (sp)
    .endr
    80001104:	00313023          	sd	gp,0(sp)
    80001108:	00413423          	sd	tp,8(sp)
    8000110c:	00513823          	sd	t0,16(sp)
    80001110:	00613c23          	sd	t1,24(sp)
    80001114:	02713023          	sd	t2,32(sp)
    80001118:	02813423          	sd	s0,40(sp)
    8000111c:	02913823          	sd	s1,48(sp)
    80001120:	04b13023          	sd	a1,64(sp)
    80001124:	04c13423          	sd	a2,72(sp)
    80001128:	04d13823          	sd	a3,80(sp)
    8000112c:	04e13c23          	sd	a4,88(sp)
    80001130:	06f13023          	sd	a5,96(sp)
    80001134:	07013423          	sd	a6,104(sp)
    80001138:	07113823          	sd	a7,112(sp)
    8000113c:	07213c23          	sd	s2,120(sp)
    80001140:	09313023          	sd	s3,128(sp)
    80001144:	09413423          	sd	s4,136(sp)
    80001148:	09513823          	sd	s5,144(sp)
    8000114c:	09613c23          	sd	s6,152(sp)
    80001150:	0b713023          	sd	s7,160(sp)
    80001154:	0b813423          	sd	s8,168(sp)
    80001158:	0b913823          	sd	s9,176(sp)
    8000115c:	0ba13c23          	sd	s10,184(sp)
    80001160:	0db13023          	sd	s11,192(sp)
    80001164:	0dc13423          	sd	t3,200(sp)
    80001168:	0dd13823          	sd	t4,208(sp)
    8000116c:	0de13c23          	sd	t5,216(sp)
    80001170:	0ff13023          	sd	t6,224(sp)
    sd ra,(a0)
    80001174:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp,8(a0)
    80001178:	00253423          	sd	sp,8(a0)
    csrr t0, sstatus
    8000117c:	100022f3          	csrr	t0,sstatus
    sd t0, 16(a0)
    80001180:	00553823          	sd	t0,16(a0)
    csrr t0, sepc
    80001184:	141022f3          	csrr	t0,sepc
    sd t0, 24(a0)
    80001188:	00553c23          	sd	t0,24(a0)
    li a0,0
    8000118c:	00000513          	li	a0,0

    ret
    80001190:	00008067          	ret

0000000080001194 <_ZN7_thread7longjmpEPNS_7ContextE>:

.global _ZN7_thread7longjmpEPNS_7ContextE
_ZN7_thread7longjmpEPNS_7ContextE:
    ld ra,(a0)
    80001194:	00053083          	ld	ra,0(a0)
    ld sp,8(a0)
    80001198:	00853103          	ld	sp,8(a0)
    ld t0, 16(a0)
    8000119c:	01053283          	ld	t0,16(a0)
    csrw sstatus, t0
    800011a0:	10029073          	csrw	sstatus,t0
    ld t0, 24(a0)
    800011a4:	01853283          	ld	t0,24(a0)
    csrw sepc, t0
    800011a8:	14129073          	csrw	sepc,t0
    .irp index 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, (\index-3)*8 (sp)
    .endr
    800011ac:	00013183          	ld	gp,0(sp)
    800011b0:	00813203          	ld	tp,8(sp)
    800011b4:	01013283          	ld	t0,16(sp)
    800011b8:	01813303          	ld	t1,24(sp)
    800011bc:	02013383          	ld	t2,32(sp)
    800011c0:	02813403          	ld	s0,40(sp)
    800011c4:	03013483          	ld	s1,48(sp)
    800011c8:	04013583          	ld	a1,64(sp)
    800011cc:	04813603          	ld	a2,72(sp)
    800011d0:	05013683          	ld	a3,80(sp)
    800011d4:	05813703          	ld	a4,88(sp)
    800011d8:	06013783          	ld	a5,96(sp)
    800011dc:	06813803          	ld	a6,104(sp)
    800011e0:	07013883          	ld	a7,112(sp)
    800011e4:	07813903          	ld	s2,120(sp)
    800011e8:	08013983          	ld	s3,128(sp)
    800011ec:	08813a03          	ld	s4,136(sp)
    800011f0:	09013a83          	ld	s5,144(sp)
    800011f4:	09813b03          	ld	s6,152(sp)
    800011f8:	0a013b83          	ld	s7,160(sp)
    800011fc:	0a813c03          	ld	s8,168(sp)
    80001200:	0b013c83          	ld	s9,176(sp)
    80001204:	0b813d03          	ld	s10,184(sp)
    80001208:	0c013d83          	ld	s11,192(sp)
    8000120c:	0c813e03          	ld	t3,200(sp)
    80001210:	0d013e83          	ld	t4,208(sp)
    80001214:	0d813f03          	ld	t5,216(sp)
    80001218:	0e013f83          	ld	t6,224(sp)
    addi sp , sp , 232
    8000121c:	0e810113          	addi	sp,sp,232
    li a0,1
    80001220:	00100513          	li	a0,1
    ret
    80001224:	00008067          	ret

0000000080001228 <_ZN7_thread9prepstackEPNS_7ContextE>:

.global _ZN7_thread9prepstackEPNS_7ContextE
_ZN7_thread9prepstackEPNS_7ContextE:
    mv t0,sp
    80001228:	00010293          	mv	t0,sp
    ld sp,8(a0)
    8000122c:	00853103          	ld	sp,8(a0)
    addi sp , sp , -232
    80001230:	f1810113          	addi	sp,sp,-232
    .irp index 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, (\index-3)*8 (sp)
    .endr
    80001234:	00313023          	sd	gp,0(sp)
    80001238:	00413423          	sd	tp,8(sp)
    8000123c:	00513823          	sd	t0,16(sp)
    80001240:	00613c23          	sd	t1,24(sp)
    80001244:	02713023          	sd	t2,32(sp)
    80001248:	02813423          	sd	s0,40(sp)
    8000124c:	02913823          	sd	s1,48(sp)
    80001250:	04b13023          	sd	a1,64(sp)
    80001254:	04c13423          	sd	a2,72(sp)
    80001258:	04d13823          	sd	a3,80(sp)
    8000125c:	04e13c23          	sd	a4,88(sp)
    80001260:	06f13023          	sd	a5,96(sp)
    80001264:	07013423          	sd	a6,104(sp)
    80001268:	07113823          	sd	a7,112(sp)
    8000126c:	07213c23          	sd	s2,120(sp)
    80001270:	09313023          	sd	s3,128(sp)
    80001274:	09413423          	sd	s4,136(sp)
    80001278:	09513823          	sd	s5,144(sp)
    8000127c:	09613c23          	sd	s6,152(sp)
    80001280:	0b713023          	sd	s7,160(sp)
    80001284:	0b813423          	sd	s8,168(sp)
    80001288:	0b913823          	sd	s9,176(sp)
    8000128c:	0ba13c23          	sd	s10,184(sp)
    80001290:	0db13023          	sd	s11,192(sp)
    80001294:	0dc13423          	sd	t3,200(sp)
    80001298:	0dd13823          	sd	t4,208(sp)
    8000129c:	0de13c23          	sd	t5,216(sp)
    800012a0:	0ff13023          	sd	t6,224(sp)
    sd sp,8(a0)
    800012a4:	00253423          	sd	sp,8(a0)
    mv sp,t0
    800012a8:	00028113          	mv	sp,t0
    ret
    800012ac:	00008067          	ret

00000000800012b0 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800012b0:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800012b4:	00b29a63          	bne	t0,a1,800012c8 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    800012b8:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    800012bc:	fe029ae3          	bnez	t0,800012b0 <copy_and_swap>
    li a0, 0               # Set return to success.
    800012c0:	00000513          	li	a0,0
    jr ra                  # Return.
    800012c4:	00008067          	ret

00000000800012c8 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    800012c8:	00100513          	li	a0,1
    800012cc:	00008067          	ret

00000000800012d0 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
int u=0;
void* mem_alloc (size_t size){
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00813423          	sd	s0,8(sp)
    800012d8:	01010413          	addi	s0,sp,16
    size_t sz=(size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800012dc:	03f50793          	addi	a5,a0,63
    800012e0:	0067d793          	srli	a5,a5,0x6
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (sz)
        :"a0","a1");
    800012e4:	00100513          	li	a0,1
    800012e8:	00078593          	mv	a1,a5
    800012ec:	00000073          	ecall
    800012f0:	00050793          	mv	a5,a0
    return retVal;
};
    800012f4:	00078513          	mv	a0,a5
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z8mem_freePv>:

int mem_free (void* ptr){
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    80001310:	00050793          	mv	a5,a0
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (ptr)
        :"a0","a1");
    80001314:	00200513          	li	a0,2
    80001318:	00078593          	mv	a1,a5
    8000131c:	00000073          	ecall
    80001320:	00050793          	mv	a5,a0
    return retVal;
};
    80001324:	0007851b          	sext.w	a0,a5
    80001328:	00813403          	ld	s0,8(sp)
    8000132c:	01010113          	addi	sp,sp,16
    80001330:	00008067          	ret

0000000080001334 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (thread_t* handle,void(*start_routine)(void*),void* arg){
    80001334:	fd010113          	addi	sp,sp,-48
    80001338:	02113423          	sd	ra,40(sp)
    8000133c:	02813023          	sd	s0,32(sp)
    80001340:	00913c23          	sd	s1,24(sp)
    80001344:	01213823          	sd	s2,16(sp)
    80001348:	01313423          	sd	s3,8(sp)
    8000134c:	03010413          	addi	s0,sp,48
    80001350:	00050493          	mv	s1,a0
    80001354:	00058913          	mv	s2,a1
    80001358:	00060993          	mv	s3,a2
    int retVal;
    void* stack=mem_alloc(DEFAULT_STACK_SIZE);
    8000135c:	00001537          	lui	a0,0x1
    80001360:	00000097          	auipc	ra,0x0
    80001364:	f70080e7          	jalr	-144(ra) # 800012d0 <_Z9mem_allocm>
    80001368:	00050793          	mv	a5,a0
        "mv a4, %4\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (handle),"r"(start_routine),"r"(arg),"r"(stack)
        :"a0","a1","a2","a3","a4");
    8000136c:	01100513          	li	a0,17
    80001370:	00048593          	mv	a1,s1
    80001374:	00090613          	mv	a2,s2
    80001378:	00098693          	mv	a3,s3
    8000137c:	00078713          	mv	a4,a5
    80001380:	00000073          	ecall
    80001384:	00050493          	mv	s1,a0
    return retVal;
}
    80001388:	0004851b          	sext.w	a0,s1
    8000138c:	02813083          	ld	ra,40(sp)
    80001390:	02013403          	ld	s0,32(sp)
    80001394:	01813483          	ld	s1,24(sp)
    80001398:	01013903          	ld	s2,16(sp)
    8000139c:	00813983          	ld	s3,8(sp)
    800013a0:	03010113          	addi	sp,sp,48
    800013a4:	00008067          	ret

00000000800013a8 <_Z11thread_exitv>:

int thread_exit (){
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
        "li a0, 0x12\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :
        :"a0");
    800013b4:	01200513          	li	a0,18
    800013b8:	00000073          	ecall
    800013bc:	00050793          	mv	a5,a0
    return retVal;
}
    800013c0:	0007851b          	sext.w	a0,a5
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret

00000000800013d0 <_Z15thread_dispatchv>:

void thread_dispatch (){
    800013d0:	ff010113          	addi	sp,sp,-16
    800013d4:	00813423          	sd	s0,8(sp)
    800013d8:	01010413          	addi	s0,sp,16
    __asm__ __volatile__(
        "li a0, 0x13\n"
        "ecall\n"
        :
        :
        :"a0");
    800013dc:	01300513          	li	a0,19
    800013e0:	00000073          	ecall
}
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_Z8sem_openPP4_semj>:



int sem_open (sem_t* handle,unsigned init){
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    800013fc:	00050793          	mv	a5,a0
    80001400:	00058713          	mv	a4,a1
        "mv a2, %2\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (handle),"r"(init)
        :"a0","a1","a2");
    80001404:	02100513          	li	a0,33
    80001408:	00078593          	mv	a1,a5
    8000140c:	00070613          	mv	a2,a4
    80001410:	00000073          	ecall
    80001414:	00050793          	mv	a5,a0
    return retVal;
}
    80001418:	0007851b          	sext.w	a0,a5
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle){
    80001428:	ff010113          	addi	sp,sp,-16
    8000142c:	00813423          	sd	s0,8(sp)
    80001430:	01010413          	addi	s0,sp,16
    80001434:	00050793          	mv	a5,a0
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (handle)
        :"a0","a1");
    80001438:	02200513          	li	a0,34
    8000143c:	00078593          	mv	a1,a5
    80001440:	00000073          	ecall
    80001444:	00050793          	mv	a5,a0
    return retVal;
}
    80001448:	0007851b          	sext.w	a0,a5
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id){
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    80001464:	00050793          	mv	a5,a0
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id)
        :"a0","a1");
    80001468:	02300513          	li	a0,35
    8000146c:	00078593          	mv	a1,a5
    80001470:	00000073          	ecall
    80001474:	00050793          	mv	a5,a0
    return retVal;
}
    80001478:	0007851b          	sext.w	a0,a5
    8000147c:	00813403          	ld	s0,8(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id){
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00813423          	sd	s0,8(sp)
    80001490:	01010413          	addi	s0,sp,16
    80001494:	00050793          	mv	a5,a0
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id)
        :"a0","a1");
    80001498:	02400513          	li	a0,36
    8000149c:	00078593          	mv	a1,a5
    800014a0:	00000073          	ecall
    800014a4:	00050793          	mv	a5,a0
    return retVal;
}
    800014a8:	0007851b          	sext.w	a0,a5
    800014ac:	00813403          	ld	s0,8(sp)
    800014b0:	01010113          	addi	sp,sp,16
    800014b4:	00008067          	ret

00000000800014b8 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id,unsigned n){
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    800014c4:	00050793          	mv	a5,a0
    800014c8:	00058713          	mv	a4,a1
        "mv a2, %2\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id),"r"(n)
        :"a0","a1","a2");
    800014cc:	02500513          	li	a0,37
    800014d0:	00078593          	mv	a1,a5
    800014d4:	00070613          	mv	a2,a4
    800014d8:	00000073          	ecall
    800014dc:	00050793          	mv	a5,a0
    return retVal;
}
    800014e0:	0007851b          	sext.w	a0,a5
    800014e4:	00813403          	ld	s0,8(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z12sem_signal_nP4_semj>:
int sem_signal_n(sem_t id,unsigned n){
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00813423          	sd	s0,8(sp)
    800014f8:	01010413          	addi	s0,sp,16
    800014fc:	00050793          	mv	a5,a0
    80001500:	00058713          	mv	a4,a1
        "mv a2, %2\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (id),"r"(n)
        :"a0","a1","a2");
    80001504:	02600513          	li	a0,38
    80001508:	00078593          	mv	a1,a5
    8000150c:	00070613          	mv	a2,a4
    80001510:	00000073          	ecall
    80001514:	00050793          	mv	a5,a0
    return retVal;
}
    80001518:	0007851b          	sext.w	a0,a5
    8000151c:	00813403          	ld	s0,8(sp)
    80001520:	01010113          	addi	sp,sp,16
    80001524:	00008067          	ret

0000000080001528 <_Z10time_sleepm>:
int time_sleep(time_t time){
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00813423          	sd	s0,8(sp)
    80001530:	01010413          	addi	s0,sp,16
    80001534:	00050793          	mv	a5,a0
        "mv a1, %1\n"
        "ecall\n"
        "mv %0,a0"
        :"=r"(retVal)
        :"r" (time)
        :"a0","a1");
    80001538:	03100513          	li	a0,49
    8000153c:	00078593          	mv	a1,a5
    80001540:	00000073          	ecall
    80001544:	00050793          	mv	a5,a0
    return retVal;
}
    80001548:	0007851b          	sext.w	a0,a5
    8000154c:	00813403          	ld	s0,8(sp)
    80001550:	01010113          	addi	sp,sp,16
    80001554:	00008067          	ret

0000000080001558 <_Z4getcv>:

char getc(){
    80001558:	ff010113          	addi	sp,sp,-16
    8000155c:	00813423          	sd	s0,8(sp)
    80001560:	01010413          	addi	s0,sp,16
    __asm__ __volatile__(
        "li a0, 0x41\n"
        "ecall\n"
        "mv %0,a0"
        :"=r" (c)
        ::"a0");
    80001564:	04100513          	li	a0,65
    80001568:	00000073          	ecall
    8000156c:	00050793          	mv	a5,a0
    return c;
}
    80001570:	0ff7f513          	andi	a0,a5,255
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_Z4putcc>:
void putc (char c){
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00813423          	sd	s0,8(sp)
    80001588:	01010413          	addi	s0,sp,16
    8000158c:	00050793          	mv	a5,a0
    __asm__ __volatile__(
        "li a0, 0x42\n"
        "mv a1, %0\n"
        "ecall\n"
        ::"r" (c)
        :"a0","a1");
    80001590:	04200513          	li	a0,66
    80001594:	00078593          	mv	a1,a5
    80001598:	00000073          	ecall
}
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_Z7runIdlePv>:
_thread* _thread::mainThread=nullptr;
_thread* _thread::outputConsoleThread=nullptr;
_thread* _thread::inputConsoleThread=nullptr;
time_t _thread::timeSliceCurr=0;

void runIdle(void*){
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00113423          	sd	ra,8(sp)
    800015b0:	00813023          	sd	s0,0(sp)
    800015b4:	01010413          	addi	s0,sp,16
    while (true){
        __asm__ __volatile__("wfi");
    800015b8:	10500073          	wfi
        thread_dispatch();
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	e14080e7          	jalr	-492(ra) # 800013d0 <_Z15thread_dispatchv>
    while (true){
    800015c4:	ff5ff06f          	j	800015b8 <_Z7runIdlePv+0x10>

00000000800015c8 <_ZN7_thread11runUserMainEv>:
    }
}

void _thread::runUserMain(){
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00113423          	sd	ra,8(sp)
    800015d0:	00813023          	sd	s0,0(sp)
    800015d4:	01010413          	addi	s0,sp,16
    RISCV::popSppSpie();
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	f90080e7          	jalr	-112(ra) # 80002568 <_ZN5RISCV10popSppSpieEv>
    userMain();
    800015e0:	00005097          	auipc	ra,0x5
    800015e4:	b50080e7          	jalr	-1200(ra) # 80006130 <_Z8userMainv>
    thread_dispatch();
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	de8080e7          	jalr	-536(ra) # 800013d0 <_Z15thread_dispatchv>
    thread_exit();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	db8080e7          	jalr	-584(ra) # 800013a8 <_Z11thread_exitv>
}
    800015f8:	00813083          	ld	ra,8(sp)
    800015fc:	00013403          	ld	s0,0(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_ZN7_thread9runThreadEv>:

void _thread::runThread(){
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00113423          	sd	ra,8(sp)
    80001610:	00813023          	sd	s0,0(sp)
    80001614:	01010413          	addi	s0,sp,16
    RISCV::popSppSpie();
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	f50080e7          	jalr	-176(ra) # 80002568 <_ZN5RISCV10popSppSpieEv>
    running->body(running->arg);
    80001620:	0000a797          	auipc	a5,0xa
    80001624:	7787b783          	ld	a5,1912(a5) # 8000bd98 <_ZN7_thread7runningE>
    80001628:	0007b703          	ld	a4,0(a5)
    8000162c:	0087b503          	ld	a0,8(a5)
    80001630:	000700e7          	jalr	a4
    thread_exit();
    80001634:	00000097          	auipc	ra,0x0
    80001638:	d74080e7          	jalr	-652(ra) # 800013a8 <_Z11thread_exitv>
}
    8000163c:	00813083          	ld	ra,8(sp)
    80001640:	00013403          	ld	s0,0(sp)
    80001644:	01010113          	addi	sp,sp,16
    80001648:	00008067          	ret

000000008000164c <_ZN7_thread13SetMainThreadEv>:
        else running=Scheduler::get();
        longjmp(&running->context);
    }
}

void _thread::SetMainThread(){
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    running=(_thread*)MemUnit::mem_alloc(blocks);
    8000165c:	00200513          	li	a0,2
    80001660:	00002097          	auipc	ra,0x2
    80001664:	cfc080e7          	jalr	-772(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80001668:	0000a717          	auipc	a4,0xa
    8000166c:	73070713          	addi	a4,a4,1840 # 8000bd98 <_ZN7_thread7runningE>
    80001670:	00a73023          	sd	a0,0(a4)
    running->body=nullptr;
    80001674:	00053023          	sd	zero,0(a0) # 1000 <_entry-0x7ffff000>
    running->arg=nullptr;
    80001678:	00073783          	ld	a5,0(a4)
    8000167c:	0007b423          	sd	zero,8(a5)
    running->stack=nullptr;
    80001680:	0007b823          	sd	zero,16(a5)
    running->finished=true;
    80001684:	00100693          	li	a3,1
    80001688:	04d78023          	sb	a3,64(a5)
    running->suspended=false;
    8000168c:	040780a3          	sb	zero,65(a5)
    running->timeslice=DEFAULT_TIME_SLICE;
    80001690:	00200693          	li	a3,2
    80001694:	00d7bc23          	sd	a3,24(a5)
    mainThread=running;
    80001698:	00f73423          	sd	a5,8(a4)
}
    8000169c:	00813083          	ld	ra,8(sp)
    800016a0:	00013403          	ld	s0,0(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN7_thread17SetUserMainThreadEv>:
    void* stackSpace=MemUnit::mem_alloc(sz);
    createThread(&outputConsoleThread,runOutput,nullptr,stackSpace);
    outputConsoleThread->context.sstatus=256;
}

void _thread::SetUserMainThread(){
    800016ac:	fe010113          	addi	sp,sp,-32
    800016b0:	00113c23          	sd	ra,24(sp)
    800016b4:	00813823          	sd	s0,16(sp)
    800016b8:	00913423          	sd	s1,8(sp)
    800016bc:	01213023          	sd	s2,0(sp)
    800016c0:	02010413          	addi	s0,sp,32
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    userMainThread=(_thread*)MemUnit::mem_alloc(blocks);
    800016c4:	00200513          	li	a0,2
    800016c8:	00002097          	auipc	ra,0x2
    800016cc:	c94080e7          	jalr	-876(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    800016d0:	0000a497          	auipc	s1,0xa
    800016d4:	6c848493          	addi	s1,s1,1736 # 8000bd98 <_ZN7_thread7runningE>
    800016d8:	00a4b823          	sd	a0,16(s1)
    userMainThread->body=nullptr;
    800016dc:	00053023          	sd	zero,0(a0)
    userMainThread->arg=nullptr;
    800016e0:	0104b903          	ld	s2,16(s1)
    800016e4:	00093423          	sd	zero,8(s2)
    size_t sz=DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE;
    userMainThread->stack=(uint64*)MemUnit::mem_alloc(sz);
    800016e8:	04000513          	li	a0,64
    800016ec:	00002097          	auipc	ra,0x2
    800016f0:	c70080e7          	jalr	-912(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    800016f4:	00a93823          	sd	a0,16(s2)
    userMainThread->finished=false;
    800016f8:	0104b503          	ld	a0,16(s1)
    800016fc:	04050023          	sb	zero,64(a0)
    userMainThread->suspended=false;
    80001700:	040500a3          	sb	zero,65(a0)
    userMainThread->context.ra=(uint64)runUserMain;
    80001704:	00000797          	auipc	a5,0x0
    80001708:	ec478793          	addi	a5,a5,-316 # 800015c8 <_ZN7_thread11runUserMainEv>
    8000170c:	02f53023          	sd	a5,32(a0)
    userMainThread->context.sp=(uint64)userMainThread->stack+DEFAULT_STACK_SIZE;
    80001710:	01053783          	ld	a5,16(a0)
    80001714:	00001737          	lui	a4,0x1
    80001718:	00e787b3          	add	a5,a5,a4
    8000171c:	02f53423          	sd	a5,40(a0)
    userMainThread->context.sstatus=32;
    80001720:	02000793          	li	a5,32
    80001724:	02f53823          	sd	a5,48(a0)
    userMainThread->timeslice=DEFAULT_TIME_SLICE;
    80001728:	00200793          	li	a5,2
    8000172c:	00f53c23          	sd	a5,24(a0)
    prepstack(&userMainThread->context);
    80001730:	02050513          	addi	a0,a0,32
    80001734:	00000097          	auipc	ra,0x0
    80001738:	af4080e7          	jalr	-1292(ra) # 80001228 <_ZN7_thread9prepstackEPNS_7ContextE>
    Scheduler::put(userMainThread);
    8000173c:	0104b503          	ld	a0,16(s1)
    80001740:	00001097          	auipc	ra,0x1
    80001744:	788080e7          	jalr	1928(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
}
    80001748:	01813083          	ld	ra,24(sp)
    8000174c:	01013403          	ld	s0,16(sp)
    80001750:	00813483          	ld	s1,8(sp)
    80001754:	00013903          	ld	s2,0(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret

0000000080001760 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_>:

int _thread::createThread(_thread** thread,Body body,void* arg,void* stackSpace){
    if (!stackSpace) return NO_MEM;
    80001760:	0e068463          	beqz	a3,80001848 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_+0xe8>
int _thread::createThread(_thread** thread,Body body,void* arg,void* stackSpace){
    80001764:	fd010113          	addi	sp,sp,-48
    80001768:	02113423          	sd	ra,40(sp)
    8000176c:	02813023          	sd	s0,32(sp)
    80001770:	00913c23          	sd	s1,24(sp)
    80001774:	01213823          	sd	s2,16(sp)
    80001778:	01313423          	sd	s3,8(sp)
    8000177c:	01413023          	sd	s4,0(sp)
    80001780:	03010413          	addi	s0,sp,48
    80001784:	00050493          	mv	s1,a0
    80001788:	00058a13          	mv	s4,a1
    8000178c:	00060993          	mv	s3,a2
    80001790:	00068913          	mv	s2,a3
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    *thread=(_thread*)MemUnit::mem_alloc(blocks);
    80001794:	00200513          	li	a0,2
    80001798:	00002097          	auipc	ra,0x2
    8000179c:	bc4080e7          	jalr	-1084(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    800017a0:	00a4b023          	sd	a0,0(s1)
    if (!*thread) return NO_MEM;
    800017a4:	0a050663          	beqz	a0,80001850 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_+0xf0>
    (*thread)->body=body;
    800017a8:	01453023          	sd	s4,0(a0)
    (*thread)->arg=arg;
    800017ac:	0004b783          	ld	a5,0(s1)
    800017b0:	0137b423          	sd	s3,8(a5)
    (*thread)->stack=(uint64*)stackSpace;
    800017b4:	0004b783          	ld	a5,0(s1)
    800017b8:	0127b823          	sd	s2,16(a5)
    (*thread)->finished=false;
    800017bc:	0004b783          	ld	a5,0(s1)
    800017c0:	04078023          	sb	zero,64(a5)
    (*thread)->suspended=false;
    800017c4:	0004b783          	ld	a5,0(s1)
    800017c8:	040780a3          	sb	zero,65(a5)
    (*thread)->context.ra=(uint64)runThread;
    800017cc:	0004b783          	ld	a5,0(s1)
    800017d0:	00000717          	auipc	a4,0x0
    800017d4:	e3870713          	addi	a4,a4,-456 # 80001608 <_ZN7_thread9runThreadEv>
    800017d8:	02e7b023          	sd	a4,32(a5)
    (*thread)->context.sp=(uint64)(*thread)->stack+DEFAULT_STACK_SIZE;
    800017dc:	0004b703          	ld	a4,0(s1)
    800017e0:	01073783          	ld	a5,16(a4)
    800017e4:	000016b7          	lui	a3,0x1
    800017e8:	00d787b3          	add	a5,a5,a3
    800017ec:	02f73423          	sd	a5,40(a4)
    (*thread)->context.sstatus=32;
    800017f0:	0004b783          	ld	a5,0(s1)
    800017f4:	02000713          	li	a4,32
    800017f8:	02e7b823          	sd	a4,48(a5)
    (*thread)->timeslice=DEFAULT_TIME_SLICE;
    800017fc:	0004b783          	ld	a5,0(s1)
    80001800:	00200713          	li	a4,2
    80001804:	00e7bc23          	sd	a4,24(a5)
    prepstack(&(*thread)->context);
    80001808:	0004b503          	ld	a0,0(s1)
    8000180c:	02050513          	addi	a0,a0,32
    80001810:	00000097          	auipc	ra,0x0
    80001814:	a18080e7          	jalr	-1512(ra) # 80001228 <_ZN7_thread9prepstackEPNS_7ContextE>
    Scheduler::put(*thread);
    80001818:	0004b503          	ld	a0,0(s1)
    8000181c:	00001097          	auipc	ra,0x1
    80001820:	6ac080e7          	jalr	1708(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    return 0;
    80001824:	00000513          	li	a0,0
}
    80001828:	02813083          	ld	ra,40(sp)
    8000182c:	02013403          	ld	s0,32(sp)
    80001830:	01813483          	ld	s1,24(sp)
    80001834:	01013903          	ld	s2,16(sp)
    80001838:	00813983          	ld	s3,8(sp)
    8000183c:	00013a03          	ld	s4,0(sp)
    80001840:	03010113          	addi	sp,sp,48
    80001844:	00008067          	ret
    if (!stackSpace) return NO_MEM;
    80001848:	fff00513          	li	a0,-1
}
    8000184c:	00008067          	ret
    if (!*thread) return NO_MEM;
    80001850:	fff00513          	li	a0,-1
    80001854:	fd5ff06f          	j	80001828 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_+0xc8>

0000000080001858 <_ZN7_thread14SetInputThreadEv>:
void _thread::SetInputThread(){
    80001858:	ff010113          	addi	sp,sp,-16
    8000185c:	00113423          	sd	ra,8(sp)
    80001860:	00813023          	sd	s0,0(sp)
    80001864:	01010413          	addi	s0,sp,16
    void* stackSpace=MemUnit::mem_alloc(sz);
    80001868:	04000513          	li	a0,64
    8000186c:	00002097          	auipc	ra,0x2
    80001870:	af0080e7          	jalr	-1296(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80001874:	00050693          	mv	a3,a0
    createThread(&inputConsoleThread,runInput,nullptr,stackSpace);
    80001878:	00000613          	li	a2,0
    8000187c:	0000a597          	auipc	a1,0xa
    80001880:	4a45b583          	ld	a1,1188(a1) # 8000bd20 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001884:	0000a517          	auipc	a0,0xa
    80001888:	52c50513          	addi	a0,a0,1324 # 8000bdb0 <_ZN7_thread18inputConsoleThreadE>
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	ed4080e7          	jalr	-300(ra) # 80001760 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_>
    inputConsoleThread->context.sstatus=256;
    80001894:	0000a797          	auipc	a5,0xa
    80001898:	51c7b783          	ld	a5,1308(a5) # 8000bdb0 <_ZN7_thread18inputConsoleThreadE>
    8000189c:	10000713          	li	a4,256
    800018a0:	02e7b823          	sd	a4,48(a5)
}
    800018a4:	00813083          	ld	ra,8(sp)
    800018a8:	00013403          	ld	s0,0(sp)
    800018ac:	01010113          	addi	sp,sp,16
    800018b0:	00008067          	ret

00000000800018b4 <_ZN7_thread15SetOutputThreadEv>:
void _thread::SetOutputThread(){
    800018b4:	ff010113          	addi	sp,sp,-16
    800018b8:	00113423          	sd	ra,8(sp)
    800018bc:	00813023          	sd	s0,0(sp)
    800018c0:	01010413          	addi	s0,sp,16
    void* stackSpace=MemUnit::mem_alloc(sz);
    800018c4:	04000513          	li	a0,64
    800018c8:	00002097          	auipc	ra,0x2
    800018cc:	a94080e7          	jalr	-1388(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    800018d0:	00050693          	mv	a3,a0
    createThread(&outputConsoleThread,runOutput,nullptr,stackSpace);
    800018d4:	00000613          	li	a2,0
    800018d8:	0000a597          	auipc	a1,0xa
    800018dc:	4205b583          	ld	a1,1056(a1) # 8000bcf8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018e0:	0000a517          	auipc	a0,0xa
    800018e4:	4d850513          	addi	a0,a0,1240 # 8000bdb8 <_ZN7_thread19outputConsoleThreadE>
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	e78080e7          	jalr	-392(ra) # 80001760 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_>
    outputConsoleThread->context.sstatus=256;
    800018f0:	0000a797          	auipc	a5,0xa
    800018f4:	4c87b783          	ld	a5,1224(a5) # 8000bdb8 <_ZN7_thread19outputConsoleThreadE>
    800018f8:	10000713          	li	a4,256
    800018fc:	02e7b823          	sd	a4,48(a5)
}
    80001900:	00813083          	ld	ra,8(sp)
    80001904:	00013403          	ld	s0,0(sp)
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret

0000000080001910 <_ZN7_thread13SetIdleThreadEv>:

void _thread::SetIdleThread(){
    80001910:	fe010113          	addi	sp,sp,-32
    80001914:	00113c23          	sd	ra,24(sp)
    80001918:	00813823          	sd	s0,16(sp)
    8000191c:	00913423          	sd	s1,8(sp)
    80001920:	01213023          	sd	s2,0(sp)
    80001924:	02010413          	addi	s0,sp,32
    size_t blocks=(sizeof(_thread)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    idle=(_thread*)MemUnit::mem_alloc(blocks);
    80001928:	00200513          	li	a0,2
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	a30080e7          	jalr	-1488(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80001934:	0000a497          	auipc	s1,0xa
    80001938:	46448493          	addi	s1,s1,1124 # 8000bd98 <_ZN7_thread7runningE>
    8000193c:	02a4b423          	sd	a0,40(s1)
    idle->body=runIdle;
    80001940:	00000797          	auipc	a5,0x0
    80001944:	c6878793          	addi	a5,a5,-920 # 800015a8 <_Z7runIdlePv>
    80001948:	00f53023          	sd	a5,0(a0)
    idle->arg=nullptr;
    8000194c:	0284b903          	ld	s2,40(s1)
    80001950:	00093423          	sd	zero,8(s2)
    size_t sz=DEFAULT_STACK_SIZE/MEM_BLOCK_SIZE;
    idle->stack=(uint64*)MemUnit::mem_alloc(sz);
    80001954:	04000513          	li	a0,64
    80001958:	00002097          	auipc	ra,0x2
    8000195c:	a04080e7          	jalr	-1532(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80001960:	00a93823          	sd	a0,16(s2)
    idle->finished=true;
    80001964:	0284b503          	ld	a0,40(s1)
    80001968:	00100793          	li	a5,1
    8000196c:	04f50023          	sb	a5,64(a0)
    idle->suspended=false;
    80001970:	040500a3          	sb	zero,65(a0)
    idle->context.ra=(uint64)runThread;
    80001974:	00000797          	auipc	a5,0x0
    80001978:	c9478793          	addi	a5,a5,-876 # 80001608 <_ZN7_thread9runThreadEv>
    8000197c:	02f53023          	sd	a5,32(a0)
    idle->context.sp=(uint64)idle->stack+DEFAULT_STACK_SIZE;
    80001980:	01053783          	ld	a5,16(a0)
    80001984:	00001737          	lui	a4,0x1
    80001988:	00e787b3          	add	a5,a5,a4
    8000198c:	02f53423          	sd	a5,40(a0)
    idle->context.sstatus=288;
    80001990:	12000793          	li	a5,288
    80001994:	02f53823          	sd	a5,48(a0)
    idle->timeslice=DEFAULT_TIME_SLICE;
    80001998:	00200793          	li	a5,2
    8000199c:	00f53c23          	sd	a5,24(a0)
    prepstack(&idle->context);
    800019a0:	02050513          	addi	a0,a0,32
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	884080e7          	jalr	-1916(ra) # 80001228 <_ZN7_thread9prepstackEPNS_7ContextE>
}
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	00013903          	ld	s2,0(sp)
    800019bc:	02010113          	addi	sp,sp,32
    800019c0:	00008067          	ret

00000000800019c4 <_ZN7_thread12incTimeSliceEv>:
    }
    longjmp(&running->context);
    return status;
}

void _thread::incTimeSlice(){
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00813423          	sd	s0,8(sp)
    800019cc:	01010413          	addi	s0,sp,16
    timeSliceCurr++;
    800019d0:	0000a717          	auipc	a4,0xa
    800019d4:	3c870713          	addi	a4,a4,968 # 8000bd98 <_ZN7_thread7runningE>
    800019d8:	03073783          	ld	a5,48(a4)
    800019dc:	00178793          	addi	a5,a5,1
    800019e0:	02f73823          	sd	a5,48(a4)
}
    800019e4:	00813403          	ld	s0,8(sp)
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret

00000000800019f0 <_ZN7_thread10timeRunOutEv>:

bool _thread::timeRunOut(){
    800019f0:	ff010113          	addi	sp,sp,-16
    800019f4:	00813423          	sd	s0,8(sp)
    800019f8:	01010413          	addi	s0,sp,16
    return running->timeslice==timeSliceCurr;
    800019fc:	0000a797          	auipc	a5,0xa
    80001a00:	39c78793          	addi	a5,a5,924 # 8000bd98 <_ZN7_thread7runningE>
    80001a04:	0007b703          	ld	a4,0(a5)
    80001a08:	01873503          	ld	a0,24(a4)
    80001a0c:	0307b783          	ld	a5,48(a5)
    80001a10:	40f50533          	sub	a0,a0,a5
}
    80001a14:	00153513          	seqz	a0,a0
    80001a18:	00813403          	ld	s0,8(sp)
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret

0000000080001a24 <_ZN7_thread14resetTimeSliceEv>:

void _thread::resetTimeSlice(){
    80001a24:	ff010113          	addi	sp,sp,-16
    80001a28:	00813423          	sd	s0,8(sp)
    80001a2c:	01010413          	addi	s0,sp,16
    timeSliceCurr=0;
    80001a30:	0000a797          	auipc	a5,0xa
    80001a34:	3807bc23          	sd	zero,920(a5) # 8000bdc8 <_ZN7_thread13timeSliceCurrE>
}
    80001a38:	00813403          	ld	s0,8(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <_ZN7_thread5yieldEv>:
void _thread::yield(){
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00113423          	sd	ra,8(sp)
    80001a4c:	00813023          	sd	s0,0(sp)
    80001a50:	01010413          	addi	s0,sp,16
    if (setjmp(&running->context)==0){
    80001a54:	0000a517          	auipc	a0,0xa
    80001a58:	34453503          	ld	a0,836(a0) # 8000bd98 <_ZN7_thread7runningE>
    80001a5c:	02050513          	addi	a0,a0,32
    80001a60:	fffff097          	auipc	ra,0xfffff
    80001a64:	6a0080e7          	jalr	1696(ra) # 80001100 <_ZN7_thread6setjmpEPNS_7ContextE>
    80001a68:	00050a63          	beqz	a0,80001a7c <_ZN7_thread5yieldEv+0x38>
}
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret
        resetTimeSlice();
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	fa8080e7          	jalr	-88(ra) # 80001a24 <_ZN7_thread14resetTimeSliceEv>
        if (Scheduler::isEmpty()) running=idle;
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	518080e7          	jalr	1304(ra) # 80002f9c <_ZN9Scheduler7isEmptyEv>
    80001a8c:	02050663          	beqz	a0,80001ab8 <_ZN7_thread5yieldEv+0x74>
    80001a90:	0000a797          	auipc	a5,0xa
    80001a94:	30878793          	addi	a5,a5,776 # 8000bd98 <_ZN7_thread7runningE>
    80001a98:	0287b703          	ld	a4,40(a5)
    80001a9c:	00e7b023          	sd	a4,0(a5)
        longjmp(&running->context);
    80001aa0:	0000a517          	auipc	a0,0xa
    80001aa4:	2f853503          	ld	a0,760(a0) # 8000bd98 <_ZN7_thread7runningE>
    80001aa8:	02050513          	addi	a0,a0,32
    80001aac:	fffff097          	auipc	ra,0xfffff
    80001ab0:	6e8080e7          	jalr	1768(ra) # 80001194 <_ZN7_thread7longjmpEPNS_7ContextE>
}
    80001ab4:	fb9ff06f          	j	80001a6c <_ZN7_thread5yieldEv+0x28>
        else running=Scheduler::get();
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	47c080e7          	jalr	1148(ra) # 80002f34 <_ZN9Scheduler3getEv>
    80001ac0:	0000a797          	auipc	a5,0xa
    80001ac4:	2ca7bc23          	sd	a0,728(a5) # 8000bd98 <_ZN7_thread7runningE>
    80001ac8:	fd9ff06f          	j	80001aa0 <_ZN7_thread5yieldEv+0x5c>

0000000080001acc <_ZN7_thread8dispatchEv>:
void _thread::dispatch(){
    80001acc:	ff010113          	addi	sp,sp,-16
    80001ad0:	00113423          	sd	ra,8(sp)
    80001ad4:	00813023          	sd	s0,0(sp)
    80001ad8:	01010413          	addi	s0,sp,16
    if (!running->isFinished()) Scheduler::put(running);
    80001adc:	0000a517          	auipc	a0,0xa
    80001ae0:	2bc53503          	ld	a0,700(a0) # 8000bd98 <_ZN7_thread7runningE>
        uint64 ra;
        uint64 sp;
        uint64 sstatus;
        uint64 sepc;
    };
    bool isFinished(){return finished;}
    80001ae4:	04054783          	lbu	a5,64(a0)
    80001ae8:	00078e63          	beqz	a5,80001b04 <_ZN7_thread8dispatchEv+0x38>
    yield();
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	f58080e7          	jalr	-168(ra) # 80001a44 <_ZN7_thread5yieldEv>
}
    80001af4:	00813083          	ld	ra,8(sp)
    80001af8:	00013403          	ld	s0,0(sp)
    80001afc:	01010113          	addi	sp,sp,16
    80001b00:	00008067          	ret
    if (!running->isFinished()) Scheduler::put(running);
    80001b04:	00001097          	auipc	ra,0x1
    80001b08:	3c4080e7          	jalr	964(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    80001b0c:	fe1ff06f          	j	80001aec <_ZN7_thread8dispatchEv+0x20>

0000000080001b10 <_ZN7_thread12deleteThreadEPS_>:
int _thread::deleteThread(_thread* thread){
    80001b10:	fe010113          	addi	sp,sp,-32
    80001b14:	00113c23          	sd	ra,24(sp)
    80001b18:	00813823          	sd	s0,16(sp)
    80001b1c:	00913423          	sd	s1,8(sp)
    80001b20:	01213023          	sd	s2,0(sp)
    80001b24:	02010413          	addi	s0,sp,32
    80001b28:	00050493          	mv	s1,a0
    thread->finished=true;
    80001b2c:	00100793          	li	a5,1
    80001b30:	04f50023          	sb	a5,64(a0)
    if (thread->stack!=nullptr) status=MemUnit::mem_free(thread->stack);
    80001b34:	01053503          	ld	a0,16(a0)
    80001b38:	00050863          	beqz	a0,80001b48 <_ZN7_thread12deleteThreadEPS_+0x38>
    80001b3c:	00002097          	auipc	ra,0x2
    80001b40:	8f0080e7          	jalr	-1808(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    if (status<0) return MEM_ALLOC_FAILED;
    80001b44:	0a054863          	bltz	a0,80001bf4 <_ZN7_thread12deleteThreadEPS_+0xe4>
    status=MemUnit::mem_free(thread);
    80001b48:	00048513          	mv	a0,s1
    80001b4c:	00002097          	auipc	ra,0x2
    80001b50:	8e0080e7          	jalr	-1824(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    80001b54:	00050913          	mv	s2,a0
    if (status<0) return MEM_ALLOC_FAILED;
    80001b58:	0a054263          	bltz	a0,80001bfc <_ZN7_thread12deleteThreadEPS_+0xec>
    if (running!=thread) return status;
    80001b5c:	0000a797          	auipc	a5,0xa
    80001b60:	23c7b783          	ld	a5,572(a5) # 8000bd98 <_ZN7_thread7runningE>
    80001b64:	02978063          	beq	a5,s1,80001b84 <_ZN7_thread12deleteThreadEPS_+0x74>
}
    80001b68:	00090513          	mv	a0,s2
    80001b6c:	01813083          	ld	ra,24(sp)
    80001b70:	01013403          	ld	s0,16(sp)
    80001b74:	00813483          	ld	s1,8(sp)
    80001b78:	00013903          	ld	s2,0(sp)
    80001b7c:	02010113          	addi	sp,sp,32
    80001b80:	00008067          	ret
    if (thread==userMainThread){running=mainThread;}
    80001b84:	0000a797          	auipc	a5,0xa
    80001b88:	2247b783          	ld	a5,548(a5) # 8000bda8 <_ZN7_thread14userMainThreadE>
    80001b8c:	02978663          	beq	a5,s1,80001bb8 <_ZN7_thread12deleteThreadEPS_+0xa8>
        resetTimeSlice();
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	e94080e7          	jalr	-364(ra) # 80001a24 <_ZN7_thread14resetTimeSliceEv>
        if (Scheduler::isEmpty()) running=idle;
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	404080e7          	jalr	1028(ra) # 80002f9c <_ZN9Scheduler7isEmptyEv>
    80001ba0:	04050063          	beqz	a0,80001be0 <_ZN7_thread12deleteThreadEPS_+0xd0>
    80001ba4:	0000a797          	auipc	a5,0xa
    80001ba8:	1f478793          	addi	a5,a5,500 # 8000bd98 <_ZN7_thread7runningE>
    80001bac:	0287b703          	ld	a4,40(a5)
    80001bb0:	00e7b023          	sd	a4,0(a5)
    80001bb4:	0140006f          	j	80001bc8 <_ZN7_thread12deleteThreadEPS_+0xb8>
    if (thread==userMainThread){running=mainThread;}
    80001bb8:	0000a797          	auipc	a5,0xa
    80001bbc:	1e078793          	addi	a5,a5,480 # 8000bd98 <_ZN7_thread7runningE>
    80001bc0:	0087b703          	ld	a4,8(a5)
    80001bc4:	00e7b023          	sd	a4,0(a5)
    longjmp(&running->context);
    80001bc8:	0000a517          	auipc	a0,0xa
    80001bcc:	1d053503          	ld	a0,464(a0) # 8000bd98 <_ZN7_thread7runningE>
    80001bd0:	02050513          	addi	a0,a0,32
    80001bd4:	fffff097          	auipc	ra,0xfffff
    80001bd8:	5c0080e7          	jalr	1472(ra) # 80001194 <_ZN7_thread7longjmpEPNS_7ContextE>
    return status;
    80001bdc:	f8dff06f          	j	80001b68 <_ZN7_thread12deleteThreadEPS_+0x58>
        else running=Scheduler::get();
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	354080e7          	jalr	852(ra) # 80002f34 <_ZN9Scheduler3getEv>
    80001be8:	0000a797          	auipc	a5,0xa
    80001bec:	1aa7b823          	sd	a0,432(a5) # 8000bd98 <_ZN7_thread7runningE>
    80001bf0:	fd9ff06f          	j	80001bc8 <_ZN7_thread12deleteThreadEPS_+0xb8>
    if (status<0) return MEM_ALLOC_FAILED;
    80001bf4:	fff00913          	li	s2,-1
    80001bf8:	f71ff06f          	j	80001b68 <_ZN7_thread12deleteThreadEPS_+0x58>
    if (status<0) return MEM_ALLOC_FAILED;
    80001bfc:	fff00913          	li	s2,-1
    80001c00:	f69ff06f          	j	80001b68 <_ZN7_thread12deleteThreadEPS_+0x58>

0000000080001c04 <_ZN7_threadD1Ev>:

_thread::~_thread(){
    80001c04:	ff010113          	addi	sp,sp,-16
    80001c08:	00813423          	sd	s0,8(sp)
    80001c0c:	01010413          	addi	s0,sp,16

}
    80001c10:	00813403          	ld	s0,8(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret

0000000080001c1c <_Z13handleSysCallmmmmm>:
static const uint64 TIMER_INTERUPT=0x8000000000000001;
static const uint64 CONSOLE_INTERUPT=0x8000000000000009;
extern void fullHalt();

uint64 handleSysCall(uint64 code,uint64 a1_val,uint64 a2_val,uint64 a3_val,uint64 a4_val)
{
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    uint64 ret=code;
    switch (code){
    80001c34:	04200793          	li	a5,66
    80001c38:	02a7ec63          	bltu	a5,a0,80001c70 <_Z13handleSysCallmmmmm+0x54>
    80001c3c:	00058513          	mv	a0,a1
    80001c40:	00060593          	mv	a1,a2
    80001c44:	00068613          	mv	a2,a3
    80001c48:	00249693          	slli	a3,s1,0x2
    80001c4c:	00007817          	auipc	a6,0x7
    80001c50:	3d480813          	addi	a6,a6,980 # 80009020 <CONSOLE_STATUS+0x10>
    80001c54:	010686b3          	add	a3,a3,a6
    80001c58:	0006a783          	lw	a5,0(a3) # 1000 <_entry-0x7ffff000>
    80001c5c:	010787b3          	add	a5,a5,a6
    80001c60:	00078067          	jr	a5
    case 0x01:{
            size_t size=(size_t)a1_val;
            ret=(uint64)MemUnit::mem_alloc(size);
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	6f8080e7          	jalr	1784(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80001c6c:	00050493          	mv	s1,a0
            break;
    }
    default:
        break;
    }
    uint64 sepc=RISCV::readSepc();
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	918080e7          	jalr	-1768(ra) # 80002588 <_ZN5RISCV8readSepcEv>
    sepc+=4;
    RISCV::writeSepc(sepc);
    80001c78:	00450513          	addi	a0,a0,4
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	928080e7          	jalr	-1752(ra) # 800025a4 <_ZN5RISCV9writeSepcEm>
    return ret;
}
    80001c84:	00048513          	mv	a0,s1
    80001c88:	01813083          	ld	ra,24(sp)
    80001c8c:	01013403          	ld	s0,16(sp)
    80001c90:	00813483          	ld	s1,8(sp)
    80001c94:	02010113          	addi	sp,sp,32
    80001c98:	00008067          	ret
            ret=MemUnit::mem_free(ptr);
    80001c9c:	00001097          	auipc	ra,0x1
    80001ca0:	790080e7          	jalr	1936(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    80001ca4:	00050493          	mv	s1,a0
            break;
    80001ca8:	fc9ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret = _thread::createThread(handle,body,arg,stack);
    80001cac:	00070693          	mv	a3,a4
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	ab0080e7          	jalr	-1360(ra) # 80001760 <_ZN7_thread12createThreadEPPS_PFvPvES2_S2_>
    80001cb8:	00050493          	mv	s1,a0
            break;
    80001cbc:	fb5ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_thread::deleteThread(_thread::running);
    80001cc0:	0000a797          	auipc	a5,0xa
    80001cc4:	0587b783          	ld	a5,88(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cc8:	0007b503          	ld	a0,0(a5)
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	e44080e7          	jalr	-444(ra) # 80001b10 <_ZN7_thread12deleteThreadEPS_>
    80001cd4:	00050493          	mv	s1,a0
            break;
    80001cd8:	f99ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            _thread::dispatch();
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	df0080e7          	jalr	-528(ra) # 80001acc <_ZN7_thread8dispatchEv>
            break;
    80001ce4:	f8dff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_sem::createSem(handle,init);
    80001ce8:	0005859b          	sext.w	a1,a1
    80001cec:	00001097          	auipc	ra,0x1
    80001cf0:	9ec080e7          	jalr	-1556(ra) # 800026d8 <_ZN4_sem9createSemEPPS_j>
    80001cf4:	00050493          	mv	s1,a0
            break;
    80001cf8:	f79ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_sem::deleteSem(sem);
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	a54080e7          	jalr	-1452(ra) # 80002750 <_ZN4_sem9deleteSemEPS_>
    80001d04:	00050493          	mv	s1,a0
            break;
    80001d08:	f69ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_sem::semWait(sem,1);
    80001d0c:	00100593          	li	a1,1
    80001d10:	00001097          	auipc	ra,0x1
    80001d14:	af8080e7          	jalr	-1288(ra) # 80002808 <_ZN4_sem7semWaitEPS_j>
    80001d18:	00050493          	mv	s1,a0
            break;
    80001d1c:	f55ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_sem::semSignal(sem,1);
    80001d20:	00100593          	li	a1,1
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	bd4080e7          	jalr	-1068(ra) # 800028f8 <_ZN4_sem9semSignalEPS_j>
    80001d2c:	00050493          	mv	s1,a0
            break;
    80001d30:	f41ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_sem::semWait(sem,n);
    80001d34:	0005859b          	sext.w	a1,a1
    80001d38:	00001097          	auipc	ra,0x1
    80001d3c:	ad0080e7          	jalr	-1328(ra) # 80002808 <_ZN4_sem7semWaitEPS_j>
    80001d40:	00050493          	mv	s1,a0
            break;
    80001d44:	f2dff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=_sem::semSignal(sem,n);
    80001d48:	0005859b          	sext.w	a1,a1
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	bac080e7          	jalr	-1108(ra) # 800028f8 <_ZN4_sem9semSignalEPS_j>
    80001d54:	00050493          	mv	s1,a0
            break;
    80001d58:	f19ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            EventList::put(_thread::running,time);
    80001d5c:	00050593          	mv	a1,a0
    80001d60:	0000a797          	auipc	a5,0xa
    80001d64:	fb87b783          	ld	a5,-72(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d68:	0007b503          	ld	a0,0(a5)
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	33c080e7          	jalr	828(ra) # 800030a8 <_ZN9EventList3putEP7_threadm>
            _thread::dispatch();
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	d58080e7          	jalr	-680(ra) # 80001acc <_ZN7_thread8dispatchEv>
            ret=0;
    80001d7c:	00000493          	li	s1,0
            break;
    80001d80:	ef1ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ret=ConsoleUnit::getInputBuffer();
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	fb4080e7          	jalr	-76(ra) # 80002d38 <_ZN11ConsoleUnit14getInputBufferEv>
    80001d8c:	00050493          	mv	s1,a0
            break;
    80001d90:	ee1ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>
            ConsoleUnit::putOutputBuffer(c);
    80001d94:	0ff57513          	andi	a0,a0,255
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	dc8080e7          	jalr	-568(ra) # 80002b60 <_ZN11ConsoleUnit15putOutputBufferEc>
            break;
    80001da0:	ed1ff06f          	j	80001c70 <_Z13handleSysCallmmmmm+0x54>

0000000080001da4 <_Z21handleIllegalInstructv>:
void handleIllegalInstruct(){
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    Scheduler::free();
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	27c080e7          	jalr	636(ra) # 80003030 <_ZN9Scheduler4freeEv>
    Scheduler::put(_thread::outputConsoleThread);
    80001dbc:	0000a797          	auipc	a5,0xa
    80001dc0:	f347b783          	ld	a5,-204(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001dc4:	0007b503          	ld	a0,0(a5)
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	100080e7          	jalr	256(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    ConsoleUnit::putString("Ilegalna Instrukcija\n");
    80001dd0:	00007517          	auipc	a0,0x7
    80001dd4:	36050513          	addi	a0,a0,864 # 80009130 <CONSOLE_STATUS+0x120>
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	0ac080e7          	jalr	172(ra) # 80002e84 <_ZN11ConsoleUnit9putStringEPKc>
    _thread::dispatch();
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	cec080e7          	jalr	-788(ra) # 80001acc <_ZN7_thread8dispatchEv>
    fullHalt();
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	298080e7          	jalr	664(ra) # 80002080 <_Z8fullHaltv>
}
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_Z13handleBadReadv>:
void handleBadRead(){
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    Scheduler::free();
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	220080e7          	jalr	544(ra) # 80003030 <_ZN9Scheduler4freeEv>
    Scheduler::put(_thread::outputConsoleThread);
    80001e18:	0000a797          	auipc	a5,0xa
    80001e1c:	ed87b783          	ld	a5,-296(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e20:	0007b503          	ld	a0,0(a5)
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	0a4080e7          	jalr	164(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    ConsoleUnit::putString("Nedozvoljeno Citanje sa date adrese\n");
    80001e2c:	00007517          	auipc	a0,0x7
    80001e30:	31c50513          	addi	a0,a0,796 # 80009148 <CONSOLE_STATUS+0x138>
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	050080e7          	jalr	80(ra) # 80002e84 <_ZN11ConsoleUnit9putStringEPKc>
    _thread::dispatch();
    80001e3c:	00000097          	auipc	ra,0x0
    80001e40:	c90080e7          	jalr	-880(ra) # 80001acc <_ZN7_thread8dispatchEv>
    fullHalt();
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	23c080e7          	jalr	572(ra) # 80002080 <_Z8fullHaltv>
}
    80001e4c:	00813083          	ld	ra,8(sp)
    80001e50:	00013403          	ld	s0,0(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret

0000000080001e5c <_Z14handleBadWritev>:
void handleBadWrite(){
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
    Scheduler::free();
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	1c4080e7          	jalr	452(ra) # 80003030 <_ZN9Scheduler4freeEv>
    Scheduler::put(_thread::outputConsoleThread);
    80001e74:	0000a797          	auipc	a5,0xa
    80001e78:	e7c7b783          	ld	a5,-388(a5) # 8000bcf0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e7c:	0007b503          	ld	a0,0(a5)
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	048080e7          	jalr	72(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    ConsoleUnit::putString("Nedozvoljeno upisivanje na datu adresu\n");
    80001e88:	00007517          	auipc	a0,0x7
    80001e8c:	2e850513          	addi	a0,a0,744 # 80009170 <CONSOLE_STATUS+0x160>
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	ff4080e7          	jalr	-12(ra) # 80002e84 <_ZN11ConsoleUnit9putStringEPKc>
    _thread::dispatch();
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	c34080e7          	jalr	-972(ra) # 80001acc <_ZN7_thread8dispatchEv>
    fullHalt();
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	1e0080e7          	jalr	480(ra) # 80002080 <_Z8fullHaltv>
}
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_Z11handleTimerv>:
void handleTimer(){
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00113423          	sd	ra,8(sp)
    80001ec0:	00813023          	sd	s0,0(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    __asm__ __volatile__("csrc sip,2");
    80001ec8:	14417073          	csrci	sip,2
    EventList::alert();
    80001ecc:	00001097          	auipc	ra,0x1
    80001ed0:	338080e7          	jalr	824(ra) # 80003204 <_ZN9EventList5alertEv>
    _thread::incTimeSlice();
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	af0080e7          	jalr	-1296(ra) # 800019c4 <_ZN7_thread12incTimeSliceEv>
    if (_thread::timeRunOut()){
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	b14080e7          	jalr	-1260(ra) # 800019f0 <_ZN7_thread10timeRunOutEv>
    80001ee4:	00051a63          	bnez	a0,80001ef8 <_Z11handleTimerv+0x40>
        _thread::dispatch();
    }
}
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret
        _thread::dispatch();
    80001ef8:	00000097          	auipc	ra,0x0
    80001efc:	bd4080e7          	jalr	-1068(ra) # 80001acc <_ZN7_thread8dispatchEv>
}
    80001f00:	fe9ff06f          	j	80001ee8 <_Z11handleTimerv+0x30>

0000000080001f04 <_Z13handleConsolev>:
void handleConsole(){
    80001f04:	fe010113          	addi	sp,sp,-32
    80001f08:	00113c23          	sd	ra,24(sp)
    80001f0c:	00813823          	sd	s0,16(sp)
    80001f10:	00913423          	sd	s1,8(sp)
    80001f14:	02010413          	addi	s0,sp,32
    int v=plic_claim();
    80001f18:	00005097          	auipc	ra,0x5
    80001f1c:	5fc080e7          	jalr	1532(ra) # 80007514 <plic_claim>
    80001f20:	00050493          	mv	s1,a0
    if (v==CONSOLE_IRQ){
    80001f24:	00a00793          	li	a5,10
    80001f28:	02f50263          	beq	a0,a5,80001f4c <_Z13handleConsolev+0x48>
        uint8 status=RISCV::readConStatus();
        if ((status & CONSOLE_RX_STATUS_BIT)!=0){
            ConsoleUnit::signalInput();
        }
    }
    plic_complete(v);
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	00005097          	auipc	ra,0x5
    80001f34:	61c080e7          	jalr	1564(ra) # 8000754c <plic_complete>
}
    80001f38:	01813083          	ld	ra,24(sp)
    80001f3c:	01013403          	ld	s0,16(sp)
    80001f40:	00813483          	ld	s1,8(sp)
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret
        uint8 status=RISCV::readConStatus();
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	738080e7          	jalr	1848(ra) # 80002684 <_ZN5RISCV13readConStatusEv>
        if ((status & CONSOLE_RX_STATUS_BIT)!=0){
    80001f54:	00157513          	andi	a0,a0,1
    80001f58:	fc050ae3          	beqz	a0,80001f2c <_Z13handleConsolev+0x28>
            ConsoleUnit::signalInput();
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	e64080e7          	jalr	-412(ra) # 80002dc0 <_ZN11ConsoleUnit11signalInputEv>
    80001f64:	fc9ff06f          	j	80001f2c <_Z13handleConsolev+0x28>

0000000080001f68 <_Z15handleInterruptv>:
uint64 handleInterrupt()
{
    80001f68:	fc010113          	addi	sp,sp,-64
    80001f6c:	02113c23          	sd	ra,56(sp)
    80001f70:	02813823          	sd	s0,48(sp)
    80001f74:	02913423          	sd	s1,40(sp)
    80001f78:	03213023          	sd	s2,32(sp)
    80001f7c:	01313c23          	sd	s3,24(sp)
    80001f80:	01413823          	sd	s4,16(sp)
    80001f84:	01513423          	sd	s5,8(sp)
    80001f88:	01613023          	sd	s6,0(sp)
    80001f8c:	04010413          	addi	s0,sp,64
        "mv %1, a1\n"
        "mv %2, a2\n"
        "mv %3, a3\n"
        "mv %4, a4\n"
        : "=r"(code), "=r"(a1_val), "=r"(a2_val), "=r"(a3_val),"=r"(a4_val)
        );
    80001f90:	00050913          	mv	s2,a0
    80001f94:	00058993          	mv	s3,a1
    80001f98:	00060a13          	mv	s4,a2
    80001f9c:	00068a93          	mv	s5,a3
    80001fa0:	00070b13          	mv	s6,a4
    80001fa4:	00090493          	mv	s1,s2
    uint64 scause=RISCV::readScause();
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	66c080e7          	jalr	1644(ra) # 80002614 <_ZN5RISCV10readScauseEv>
    uint64 ret=code;
    switch (scause){
    80001fb0:	00900793          	li	a5,9
    80001fb4:	02a7ee63          	bltu	a5,a0,80001ff0 <_Z15handleInterruptv+0x88>
    80001fb8:	00800793          	li	a5,8
    80001fbc:	06f57063          	bgeu	a0,a5,8000201c <_Z15handleInterruptv+0xb4>
    80001fc0:	00500793          	li	a5,5
    80001fc4:	0af50263          	beq	a0,a5,80002068 <_Z15handleInterruptv+0x100>
    80001fc8:	00700793          	li	a5,7
    80001fcc:	00f51863          	bne	a0,a5,80001fdc <_Z15handleInterruptv+0x74>
        break;
    case BAD_READ_INTERUPT:
        handleBadRead();
        break;
    case BAD_WRITE_INTERUPT:
        handleBadWrite();
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	e8c080e7          	jalr	-372(ra) # 80001e5c <_Z14handleBadWritev>
        break;
    80001fd8:	0640006f          	j	8000203c <_Z15handleInterruptv+0xd4>
    switch (scause){
    80001fdc:	00200793          	li	a5,2
    80001fe0:	04f51e63          	bne	a0,a5,8000203c <_Z15handleInterruptv+0xd4>
        handleIllegalInstruct();
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	dc0080e7          	jalr	-576(ra) # 80001da4 <_Z21handleIllegalInstructv>
        break;
    80001fec:	0500006f          	j	8000203c <_Z15handleInterruptv+0xd4>
    switch (scause){
    80001ff0:	fff00793          	li	a5,-1
    80001ff4:	03f79793          	slli	a5,a5,0x3f
    80001ff8:	00178793          	addi	a5,a5,1
    80001ffc:	06f50c63          	beq	a0,a5,80002074 <_Z15handleInterruptv+0x10c>
    80002000:	fff00793          	li	a5,-1
    80002004:	03f79793          	slli	a5,a5,0x3f
    80002008:	00978793          	addi	a5,a5,9
    8000200c:	02f51863          	bne	a0,a5,8000203c <_Z15handleInterruptv+0xd4>
    case TIMER_INTERUPT:
        handleTimer();
        break;
    case CONSOLE_INTERUPT:
        handleConsole();
    80002010:	00000097          	auipc	ra,0x0
    80002014:	ef4080e7          	jalr	-268(ra) # 80001f04 <_Z13handleConsolev>
        break;
    default:
        break;
    }
    return ret;
    80002018:	0240006f          	j	8000203c <_Z15handleInterruptv+0xd4>
        ret=handleSysCall(code,a1_val,a2_val,a3_val,a4_val);
    8000201c:	000b0713          	mv	a4,s6
    80002020:	000a8693          	mv	a3,s5
    80002024:	000a0613          	mv	a2,s4
    80002028:	00098593          	mv	a1,s3
    8000202c:	00090513          	mv	a0,s2
    80002030:	00000097          	auipc	ra,0x0
    80002034:	bec080e7          	jalr	-1044(ra) # 80001c1c <_Z13handleSysCallmmmmm>
    80002038:	00050493          	mv	s1,a0
    8000203c:	00048513          	mv	a0,s1
    80002040:	03813083          	ld	ra,56(sp)
    80002044:	03013403          	ld	s0,48(sp)
    80002048:	02813483          	ld	s1,40(sp)
    8000204c:	02013903          	ld	s2,32(sp)
    80002050:	01813983          	ld	s3,24(sp)
    80002054:	01013a03          	ld	s4,16(sp)
    80002058:	00813a83          	ld	s5,8(sp)
    8000205c:	00013b03          	ld	s6,0(sp)
    80002060:	04010113          	addi	sp,sp,64
    80002064:	00008067          	ret
        handleBadRead();
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	d98080e7          	jalr	-616(ra) # 80001e00 <_Z13handleBadReadv>
        break;
    80002070:	fcdff06f          	j	8000203c <_Z15handleInterruptv+0xd4>
        handleTimer();
    80002074:	00000097          	auipc	ra,0x0
    80002078:	e44080e7          	jalr	-444(ra) # 80001eb8 <_Z11handleTimerv>
        break;
    8000207c:	fc1ff06f          	j	8000203c <_Z15handleInterruptv+0xd4>

0000000080002080 <_Z8fullHaltv>:
    Scheduler::free();
    EventList::free();
    MemUnit::mem_free(_thread::running);
    RISCV::Halt();
}*/
void fullHalt(){
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00113423          	sd	ra,8(sp)
    80002088:	00813023          	sd	s0,0(sp)
    8000208c:	01010413          	addi	s0,sp,16
    MemUnit::fullFree();
    80002090:	00001097          	auipc	ra,0x1
    80002094:	510080e7          	jalr	1296(ra) # 800035a0 <_ZN7MemUnit8fullFreeEv>
    RISCV::Halt();
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	618080e7          	jalr	1560(ra) # 800026b0 <_ZN5RISCV4HaltEv>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <main>:
int main(){
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00113423          	sd	ra,8(sp)
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	01010413          	addi	s0,sp,16
    MemUnit::mem_init();
    800020c0:	00001097          	auipc	ra,0x1
    800020c4:	24c080e7          	jalr	588(ra) # 8000330c <_ZN7MemUnit8mem_initEv>
    _thread::SetMainThread();
    800020c8:	fffff097          	auipc	ra,0xfffff
    800020cc:	584080e7          	jalr	1412(ra) # 8000164c <_ZN7_thread13SetMainThreadEv>
    _thread::SetIdleThread();
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	840080e7          	jalr	-1984(ra) # 80001910 <_ZN7_thread13SetIdleThreadEv>
    _thread::SetUserMainThread();
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	5d4080e7          	jalr	1492(ra) # 800016ac <_ZN7_thread17SetUserMainThreadEv>
    _thread::SetInputThread();
    800020e0:	fffff097          	auipc	ra,0xfffff
    800020e4:	778080e7          	jalr	1912(ra) # 80001858 <_ZN7_thread14SetInputThreadEv>
    _thread::SetOutputThread();
    800020e8:	fffff097          	auipc	ra,0xfffff
    800020ec:	7cc080e7          	jalr	1996(ra) # 800018b4 <_ZN7_thread15SetOutputThreadEv>
    ConsoleUnit::init();
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	8f0080e7          	jalr	-1808(ra) # 800029e0 <_ZN11ConsoleUnit4initEv>
    __asm__ __volatile__("csrw stvec, %0" : :"r" (InterruptHandler));
    800020f8:	0000a797          	auipc	a5,0xa
    800020fc:	c407b783          	ld	a5,-960(a5) # 8000bd38 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002100:	10579073          	csrw	stvec,a5
    thread_dispatch();
    80002104:	fffff097          	auipc	ra,0xfffff
    80002108:	2cc080e7          	jalr	716(ra) # 800013d0 <_Z15thread_dispatchv>
    fullHalt();
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	f74080e7          	jalr	-140(ra) # 80002080 <_Z8fullHaltv>
    return 0;
    80002114:	00000513          	li	a0,0
    80002118:	00813083          	ld	ra,8(sp)
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_ZN6Thread10runWrapperEPv>:

void Thread::dispatch(){
    thread_dispatch();
}

void Thread::runWrapper(void* arg){
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00113423          	sd	ra,8(sp)
    80002130:	00813023          	sd	s0,0(sp)
    80002134:	01010413          	addi	s0,sp,16
    Thread* t=(Thread*)arg;
    t->run();
    80002138:	00053783          	ld	a5,0(a0)
    8000213c:	0107b783          	ld	a5,16(a5)
    80002140:	000780e7          	jalr	a5
}
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret

0000000080002154 <_ZN6ThreadD1Ev>:

Thread::~Thread(){
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00813423          	sd	s0,8(sp)
    8000215c:	01010413          	addi	s0,sp,16
}
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_ZN9SemaphoreD1Ev>:
//class Semaphore
Semaphore::Semaphore(unsigned init){
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore(){
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00113423          	sd	ra,8(sp)
    80002174:	00813023          	sd	s0,0(sp)
    80002178:	01010413          	addi	s0,sp,16
    8000217c:	0000a797          	auipc	a5,0xa
    80002180:	9ac78793          	addi	a5,a5,-1620 # 8000bb28 <_ZTV9Semaphore+0x10>
    80002184:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002188:	00853503          	ld	a0,8(a0)
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	29c080e7          	jalr	668(ra) # 80001428 <_Z9sem_closeP4_sem>
}
    80002194:	00813083          	ld	ra,8(sp)
    80002198:	00013403          	ld	s0,0(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <_Znwm>:
void* operator new (size_t sz){
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00113423          	sd	ra,8(sp)
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	01010413          	addi	s0,sp,16
    void* ret= mem_alloc(sz);
    800021b4:	fffff097          	auipc	ra,0xfffff
    800021b8:	11c080e7          	jalr	284(ra) # 800012d0 <_Z9mem_allocm>
}
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret

00000000800021cc <_ZdlPv>:
void operator delete(void* ptr){
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	128080e7          	jalr	296(ra) # 80001304 <_Z8mem_freePv>
}
    800021e4:	00813083          	ld	ra,8(sp)
    800021e8:	00013403          	ld	s0,0(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00113423          	sd	ra,8(sp)
    800021fc:	00813023          	sd	s0,0(sp)
    80002200:	01010413          	addi	s0,sp,16
}
    80002204:	00000097          	auipc	ra,0x0
    80002208:	fc8080e7          	jalr	-56(ra) # 800021cc <_ZdlPv>
    8000220c:	00813083          	ld	ra,8(sp)
    80002210:	00013403          	ld	s0,0(sp)
    80002214:	01010113          	addi	sp,sp,16
    80002218:	00008067          	ret

000000008000221c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    8000221c:	fe010113          	addi	sp,sp,-32
    80002220:	00113c23          	sd	ra,24(sp)
    80002224:	00813823          	sd	s0,16(sp)
    80002228:	00913423          	sd	s1,8(sp)
    8000222c:	02010413          	addi	s0,sp,32
    80002230:	00050493          	mv	s1,a0
}
    80002234:	00000097          	auipc	ra,0x0
    80002238:	f38080e7          	jalr	-200(ra) # 8000216c <_ZN9SemaphoreD1Ev>
    8000223c:	00048513          	mv	a0,s1
    80002240:	00000097          	auipc	ra,0x0
    80002244:	f8c080e7          	jalr	-116(ra) # 800021cc <_ZdlPv>
    80002248:	01813083          	ld	ra,24(sp)
    8000224c:	01013403          	ld	s0,16(sp)
    80002250:	00813483          	ld	s1,8(sp)
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00008067          	ret

000000008000225c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg){
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00813423          	sd	s0,8(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	0000a797          	auipc	a5,0xa
    8000226c:	86878793          	addi	a5,a5,-1944 # 8000bad0 <_ZTV6Thread+0x10>
    80002270:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80002274:	00b53423          	sd	a1,8(a0)
    this->arg = arg;
    80002278:	00c53823          	sd	a2,16(a0)
}
    8000227c:	00813403          	ld	s0,8(sp)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret

0000000080002288 <_ZN6ThreadC1Ev>:
Thread::Thread(){
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813423          	sd	s0,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    80002294:	0000a797          	auipc	a5,0xa
    80002298:	83c78793          	addi	a5,a5,-1988 # 8000bad0 <_ZTV6Thread+0x10>
    8000229c:	00f53023          	sd	a5,0(a0)
    this->body = runWrapper;
    800022a0:	00000797          	auipc	a5,0x0
    800022a4:	e8878793          	addi	a5,a5,-376 # 80002128 <_ZN6Thread10runWrapperEPv>
    800022a8:	00f53423          	sd	a5,8(a0)
    this->arg = this;
    800022ac:	00a53823          	sd	a0,16(a0)
}
    800022b0:	00813403          	ld	s0,8(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN6Thread5startEv>:
int Thread::start(){
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00113423          	sd	ra,8(sp)
    800022c4:	00813023          	sd	s0,0(sp)
    800022c8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle,body,arg);
    800022cc:	01053603          	ld	a2,16(a0)
    800022d0:	00853583          	ld	a1,8(a0)
    800022d4:	01850513          	addi	a0,a0,24
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	05c080e7          	jalr	92(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002300:	fffff097          	auipc	ra,0xfffff
    80002304:	0d0080e7          	jalr	208(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80002308:	00813083          	ld	ra,8(sp)
    8000230c:	00013403          	ld	s0,0(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time){
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00113423          	sd	ra,8(sp)
    80002320:	00813023          	sd	s0,0(sp)
    80002324:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	200080e7          	jalr	512(ra) # 80001528 <_Z10time_sleepm>
}
    80002330:	00813083          	ld	ra,8(sp)
    80002334:	00013403          	ld	s0,0(sp)
    80002338:	01010113          	addi	sp,sp,16
    8000233c:	00008067          	ret

0000000080002340 <_ZN14PeriodicThread3runEv>:
void PeriodicThread::run(){
    80002340:	fe010113          	addi	sp,sp,-32
    80002344:	00113c23          	sd	ra,24(sp)
    80002348:	00813823          	sd	s0,16(sp)
    8000234c:	00913423          	sd	s1,8(sp)
    80002350:	02010413          	addi	s0,sp,32
    80002354:	00050493          	mv	s1,a0
    while (period!=0){
    80002358:	0204b783          	ld	a5,32(s1)
    8000235c:	02078263          	beqz	a5,80002380 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002360:	0004b783          	ld	a5,0(s1)
    80002364:	0187b783          	ld	a5,24(a5)
    80002368:	00048513          	mv	a0,s1
    8000236c:	000780e7          	jalr	a5
        sleep(period);
    80002370:	0204b503          	ld	a0,32(s1)
    80002374:	00000097          	auipc	ra,0x0
    80002378:	fa4080e7          	jalr	-92(ra) # 80002318 <_ZN6Thread5sleepEm>
    while (period!=0){
    8000237c:	fddff06f          	j	80002358 <_ZN14PeriodicThread3runEv+0x18>
}
    80002380:	01813083          	ld	ra,24(sp)
    80002384:	01013403          	ld	s0,16(sp)
    80002388:	00813483          	ld	s1,8(sp)
    8000238c:	02010113          	addi	sp,sp,32
    80002390:	00008067          	ret

0000000080002394 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period):Thread(),period(period){
    80002394:	fe010113          	addi	sp,sp,-32
    80002398:	00113c23          	sd	ra,24(sp)
    8000239c:	00813823          	sd	s0,16(sp)
    800023a0:	00913423          	sd	s1,8(sp)
    800023a4:	01213023          	sd	s2,0(sp)
    800023a8:	02010413          	addi	s0,sp,32
    800023ac:	00050493          	mv	s1,a0
    800023b0:	00058913          	mv	s2,a1
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	ed4080e7          	jalr	-300(ra) # 80002288 <_ZN6ThreadC1Ev>
    800023bc:	00009797          	auipc	a5,0x9
    800023c0:	73c78793          	addi	a5,a5,1852 # 8000baf8 <_ZTV14PeriodicThread+0x10>
    800023c4:	00f4b023          	sd	a5,0(s1)
    800023c8:	0324b023          	sd	s2,32(s1)
}
    800023cc:	01813083          	ld	ra,24(sp)
    800023d0:	01013403          	ld	s0,16(sp)
    800023d4:	00813483          	ld	s1,8(sp)
    800023d8:	00013903          	ld	s2,0(sp)
    800023dc:	02010113          	addi	sp,sp,32
    800023e0:	00008067          	ret

00000000800023e4 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate(){
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
    period=0;
    800023f0:	02053023          	sd	zero,32(a0)
}
    800023f4:	00813403          	ld	s0,8(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init){
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00113423          	sd	ra,8(sp)
    80002408:	00813023          	sd	s0,0(sp)
    8000240c:	01010413          	addi	s0,sp,16
    80002410:	00009797          	auipc	a5,0x9
    80002414:	71878793          	addi	a5,a5,1816 # 8000bb28 <_ZTV9Semaphore+0x10>
    80002418:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    8000241c:	00850513          	addi	a0,a0,8
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	fd0080e7          	jalr	-48(ra) # 800013f0 <_Z8sem_openPP4_semj>
}
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN9Semaphore4waitEv>:

int Semaphore::wait(){
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002448:	00853503          	ld	a0,8(a0)
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	00c080e7          	jalr	12(ra) # 80001458 <_Z8sem_waitP4_sem>
}
    80002454:	00813083          	ld	ra,8(sp)
    80002458:	00013403          	ld	s0,0(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN9Semaphore6signalEv>:

int Semaphore::signal(){
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002474:	00853503          	ld	a0,8(a0)
    80002478:	fffff097          	auipc	ra,0xfffff
    8000247c:	010080e7          	jalr	16(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80002480:	00813083          	ld	ra,8(sp)
    80002484:	00013403          	ld	s0,0(sp)
    80002488:	01010113          	addi	sp,sp,16
    8000248c:	00008067          	ret

0000000080002490 <_ZN7Console4getcEv>:

//class Semaphore

//class Console

char Console::getc(){
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00113423          	sd	ra,8(sp)
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	01010413          	addi	s0,sp,16
    return ::getc();
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	0b8080e7          	jalr	184(ra) # 80001558 <_Z4getcv>
}
    800024a8:	00813083          	ld	ra,8(sp)
    800024ac:	00013403          	ld	s0,0(sp)
    800024b0:	01010113          	addi	sp,sp,16
    800024b4:	00008067          	ret

00000000800024b8 <_ZN7Console4putcEc>:

void Console::putc(char c){
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00113423          	sd	ra,8(sp)
    800024c0:	00813023          	sd	s0,0(sp)
    800024c4:	01010413          	addi	s0,sp,16
    ::putc(c);
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	0b8080e7          	jalr	184(ra) # 80001580 <_Z4putcc>
}
    800024d0:	00813083          	ld	ra,8(sp)
    800024d4:	00013403          	ld	s0,0(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN6Thread3runEv>:
    static void dispatch ();

    static int sleep (time_t);
protected:
    Thread ();
    virtual void run (){}
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00813423          	sd	s0,8(sp)
    800024e8:	01010413          	addi	s0,sp,16
    800024ec:	00813403          	ld	s0,8(sp)
    800024f0:	01010113          	addi	sp,sp,16
    800024f4:	00008067          	ret

00000000800024f8 <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00813423          	sd	s0,8(sp)
    80002500:	01010413          	addi	s0,sp,16
    80002504:	00813403          	ld	s0,8(sp)
    80002508:	01010113          	addi	sp,sp,16
    8000250c:	00008067          	ret

0000000080002510 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00813423          	sd	s0,8(sp)
    80002518:	01010413          	addi	s0,sp,16
    8000251c:	00009797          	auipc	a5,0x9
    80002520:	5dc78793          	addi	a5,a5,1500 # 8000baf8 <_ZTV14PeriodicThread+0x10>
    80002524:	00f53023          	sd	a5,0(a0)
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZN14PeriodicThreadD0Ev>:
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    80002544:	00009797          	auipc	a5,0x9
    80002548:	5b478793          	addi	a5,a5,1460 # 8000baf8 <_ZTV14PeriodicThread+0x10>
    8000254c:	00f53023          	sd	a5,0(a0)
    80002550:	00000097          	auipc	ra,0x0
    80002554:	c7c080e7          	jalr	-900(ra) # 800021cc <_ZdlPv>
    80002558:	00813083          	ld	ra,8(sp)
    8000255c:	00013403          	ld	s0,0(sp)
    80002560:	01010113          	addi	sp,sp,16
    80002564:	00008067          	ret

0000000080002568 <_ZN5RISCV10popSppSpieEv>:
#include "../h/riscv.hpp"
void RISCV::popSppSpie(){
    80002568:	ff010113          	addi	sp,sp,-16
    8000256c:	00813423          	sd	s0,8(sp)
    80002570:	01010413          	addi	s0,sp,16
    __asm__ __volatile__(
            "csrw sepc,ra\n"
            "sret");
    80002574:	14109073          	csrw	sepc,ra
    80002578:	10200073          	sret
}
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <_ZN5RISCV8readSepcEv>:
uint64 RISCV::readSepc(){
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00813423          	sd	s0,8(sp)
    80002590:	01010413          	addi	s0,sp,16
    uint64 sepc;
    __asm__ __volatile__("csrr %0,sepc":"=r"(sepc));
    80002594:	14102573          	csrr	a0,sepc
    return sepc;
}
    80002598:	00813403          	ld	s0,8(sp)
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00008067          	ret

00000000800025a4 <_ZN5RISCV9writeSepcEm>:

void RISCV::writeSepc(uint64 sepc){
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813423          	sd	s0,8(sp)
    800025ac:	01010413          	addi	s0,sp,16
    __asm__ __volatile__("csrw sepc,%0"::"r"(sepc));
    800025b0:	14151073          	csrw	sepc,a0
}
    800025b4:	00813403          	ld	s0,8(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZN5RISCV11readSStatusEv>:

uint64 RISCV::readSStatus(){
    800025c0:	ff010113          	addi	sp,sp,-16
    800025c4:	00813423          	sd	s0,8(sp)
    800025c8:	01010413          	addi	s0,sp,16
    uint64 sstatus;
    __asm__ __volatile__("csrr %0,sstatus":"=r"(sstatus));
    800025cc:	10002573          	csrr	a0,sstatus
    return sstatus;
}
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <_ZN5RISCV12writeSStatusEm>:

void RISCV::writeSStatus(uint64 sstatus){
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00813423          	sd	s0,8(sp)
    800025e4:	01010413          	addi	s0,sp,16
    __asm__ __volatile__("csrw sstatus,%0"::"r"(sstatus));
    800025e8:	10051073          	csrw	sstatus,a0
}
    800025ec:	00813403          	ld	s0,8(sp)
    800025f0:	01010113          	addi	sp,sp,16
    800025f4:	00008067          	ret

00000000800025f8 <_ZN5RISCV8readCodeEv>:

uint64 RISCV::readCode(){
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813423          	sd	s0,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    uint64 code;
    __asm__ __volatile__("mv %0,a0":"=r"(code));
    80002604:	00050513          	mv	a0,a0
    return code;
}
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN5RISCV10readScauseEv>:

uint64 RISCV::readScause(){
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
    uint64 scause;
    __asm__ __volatile__("csrr %0,scause":"=r"(scause));
    80002620:	14202573          	csrr	a0,scause
    return scause;
}
    80002624:	00813403          	ld	s0,8(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN5RISCV9readConRXEv>:

uint8 RISCV::readConRX()
{
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00813423          	sd	s0,8(sp)
    80002638:	01010413          	addi	s0,sp,16
    uint8 conRX;
    __asm__ __volatile__(
    "lb %0, 0(%1)"
    :"=r"(conRX): "r"(CONSOLE_RX_DATA));
    8000263c:	00009797          	auipc	a5,0x9
    80002640:	6c47b783          	ld	a5,1732(a5) # 8000bd00 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002644:	0007b503          	ld	a0,0(a5)
    80002648:	00050503          	lb	a0,0(a0)
    return conRX;
}
    8000264c:	0ff57513          	andi	a0,a0,255
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_ZN5RISCV10writeConTXEc>:

void RISCV::writeConTX(char c)
{
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00813423          	sd	s0,8(sp)
    80002664:	01010413          	addi	s0,sp,16
    __asm__ __volatile__(
    "sb %0, 0(%1)"
    ::"r"(c), "r"(CONSOLE_TX_DATA));
    80002668:	00009797          	auipc	a5,0x9
    8000266c:	6c07b783          	ld	a5,1728(a5) # 8000bd28 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002670:	0007b783          	ld	a5,0(a5)
    80002674:	00a78023          	sb	a0,0(a5)
}
    80002678:	00813403          	ld	s0,8(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_ZN5RISCV13readConStatusEv>:

uint8 RISCV::readConStatus()
{
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813423          	sd	s0,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
    uint8 status;
    __asm__ __volatile__(
    "lb %0, 0(%1)"
    :"=r"(status):"r"(CONSOLE_STATUS));
    80002690:	00009797          	auipc	a5,0x9
    80002694:	6787b783          	ld	a5,1656(a5) # 8000bd08 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002698:	0007b503          	ld	a0,0(a5)
    8000269c:	00050503          	lb	a0,0(a0)
    return status;
}
    800026a0:	0ff57513          	andi	a0,a0,255
    800026a4:	00813403          	ld	s0,8(sp)
    800026a8:	01010113          	addi	sp,sp,16
    800026ac:	00008067          	ret

00000000800026b0 <_ZN5RISCV4HaltEv>:

void RISCV::Halt(){
    800026b0:	ff010113          	addi	sp,sp,-16
    800026b4:	00813423          	sd	s0,8(sp)
    800026b8:	01010413          	addi	s0,sp,16
    __asm__ __volatile__(
    "li t0, 0x5555\n"
    "li t1, 0x100000\n"
    "sw t0, 0(t1)");
    800026bc:	000052b7          	lui	t0,0x5
    800026c0:	5552829b          	addiw	t0,t0,1365
    800026c4:	00100337          	lui	t1,0x100
    800026c8:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
}
    800026cc:	00813403          	ld	s0,8(sp)
    800026d0:	01010113          	addi	sp,sp,16
    800026d4:	00008067          	ret

00000000800026d8 <_ZN4_sem9createSemEPPS_j>:
const int SEM_ALLOC_FAILED=-1;
const int SEM_NULL_ERR=-1;
const int SEM_FREE_FAILED=-2;
const int SEM_THREAD_SUSPENDED=-1;

int _sem::createSem(_sem** sem, unsigned init){
    800026d8:	fe010113          	addi	sp,sp,-32
    800026dc:	00113c23          	sd	ra,24(sp)
    800026e0:	00813823          	sd	s0,16(sp)
    800026e4:	00913423          	sd	s1,8(sp)
    800026e8:	01213023          	sd	s2,0(sp)
    800026ec:	02010413          	addi	s0,sp,32
    800026f0:	00050493          	mv	s1,a0
    800026f4:	00058913          	mv	s2,a1
    size_t blocks=(sizeof(_sem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    *sem=(_sem*)MemUnit::mem_alloc(blocks);
    800026f8:	00100513          	li	a0,1
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	c60080e7          	jalr	-928(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80002704:	00a4b023          	sd	a0,0(s1)
    if (!*sem) return SEM_ALLOC_FAILED;
    80002708:	04050063          	beqz	a0,80002748 <_ZN4_sem9createSemEPPS_j+0x70>
    (*sem)->val=init;
    8000270c:	01252023          	sw	s2,0(a0)
    (*sem)->blocked=List<semElem>::genList();
    80002710:	0004b483          	ld	s1,0(s1)
    };
    Elem* head=nullptr,*tail=nullptr;
public:
    static List<T>* genList(){
        size_t mem=(sizeof(List<T>)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
        List<T>* list= (List<T>*)MemUnit::mem_alloc(mem);
    80002714:	00100513          	li	a0,1
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	c44080e7          	jalr	-956(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
        list->head=nullptr;
    80002720:	00053023          	sd	zero,0(a0)
        list->tail=nullptr;
    80002724:	00053423          	sd	zero,8(a0)
    80002728:	00a4b423          	sd	a0,8(s1)
    return 0;
    8000272c:	00000513          	li	a0,0
}
    80002730:	01813083          	ld	ra,24(sp)
    80002734:	01013403          	ld	s0,16(sp)
    80002738:	00813483          	ld	s1,8(sp)
    8000273c:	00013903          	ld	s2,0(sp)
    80002740:	02010113          	addi	sp,sp,32
    80002744:	00008067          	ret
    if (!*sem) return SEM_ALLOC_FAILED;
    80002748:	fff00513          	li	a0,-1
    8000274c:	fe5ff06f          	j	80002730 <_ZN4_sem9createSemEPPS_j+0x58>

0000000080002750 <_ZN4_sem9deleteSemEPS_>:

int _sem::deleteSem(_sem* sem){
    80002750:	fe010113          	addi	sp,sp,-32
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	00813823          	sd	s0,16(sp)
    8000275c:	00913423          	sd	s1,8(sp)
    80002760:	01213023          	sd	s2,0(sp)
    80002764:	02010413          	addi	s0,sp,32
    80002768:	00050493          	mv	s1,a0
    int status=0;
    if (!sem) return SEM_NULL_ERR;
    8000276c:	06051863          	bnez	a0,800027dc <_ZN4_sem9deleteSemEPS_+0x8c>
    80002770:	fff00513          	li	a0,-1
    80002774:	0280006f          	j	8000279c <_ZN4_sem9deleteSemEPS_+0x4c>
    while (!sem->blocked->isEmpty()){
        semElem* elem=sem->blocked->get();
        Scheduler::put(elem->thread);
        MemUnit::mem_free(elem);
    }
    status=MemUnit::mem_free(sem->blocked);
    80002778:	00078513          	mv	a0,a5
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	cb0080e7          	jalr	-848(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    if (status<0) return SEM_FREE_FAILED;
    80002784:	06054a63          	bltz	a0,800027f8 <_ZN4_sem9deleteSemEPS_+0xa8>
    status=MemUnit::mem_free(sem);
    80002788:	00048513          	mv	a0,s1
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	ca0080e7          	jalr	-864(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    if (status<0) return SEM_FREE_FAILED;
    80002794:	06054663          	bltz	a0,80002800 <_ZN4_sem9deleteSemEPS_+0xb0>
    return 0;
    80002798:	00000513          	li	a0,0
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	00013903          	ld	s2,0(sp)
    800027ac:	02010113          	addi	sp,sp,32
    800027b0:	00008067          	ret
    }
    T* get(){
        if (!head) return nullptr;
        Elem* node=head;
        head=head->next;
        if (!head) tail=nullptr;
    800027b4:	0007b423          	sd	zero,8(a5)
        T* data=node->data;
    800027b8:	00053903          	ld	s2,0(a0)
        MemUnit::mem_free(node);
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	c70080e7          	jalr	-912(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
        Scheduler::put(elem->thread);
    800027c4:	00893503          	ld	a0,8(s2)
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	700080e7          	jalr	1792(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
        MemUnit::mem_free(elem);
    800027d0:	00090513          	mv	a0,s2
    800027d4:	00001097          	auipc	ra,0x1
    800027d8:	c58080e7          	jalr	-936(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    while (!sem->blocked->isEmpty()){
    800027dc:	0084b783          	ld	a5,8(s1)
        if (head) return head->data;
        return nullptr;
    }

    bool isEmpty(){
        if (head) return false;
    800027e0:	0007b503          	ld	a0,0(a5)
    800027e4:	f8050ae3          	beqz	a0,80002778 <_ZN4_sem9deleteSemEPS_+0x28>
        head=head->next;
    800027e8:	00853703          	ld	a4,8(a0)
    800027ec:	00e7b023          	sd	a4,0(a5)
        if (!head) tail=nullptr;
    800027f0:	fc0714e3          	bnez	a4,800027b8 <_ZN4_sem9deleteSemEPS_+0x68>
    800027f4:	fc1ff06f          	j	800027b4 <_ZN4_sem9deleteSemEPS_+0x64>
    if (status<0) return SEM_FREE_FAILED;
    800027f8:	ffe00513          	li	a0,-2
    800027fc:	fa1ff06f          	j	8000279c <_ZN4_sem9deleteSemEPS_+0x4c>
    if (status<0) return SEM_FREE_FAILED;
    80002800:	ffe00513          	li	a0,-2
    80002804:	f99ff06f          	j	8000279c <_ZN4_sem9deleteSemEPS_+0x4c>

0000000080002808 <_ZN4_sem7semWaitEPS_j>:

int _sem::semWait(_sem* sem,unsigned n){
    if (!sem) return SEM_NULL_ERR;
    80002808:	0e050063          	beqz	a0,800028e8 <_ZN4_sem7semWaitEPS_j+0xe0>
int _sem::semWait(_sem* sem,unsigned n){
    8000280c:	fd010113          	addi	sp,sp,-48
    80002810:	02113423          	sd	ra,40(sp)
    80002814:	02813023          	sd	s0,32(sp)
    80002818:	00913c23          	sd	s1,24(sp)
    8000281c:	01213823          	sd	s2,16(sp)
    80002820:	01313423          	sd	s3,8(sp)
    80002824:	03010413          	addi	s0,sp,48
    80002828:	00050493          	mv	s1,a0
    8000282c:	00058913          	mv	s2,a1

    if (sem->val<n){
    80002830:	00052583          	lw	a1,0(a0)
    80002834:	0325e663          	bltu	a1,s2,80002860 <_ZN4_sem7semWaitEPS_j+0x58>
        sem->blocked->add(new_elem);
        _thread::running->setSuspended(true);
        _thread::yield();
        if (_thread::running->isSuspended()) return SEM_THREAD_SUSPENDED;
    }
    else sem->val-=n;
    80002838:	412585bb          	subw	a1,a1,s2
    8000283c:	00b52023          	sw	a1,0(a0)
    return 0;
    80002840:	00000513          	li	a0,0
}
    80002844:	02813083          	ld	ra,40(sp)
    80002848:	02013403          	ld	s0,32(sp)
    8000284c:	01813483          	ld	s1,24(sp)
    80002850:	01013903          	ld	s2,16(sp)
    80002854:	00813983          	ld	s3,8(sp)
    80002858:	03010113          	addi	sp,sp,48
    8000285c:	00008067          	ret
        semElem* new_elem=(semElem*)MemUnit::mem_alloc(blocks);
    80002860:	00100513          	li	a0,1
    80002864:	00001097          	auipc	ra,0x1
    80002868:	af8080e7          	jalr	-1288(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    8000286c:	00050993          	mv	s3,a0
        new_elem->val=n;
    80002870:	01252023          	sw	s2,0(a0)
        new_elem->thread=_thread::running;
    80002874:	00009797          	auipc	a5,0x9
    80002878:	4a47b783          	ld	a5,1188(a5) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000287c:	0007b783          	ld	a5,0(a5)
    80002880:	00f53423          	sd	a5,8(a0)
        sem->blocked->add(new_elem);
    80002884:	0084b483          	ld	s1,8(s1)
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
    80002888:	00100513          	li	a0,1
    8000288c:	00001097          	auipc	ra,0x1
    80002890:	ad0080e7          	jalr	-1328(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
        new_elem->data=data;
    80002894:	01353023          	sd	s3,0(a0)
        new_elem->next=nullptr;
    80002898:	00053423          	sd	zero,8(a0)
        if(head==nullptr)head=new_elem;
    8000289c:	0004b783          	ld	a5,0(s1)
    800028a0:	04078063          	beqz	a5,800028e0 <_ZN4_sem7semWaitEPS_j+0xd8>
        else tail->next=new_elem;
    800028a4:	0084b783          	ld	a5,8(s1)
    800028a8:	00a7b423          	sd	a0,8(a5)
        tail=new_elem;
    800028ac:	00a4b423          	sd	a0,8(s1)
        _thread::running->setSuspended(true);
    800028b0:	00009497          	auipc	s1,0x9
    800028b4:	4684b483          	ld	s1,1128(s1) # 8000bd18 <_GLOBAL_OFFSET_TABLE_+0x30>
    800028b8:	0004b783          	ld	a5,0(s1)

    void setFinished(bool finished){this->finished=finished;}

    bool isSuspended(){return suspended;}

    void setSuspended(bool suspended){this->suspended=suspended;}
    800028bc:	00100713          	li	a4,1
    800028c0:	04e780a3          	sb	a4,65(a5)
        _thread::yield();
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	180080e7          	jalr	384(ra) # 80001a44 <_ZN7_thread5yieldEv>
        if (_thread::running->isSuspended()) return SEM_THREAD_SUSPENDED;
    800028cc:	0004b783          	ld	a5,0(s1)
    bool isSuspended(){return suspended;}
    800028d0:	0417c783          	lbu	a5,65(a5)
    800028d4:	00079e63          	bnez	a5,800028f0 <_ZN4_sem7semWaitEPS_j+0xe8>
    return 0;
    800028d8:	00000513          	li	a0,0
    800028dc:	f69ff06f          	j	80002844 <_ZN4_sem7semWaitEPS_j+0x3c>
        if(head==nullptr)head=new_elem;
    800028e0:	00a4b023          	sd	a0,0(s1)
    800028e4:	fc9ff06f          	j	800028ac <_ZN4_sem7semWaitEPS_j+0xa4>
    if (!sem) return SEM_NULL_ERR;
    800028e8:	fff00513          	li	a0,-1
}
    800028ec:	00008067          	ret
        if (_thread::running->isSuspended()) return SEM_THREAD_SUSPENDED;
    800028f0:	fff00513          	li	a0,-1
    800028f4:	f51ff06f          	j	80002844 <_ZN4_sem7semWaitEPS_j+0x3c>

00000000800028f8 <_ZN4_sem9semSignalEPS_j>:

int _sem::semSignal(_sem* sem,unsigned n){
    if (!sem) return SEM_NULL_ERR;
    800028f8:	0a050c63          	beqz	a0,800029b0 <_ZN4_sem9semSignalEPS_j+0xb8>
int _sem::semSignal(_sem* sem,unsigned n){
    800028fc:	fd010113          	addi	sp,sp,-48
    80002900:	02113423          	sd	ra,40(sp)
    80002904:	02813023          	sd	s0,32(sp)
    80002908:	00913c23          	sd	s1,24(sp)
    8000290c:	01213823          	sd	s2,16(sp)
    80002910:	01313423          	sd	s3,8(sp)
    80002914:	03010413          	addi	s0,sp,48
    80002918:	00050913          	mv	s2,a0
    sem->val+=n;
    8000291c:	00052783          	lw	a5,0(a0)
    80002920:	00b785bb          	addw	a1,a5,a1
    80002924:	00b52023          	sw	a1,0(a0)
    semElem* head=sem->blocked->peek();
    80002928:	00853783          	ld	a5,8(a0)
        if (head) return head->data;
    8000292c:	0007b483          	ld	s1,0(a5)
    80002930:	04048663          	beqz	s1,8000297c <_ZN4_sem9semSignalEPS_j+0x84>
    80002934:	0004b483          	ld	s1,0(s1)
    80002938:	0440006f          	j	8000297c <_ZN4_sem9semSignalEPS_j+0x84>
        if (!head) tail=nullptr;
    8000293c:	0007b423          	sd	zero,8(a5)
        T* data=node->data;
    80002940:	00053483          	ld	s1,0(a0)
        MemUnit::mem_free(node);
    80002944:	00001097          	auipc	ra,0x1
    80002948:	ae8080e7          	jalr	-1304(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    while (head && head->val<=sem->val)
    {
        head=sem->blocked->get();
        _thread* retThread=head->thread;
    8000294c:	0084b983          	ld	s3,8(s1)
    void setSuspended(bool suspended){this->suspended=suspended;}
    80002950:	040980a3          	sb	zero,65(s3)
        retThread->setSuspended(false);
        sem->val-=head->val;
    80002954:	0004a703          	lw	a4,0(s1)
    80002958:	00092783          	lw	a5,0(s2)
    8000295c:	40e787bb          	subw	a5,a5,a4
    80002960:	00f92023          	sw	a5,0(s2)
        MemUnit::mem_free(head);
    80002964:	00048513          	mv	a0,s1
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	ac4080e7          	jalr	-1340(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
        Scheduler::put(retThread);
    80002970:	00098513          	mv	a0,s3
    80002974:	00000097          	auipc	ra,0x0
    80002978:	554080e7          	jalr	1364(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    while (head && head->val<=sem->val)
    8000297c:	02048e63          	beqz	s1,800029b8 <_ZN4_sem9semSignalEPS_j+0xc0>
    80002980:	0004a703          	lw	a4,0(s1)
    80002984:	00092783          	lw	a5,0(s2)
    80002988:	04e7e863          	bltu	a5,a4,800029d8 <_ZN4_sem9semSignalEPS_j+0xe0>
        head=sem->blocked->get();
    8000298c:	00893783          	ld	a5,8(s2)
        if (!head) return nullptr;
    80002990:	0007b503          	ld	a0,0(a5)
    80002994:	00050a63          	beqz	a0,800029a8 <_ZN4_sem9semSignalEPS_j+0xb0>
        head=head->next;
    80002998:	00853703          	ld	a4,8(a0)
    8000299c:	00e7b023          	sd	a4,0(a5)
        if (!head) tail=nullptr;
    800029a0:	fa0710e3          	bnez	a4,80002940 <_ZN4_sem9semSignalEPS_j+0x48>
    800029a4:	f99ff06f          	j	8000293c <_ZN4_sem9semSignalEPS_j+0x44>
        if (!head) return nullptr;
    800029a8:	00050493          	mv	s1,a0
    800029ac:	fa1ff06f          	j	8000294c <_ZN4_sem9semSignalEPS_j+0x54>
    if (!sem) return SEM_NULL_ERR;
    800029b0:	fff00513          	li	a0,-1

    }
    return 0;
}
    800029b4:	00008067          	ret
    return 0;
    800029b8:	00000513          	li	a0,0
}
    800029bc:	02813083          	ld	ra,40(sp)
    800029c0:	02013403          	ld	s0,32(sp)
    800029c4:	01813483          	ld	s1,24(sp)
    800029c8:	01013903          	ld	s2,16(sp)
    800029cc:	00813983          	ld	s3,8(sp)
    800029d0:	03010113          	addi	sp,sp,48
    800029d4:	00008067          	ret
    return 0;
    800029d8:	00000513          	li	a0,0
    800029dc:	fe1ff06f          	j	800029bc <_ZN4_sem9semSignalEPS_j+0xc4>

00000000800029e0 <_ZN11ConsoleUnit4initEv>:
int ConsoleUnit::inputHead=0;
int ConsoleUnit::inputTail=0;

_sem* ConsoleUnit::mutex=nullptr;

void ConsoleUnit::init(){
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00113423          	sd	ra,8(sp)
    800029e8:	00813023          	sd	s0,0(sp)
    800029ec:	01010413          	addi	s0,sp,16
    size_t sz=(bufferSize+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    outputBuffer=(char*)MemUnit::mem_alloc(sz);
    800029f0:	00100513          	li	a0,1
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	968080e7          	jalr	-1688(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    800029fc:	00009797          	auipc	a5,0x9
    80002a00:	3ca7ba23          	sd	a0,980(a5) # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    for (int i=0;i<64;i++) outputBuffer[i]=51;
    80002a04:	00000793          	li	a5,0
    80002a08:	03f00713          	li	a4,63
    80002a0c:	02f74063          	blt	a4,a5,80002a2c <_ZN11ConsoleUnit4initEv+0x4c>
    80002a10:	00009717          	auipc	a4,0x9
    80002a14:	3c073703          	ld	a4,960(a4) # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    80002a18:	00f70733          	add	a4,a4,a5
    80002a1c:	03300693          	li	a3,51
    80002a20:	00d70023          	sb	a3,0(a4)
    80002a24:	0017879b          	addiw	a5,a5,1
    80002a28:	fe1ff06f          	j	80002a08 <_ZN11ConsoleUnit4initEv+0x28>
    _sem::createSem(&outputCharAvailable,0);
    80002a2c:	00000593          	li	a1,0
    80002a30:	00009517          	auipc	a0,0x9
    80002a34:	3a850513          	addi	a0,a0,936 # 8000bdd8 <_ZN11ConsoleUnit19outputCharAvailableE>
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	ca0080e7          	jalr	-864(ra) # 800026d8 <_ZN4_sem9createSemEPPS_j>
    _sem::createSem(&outputSpaceAvailable,bufferSize);
    80002a40:	04000593          	li	a1,64
    80002a44:	00009517          	auipc	a0,0x9
    80002a48:	39c50513          	addi	a0,a0,924 # 8000bde0 <_ZN11ConsoleUnit20outputSpaceAvailableE>
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	c8c080e7          	jalr	-884(ra) # 800026d8 <_ZN4_sem9createSemEPPS_j>

    inputBuffer=(char*)MemUnit::mem_alloc(sz);
    80002a54:	00100513          	li	a0,1
    80002a58:	00001097          	auipc	ra,0x1
    80002a5c:	904080e7          	jalr	-1788(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80002a60:	00009797          	auipc	a5,0x9
    80002a64:	38a7b423          	sd	a0,904(a5) # 8000bde8 <_ZN11ConsoleUnit11inputBufferE>
    for (int i=0;i<64;i++) inputBuffer[i]=53;
    80002a68:	00000793          	li	a5,0
    80002a6c:	01c0006f          	j	80002a88 <_ZN11ConsoleUnit4initEv+0xa8>
    80002a70:	00009717          	auipc	a4,0x9
    80002a74:	37873703          	ld	a4,888(a4) # 8000bde8 <_ZN11ConsoleUnit11inputBufferE>
    80002a78:	00f70733          	add	a4,a4,a5
    80002a7c:	03500693          	li	a3,53
    80002a80:	00d70023          	sb	a3,0(a4)
    80002a84:	0017879b          	addiw	a5,a5,1
    80002a88:	03f00713          	li	a4,63
    80002a8c:	fef752e3          	bge	a4,a5,80002a70 <_ZN11ConsoleUnit4initEv+0x90>
    _sem::createSem(&inputCharAvailable,0);
    80002a90:	00000593          	li	a1,0
    80002a94:	00009517          	auipc	a0,0x9
    80002a98:	35c50513          	addi	a0,a0,860 # 8000bdf0 <_ZN11ConsoleUnit18inputCharAvailableE>
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	c3c080e7          	jalr	-964(ra) # 800026d8 <_ZN4_sem9createSemEPPS_j>
    _sem::createSem(&inputSpaceAvailable,bufferSize);
    80002aa4:	04000593          	li	a1,64
    80002aa8:	00009517          	auipc	a0,0x9
    80002aac:	35050513          	addi	a0,a0,848 # 8000bdf8 <_ZN11ConsoleUnit19inputSpaceAvailableE>
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	c28080e7          	jalr	-984(ra) # 800026d8 <_ZN4_sem9createSemEPPS_j>

    _sem::createSem(&mutex,0);
    80002ab8:	00000593          	li	a1,0
    80002abc:	00009517          	auipc	a0,0x9
    80002ac0:	34450513          	addi	a0,a0,836 # 8000be00 <_ZN11ConsoleUnit5mutexE>
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	c14080e7          	jalr	-1004(ra) # 800026d8 <_ZN4_sem9createSemEPPS_j>
}
    80002acc:	00813083          	ld	ra,8(sp)
    80002ad0:	00013403          	ld	s0,0(sp)
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret

0000000080002adc <_ZN11ConsoleUnit4freeEv>:

void ConsoleUnit::free(){
    80002adc:	fe010113          	addi	sp,sp,-32
    80002ae0:	00113c23          	sd	ra,24(sp)
    80002ae4:	00813823          	sd	s0,16(sp)
    80002ae8:	00913423          	sd	s1,8(sp)
    80002aec:	02010413          	addi	s0,sp,32
    MemUnit::mem_free(inputBuffer);
    80002af0:	00009497          	auipc	s1,0x9
    80002af4:	2e048493          	addi	s1,s1,736 # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    80002af8:	0184b503          	ld	a0,24(s1)
    80002afc:	00001097          	auipc	ra,0x1
    80002b00:	930080e7          	jalr	-1744(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    MemUnit::mem_free(outputBuffer);
    80002b04:	0004b503          	ld	a0,0(s1)
    80002b08:	00001097          	auipc	ra,0x1
    80002b0c:	924080e7          	jalr	-1756(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    _sem::deleteSem(mutex);
    80002b10:	0304b503          	ld	a0,48(s1)
    80002b14:	00000097          	auipc	ra,0x0
    80002b18:	c3c080e7          	jalr	-964(ra) # 80002750 <_ZN4_sem9deleteSemEPS_>
    _sem::deleteSem(inputCharAvailable);
    80002b1c:	0204b503          	ld	a0,32(s1)
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	c30080e7          	jalr	-976(ra) # 80002750 <_ZN4_sem9deleteSemEPS_>
    _sem::deleteSem(inputSpaceAvailable);
    80002b28:	0284b503          	ld	a0,40(s1)
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	c24080e7          	jalr	-988(ra) # 80002750 <_ZN4_sem9deleteSemEPS_>
    _sem::deleteSem(outputCharAvailable);
    80002b34:	0084b503          	ld	a0,8(s1)
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	c18080e7          	jalr	-1000(ra) # 80002750 <_ZN4_sem9deleteSemEPS_>
    _sem::deleteSem(outputSpaceAvailable);
    80002b40:	0104b503          	ld	a0,16(s1)
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	c0c080e7          	jalr	-1012(ra) # 80002750 <_ZN4_sem9deleteSemEPS_>

}
    80002b4c:	01813083          	ld	ra,24(sp)
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	00813483          	ld	s1,8(sp)
    80002b58:	02010113          	addi	sp,sp,32
    80002b5c:	00008067          	ret

0000000080002b60 <_ZN11ConsoleUnit15putOutputBufferEc>:

void ConsoleUnit::putOutputBuffer(char c){
    80002b60:	fe010113          	addi	sp,sp,-32
    80002b64:	00113c23          	sd	ra,24(sp)
    80002b68:	00813823          	sd	s0,16(sp)
    80002b6c:	00913423          	sd	s1,8(sp)
    80002b70:	01213023          	sd	s2,0(sp)
    80002b74:	02010413          	addi	s0,sp,32
    80002b78:	00050913          	mv	s2,a0
    _sem::semWait(outputSpaceAvailable,1);
    80002b7c:	00009497          	auipc	s1,0x9
    80002b80:	25448493          	addi	s1,s1,596 # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    80002b84:	00100593          	li	a1,1
    80002b88:	0104b503          	ld	a0,16(s1)
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	c7c080e7          	jalr	-900(ra) # 80002808 <_ZN4_sem7semWaitEPS_j>
    outputBuffer[outputTail]=c;
    80002b94:	0384a703          	lw	a4,56(s1)
    80002b98:	0004b783          	ld	a5,0(s1)
    80002b9c:	00e787b3          	add	a5,a5,a4
    80002ba0:	01278023          	sb	s2,0(a5)
    outputTail=(outputTail+1)%bufferSize;
    80002ba4:	0384a783          	lw	a5,56(s1)
    80002ba8:	0017879b          	addiw	a5,a5,1
    80002bac:	41f7d71b          	sraiw	a4,a5,0x1f
    80002bb0:	01a7571b          	srliw	a4,a4,0x1a
    80002bb4:	00e787bb          	addw	a5,a5,a4
    80002bb8:	03f7f793          	andi	a5,a5,63
    80002bbc:	40e787bb          	subw	a5,a5,a4
    80002bc0:	02f4ac23          	sw	a5,56(s1)
    _sem::semSignal(outputCharAvailable,1);
    80002bc4:	00100593          	li	a1,1
    80002bc8:	0084b503          	ld	a0,8(s1)
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	d2c080e7          	jalr	-724(ra) # 800028f8 <_ZN4_sem9semSignalEPS_j>
}
    80002bd4:	01813083          	ld	ra,24(sp)
    80002bd8:	01013403          	ld	s0,16(sp)
    80002bdc:	00813483          	ld	s1,8(sp)
    80002be0:	00013903          	ld	s2,0(sp)
    80002be4:	02010113          	addi	sp,sp,32
    80002be8:	00008067          	ret

0000000080002bec <_ZN11ConsoleUnit15getOutputBufferEv>:

char ConsoleUnit::getOutputBuffer(){
    80002bec:	fe010113          	addi	sp,sp,-32
    80002bf0:	00113c23          	sd	ra,24(sp)
    80002bf4:	00813823          	sd	s0,16(sp)
    80002bf8:	00913423          	sd	s1,8(sp)
    80002bfc:	01213023          	sd	s2,0(sp)
    80002c00:	02010413          	addi	s0,sp,32
    sem_wait(outputCharAvailable);
    80002c04:	00009497          	auipc	s1,0x9
    80002c08:	1cc48493          	addi	s1,s1,460 # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    80002c0c:	0084b503          	ld	a0,8(s1)
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	848080e7          	jalr	-1976(ra) # 80001458 <_Z8sem_waitP4_sem>
    char c=outputBuffer[outputHead];
    80002c18:	03c4a783          	lw	a5,60(s1)
    80002c1c:	0004b703          	ld	a4,0(s1)
    80002c20:	00f70733          	add	a4,a4,a5
    80002c24:	00074903          	lbu	s2,0(a4)
    outputHead=(outputHead+1)%bufferSize;
    80002c28:	0017879b          	addiw	a5,a5,1
    80002c2c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002c30:	01a7571b          	srliw	a4,a4,0x1a
    80002c34:	00e787bb          	addw	a5,a5,a4
    80002c38:	03f7f793          	andi	a5,a5,63
    80002c3c:	40e787bb          	subw	a5,a5,a4
    80002c40:	02f4ae23          	sw	a5,60(s1)
    sem_signal(outputSpaceAvailable);
    80002c44:	0104b503          	ld	a0,16(s1)
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	840080e7          	jalr	-1984(ra) # 80001488 <_Z10sem_signalP4_sem>
    return c;
}
    80002c50:	00090513          	mv	a0,s2
    80002c54:	01813083          	ld	ra,24(sp)
    80002c58:	01013403          	ld	s0,16(sp)
    80002c5c:	00813483          	ld	s1,8(sp)
    80002c60:	00013903          	ld	s2,0(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret

0000000080002c6c <_Z9runOutputPv>:
void runOutput(void*){
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00113423          	sd	ra,8(sp)
    80002c74:	00813023          	sd	s0,0(sp)
    80002c78:	01010413          	addi	s0,sp,16
    80002c7c:	00c0006f          	j	80002c88 <_Z9runOutputPv+0x1c>
        thread_dispatch();
    80002c80:	ffffe097          	auipc	ra,0xffffe
    80002c84:	750080e7          	jalr	1872(ra) # 800013d0 <_Z15thread_dispatchv>
        uint8 status=RISCV::readConStatus();
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	9fc080e7          	jalr	-1540(ra) # 80002684 <_ZN5RISCV13readConStatusEv>
        while ((status & CONSOLE_TX_STATUS_BIT)!=0){
    80002c90:	02057513          	andi	a0,a0,32
    80002c94:	fe0506e3          	beqz	a0,80002c80 <_Z9runOutputPv+0x14>
            char c=ConsoleUnit::getOutputBuffer();
    80002c98:	00000097          	auipc	ra,0x0
    80002c9c:	f54080e7          	jalr	-172(ra) # 80002bec <_ZN11ConsoleUnit15getOutputBufferEv>
            RISCV::writeConTX(c);
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	9bc080e7          	jalr	-1604(ra) # 8000265c <_ZN5RISCV10writeConTXEc>
            status=RISCV::readConStatus();
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	9dc080e7          	jalr	-1572(ra) # 80002684 <_ZN5RISCV13readConStatusEv>
        while ((status & CONSOLE_TX_STATUS_BIT)!=0){
    80002cb0:	fe1ff06f          	j	80002c90 <_Z9runOutputPv+0x24>

0000000080002cb4 <_ZN11ConsoleUnit14putInputBufferEc>:

void ConsoleUnit::putInputBuffer(char c){
    80002cb4:	fe010113          	addi	sp,sp,-32
    80002cb8:	00113c23          	sd	ra,24(sp)
    80002cbc:	00813823          	sd	s0,16(sp)
    80002cc0:	00913423          	sd	s1,8(sp)
    80002cc4:	01213023          	sd	s2,0(sp)
    80002cc8:	02010413          	addi	s0,sp,32
    80002ccc:	00050913          	mv	s2,a0
    sem_wait(inputSpaceAvailable);
    80002cd0:	00009497          	auipc	s1,0x9
    80002cd4:	10048493          	addi	s1,s1,256 # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    80002cd8:	0284b503          	ld	a0,40(s1)
    80002cdc:	ffffe097          	auipc	ra,0xffffe
    80002ce0:	77c080e7          	jalr	1916(ra) # 80001458 <_Z8sem_waitP4_sem>
    inputBuffer[inputTail]=c;
    80002ce4:	0404a703          	lw	a4,64(s1)
    80002ce8:	0184b783          	ld	a5,24(s1)
    80002cec:	00e787b3          	add	a5,a5,a4
    80002cf0:	01278023          	sb	s2,0(a5)
    inputTail=(inputTail+1)%bufferSize;
    80002cf4:	0404a783          	lw	a5,64(s1)
    80002cf8:	0017879b          	addiw	a5,a5,1
    80002cfc:	41f7d71b          	sraiw	a4,a5,0x1f
    80002d00:	01a7571b          	srliw	a4,a4,0x1a
    80002d04:	00e787bb          	addw	a5,a5,a4
    80002d08:	03f7f793          	andi	a5,a5,63
    80002d0c:	40e787bb          	subw	a5,a5,a4
    80002d10:	04f4a023          	sw	a5,64(s1)
    sem_signal(inputCharAvailable);
    80002d14:	0204b503          	ld	a0,32(s1)
    80002d18:	ffffe097          	auipc	ra,0xffffe
    80002d1c:	770080e7          	jalr	1904(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80002d20:	01813083          	ld	ra,24(sp)
    80002d24:	01013403          	ld	s0,16(sp)
    80002d28:	00813483          	ld	s1,8(sp)
    80002d2c:	00013903          	ld	s2,0(sp)
    80002d30:	02010113          	addi	sp,sp,32
    80002d34:	00008067          	ret

0000000080002d38 <_ZN11ConsoleUnit14getInputBufferEv>:

char ConsoleUnit::getInputBuffer(){
    80002d38:	fe010113          	addi	sp,sp,-32
    80002d3c:	00113c23          	sd	ra,24(sp)
    80002d40:	00813823          	sd	s0,16(sp)
    80002d44:	00913423          	sd	s1,8(sp)
    80002d48:	01213023          	sd	s2,0(sp)
    80002d4c:	02010413          	addi	s0,sp,32
    _sem::semWait(inputCharAvailable,1);
    80002d50:	00009497          	auipc	s1,0x9
    80002d54:	08048493          	addi	s1,s1,128 # 8000bdd0 <_ZN11ConsoleUnit12outputBufferE>
    80002d58:	00100593          	li	a1,1
    80002d5c:	0204b503          	ld	a0,32(s1)
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	aa8080e7          	jalr	-1368(ra) # 80002808 <_ZN4_sem7semWaitEPS_j>
    char c=inputBuffer[inputHead];
    80002d68:	0444a783          	lw	a5,68(s1)
    80002d6c:	0184b703          	ld	a4,24(s1)
    80002d70:	00f70733          	add	a4,a4,a5
    80002d74:	00074903          	lbu	s2,0(a4)
    inputHead=(inputHead+1)%bufferSize;
    80002d78:	0017879b          	addiw	a5,a5,1
    80002d7c:	41f7d71b          	sraiw	a4,a5,0x1f
    80002d80:	01a7571b          	srliw	a4,a4,0x1a
    80002d84:	00e787bb          	addw	a5,a5,a4
    80002d88:	03f7f793          	andi	a5,a5,63
    80002d8c:	40e787bb          	subw	a5,a5,a4
    80002d90:	04f4a223          	sw	a5,68(s1)
    _sem::semSignal(inputSpaceAvailable,1);
    80002d94:	00100593          	li	a1,1
    80002d98:	0284b503          	ld	a0,40(s1)
    80002d9c:	00000097          	auipc	ra,0x0
    80002da0:	b5c080e7          	jalr	-1188(ra) # 800028f8 <_ZN4_sem9semSignalEPS_j>
    return c;
}
    80002da4:	00090513          	mv	a0,s2
    80002da8:	01813083          	ld	ra,24(sp)
    80002dac:	01013403          	ld	s0,16(sp)
    80002db0:	00813483          	ld	s1,8(sp)
    80002db4:	00013903          	ld	s2,0(sp)
    80002db8:	02010113          	addi	sp,sp,32
    80002dbc:	00008067          	ret

0000000080002dc0 <_ZN11ConsoleUnit11signalInputEv>:

void ConsoleUnit::signalInput(){
    80002dc0:	ff010113          	addi	sp,sp,-16
    80002dc4:	00113423          	sd	ra,8(sp)
    80002dc8:	00813023          	sd	s0,0(sp)
    80002dcc:	01010413          	addi	s0,sp,16
    _sem::semSignal(mutex,1);
    80002dd0:	00100593          	li	a1,1
    80002dd4:	00009517          	auipc	a0,0x9
    80002dd8:	02c53503          	ld	a0,44(a0) # 8000be00 <_ZN11ConsoleUnit5mutexE>
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	b1c080e7          	jalr	-1252(ra) # 800028f8 <_ZN4_sem9semSignalEPS_j>
}
    80002de4:	00813083          	ld	ra,8(sp)
    80002de8:	00013403          	ld	s0,0(sp)
    80002dec:	01010113          	addi	sp,sp,16
    80002df0:	00008067          	ret

0000000080002df4 <_ZN11ConsoleUnit9waitInputEv>:

void ConsoleUnit::waitInput(){
    80002df4:	ff010113          	addi	sp,sp,-16
    80002df8:	00113423          	sd	ra,8(sp)
    80002dfc:	00813023          	sd	s0,0(sp)
    80002e00:	01010413          	addi	s0,sp,16
    sem_wait(mutex);
    80002e04:	00009517          	auipc	a0,0x9
    80002e08:	ffc53503          	ld	a0,-4(a0) # 8000be00 <_ZN11ConsoleUnit5mutexE>
    80002e0c:	ffffe097          	auipc	ra,0xffffe
    80002e10:	64c080e7          	jalr	1612(ra) # 80001458 <_Z8sem_waitP4_sem>
}
    80002e14:	00813083          	ld	ra,8(sp)
    80002e18:	00013403          	ld	s0,0(sp)
    80002e1c:	01010113          	addi	sp,sp,16
    80002e20:	00008067          	ret

0000000080002e24 <_Z8runInputPv>:
void runInput(void*){
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00113423          	sd	ra,8(sp)
    80002e2c:	00813023          	sd	s0,0(sp)
    80002e30:	01010413          	addi	s0,sp,16
    80002e34:	01c0006f          	j	80002e50 <_Z8runInputPv+0x2c>
        int v=plic_claim();
    80002e38:	00004097          	auipc	ra,0x4
    80002e3c:	6dc080e7          	jalr	1756(ra) # 80007514 <plic_claim>
        plic_complete(v);
    80002e40:	00004097          	auipc	ra,0x4
    80002e44:	70c080e7          	jalr	1804(ra) # 8000754c <plic_complete>
        thread_dispatch();
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	588080e7          	jalr	1416(ra) # 800013d0 <_Z15thread_dispatchv>
        ConsoleUnit::waitInput();
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	fa4080e7          	jalr	-92(ra) # 80002df4 <_ZN11ConsoleUnit9waitInputEv>
        uint8 status=RISCV::readConStatus();
    80002e58:	00000097          	auipc	ra,0x0
    80002e5c:	82c080e7          	jalr	-2004(ra) # 80002684 <_ZN5RISCV13readConStatusEv>
        while ((status & CONSOLE_RX_STATUS_BIT)!=0){
    80002e60:	00157513          	andi	a0,a0,1
    80002e64:	fc050ae3          	beqz	a0,80002e38 <_Z8runInputPv+0x14>
            char c=RISCV::readConRX();
    80002e68:	fffff097          	auipc	ra,0xfffff
    80002e6c:	7c8080e7          	jalr	1992(ra) # 80002630 <_ZN5RISCV9readConRXEv>
            ConsoleUnit::putInputBuffer(c);
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	e44080e7          	jalr	-444(ra) # 80002cb4 <_ZN11ConsoleUnit14putInputBufferEc>
            status=RISCV::readConStatus();
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	80c080e7          	jalr	-2036(ra) # 80002684 <_ZN5RISCV13readConStatusEv>
        while ((status & CONSOLE_RX_STATUS_BIT)!=0){
    80002e80:	fe1ff06f          	j	80002e60 <_Z8runInputPv+0x3c>

0000000080002e84 <_ZN11ConsoleUnit9putStringEPKc>:

void ConsoleUnit::putString(const char* string){
    80002e84:	fe010113          	addi	sp,sp,-32
    80002e88:	00113c23          	sd	ra,24(sp)
    80002e8c:	00813823          	sd	s0,16(sp)
    80002e90:	00913423          	sd	s1,8(sp)
    80002e94:	02010413          	addi	s0,sp,32
    80002e98:	00050493          	mv	s1,a0
    while (*string!='\0'){
    80002e9c:	0004c503          	lbu	a0,0(s1)
    80002ea0:	00050a63          	beqz	a0,80002eb4 <_ZN11ConsoleUnit9putStringEPKc+0x30>
        putOutputBuffer(*string);
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	cbc080e7          	jalr	-836(ra) # 80002b60 <_ZN11ConsoleUnit15putOutputBufferEc>
        string++;
    80002eac:	00148493          	addi	s1,s1,1
    while (*string!='\0'){
    80002eb0:	fedff06f          	j	80002e9c <_ZN11ConsoleUnit9putStringEPKc+0x18>
    }
}
    80002eb4:	01813083          	ld	ra,24(sp)
    80002eb8:	01013403          	ld	s0,16(sp)
    80002ebc:	00813483          	ld	s1,8(sp)
    80002ec0:	02010113          	addi	sp,sp,32
    80002ec4:	00008067          	ret

0000000080002ec8 <_ZN9Scheduler3putEP7_thread>:
#include "../h/scheduler.hpp"
List<_thread> Scheduler::schedulerList;

void Scheduler::put(_thread* thread){
    80002ec8:	fe010113          	addi	sp,sp,-32
    80002ecc:	00113c23          	sd	ra,24(sp)
    80002ed0:	00813823          	sd	s0,16(sp)
    80002ed4:	00913423          	sd	s1,8(sp)
    80002ed8:	02010413          	addi	s0,sp,32
    80002edc:	00050493          	mv	s1,a0
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
    80002ee0:	00100513          	li	a0,1
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	478080e7          	jalr	1144(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
        new_elem->data=data;
    80002eec:	00953023          	sd	s1,0(a0)
        new_elem->next=nullptr;
    80002ef0:	00053423          	sd	zero,8(a0)
        if(head==nullptr)head=new_elem;
    80002ef4:	00009797          	auipc	a5,0x9
    80002ef8:	f247b783          	ld	a5,-220(a5) # 8000be18 <_ZN9Scheduler13schedulerListE>
    80002efc:	02078663          	beqz	a5,80002f28 <_ZN9Scheduler3putEP7_thread+0x60>
        else tail->next=new_elem;
    80002f00:	00009797          	auipc	a5,0x9
    80002f04:	f207b783          	ld	a5,-224(a5) # 8000be20 <_ZN9Scheduler13schedulerListE+0x8>
    80002f08:	00a7b423          	sd	a0,8(a5)
        tail=new_elem;
    80002f0c:	00009797          	auipc	a5,0x9
    80002f10:	f0a7ba23          	sd	a0,-236(a5) # 8000be20 <_ZN9Scheduler13schedulerListE+0x8>
    schedulerList.add(thread);
}
    80002f14:	01813083          	ld	ra,24(sp)
    80002f18:	01013403          	ld	s0,16(sp)
    80002f1c:	00813483          	ld	s1,8(sp)
    80002f20:	02010113          	addi	sp,sp,32
    80002f24:	00008067          	ret
        if(head==nullptr)head=new_elem;
    80002f28:	00009797          	auipc	a5,0x9
    80002f2c:	eea7b823          	sd	a0,-272(a5) # 8000be18 <_ZN9Scheduler13schedulerListE>
    80002f30:	fddff06f          	j	80002f0c <_ZN9Scheduler3putEP7_thread+0x44>

0000000080002f34 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get(){
    80002f34:	fe010113          	addi	sp,sp,-32
    80002f38:	00113c23          	sd	ra,24(sp)
    80002f3c:	00813823          	sd	s0,16(sp)
    80002f40:	00913423          	sd	s1,8(sp)
    80002f44:	02010413          	addi	s0,sp,32
        if (!head) return nullptr;
    80002f48:	00009517          	auipc	a0,0x9
    80002f4c:	ed053503          	ld	a0,-304(a0) # 8000be18 <_ZN9Scheduler13schedulerListE>
    80002f50:	04050263          	beqz	a0,80002f94 <_ZN9Scheduler3getEv+0x60>
        head=head->next;
    80002f54:	00853783          	ld	a5,8(a0)
    80002f58:	00009717          	auipc	a4,0x9
    80002f5c:	ecf73023          	sd	a5,-320(a4) # 8000be18 <_ZN9Scheduler13schedulerListE>
        if (!head) tail=nullptr;
    80002f60:	02078463          	beqz	a5,80002f88 <_ZN9Scheduler3getEv+0x54>
        T* data=node->data;
    80002f64:	00053483          	ld	s1,0(a0)
        MemUnit::mem_free(node);
    80002f68:	00000097          	auipc	ra,0x0
    80002f6c:	4c4080e7          	jalr	1220(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    return schedulerList.get();
}
    80002f70:	00048513          	mv	a0,s1
    80002f74:	01813083          	ld	ra,24(sp)
    80002f78:	01013403          	ld	s0,16(sp)
    80002f7c:	00813483          	ld	s1,8(sp)
    80002f80:	02010113          	addi	sp,sp,32
    80002f84:	00008067          	ret
        if (!head) tail=nullptr;
    80002f88:	00009797          	auipc	a5,0x9
    80002f8c:	e807bc23          	sd	zero,-360(a5) # 8000be20 <_ZN9Scheduler13schedulerListE+0x8>
    80002f90:	fd5ff06f          	j	80002f64 <_ZN9Scheduler3getEv+0x30>
        if (!head) return nullptr;
    80002f94:	00050493          	mv	s1,a0
    return schedulerList.get();
    80002f98:	fd9ff06f          	j	80002f70 <_ZN9Scheduler3getEv+0x3c>

0000000080002f9c <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty(){
    80002f9c:	ff010113          	addi	sp,sp,-16
    80002fa0:	00813423          	sd	s0,8(sp)
    80002fa4:	01010413          	addi	s0,sp,16
        if (head) return false;
    80002fa8:	00009797          	auipc	a5,0x9
    80002fac:	e707b783          	ld	a5,-400(a5) # 8000be18 <_ZN9Scheduler13schedulerListE>
    80002fb0:	00078a63          	beqz	a5,80002fc4 <_ZN9Scheduler7isEmptyEv+0x28>
    80002fb4:	00000513          	li	a0,0
    return schedulerList.isEmpty();
}
    80002fb8:	00813403          	ld	s0,8(sp)
    80002fbc:	01010113          	addi	sp,sp,16
    80002fc0:	00008067          	ret
        return true;
    80002fc4:	00100513          	li	a0,1
    80002fc8:	ff1ff06f          	j	80002fb8 <_ZN9Scheduler7isEmptyEv+0x1c>

0000000080002fcc <_ZN9Scheduler10putAtStartEP7_thread>:

void Scheduler::putAtStart(_thread* thread){
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	02010413          	addi	s0,sp,32
    80002fe0:	00050493          	mv	s1,a0
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
    80002fe4:	00100513          	li	a0,1
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	374080e7          	jalr	884(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
        new_elem->data=data;
    80002ff0:	00953023          	sd	s1,0(a0)
        new_elem->next=head;
    80002ff4:	00009797          	auipc	a5,0x9
    80002ff8:	e2478793          	addi	a5,a5,-476 # 8000be18 <_ZN9Scheduler13schedulerListE>
    80002ffc:	0007b703          	ld	a4,0(a5)
    80003000:	00e53423          	sd	a4,8(a0)
        head=new_elem;
    80003004:	00a7b023          	sd	a0,0(a5)
        if (tail==nullptr) tail=new_elem;
    80003008:	0087b783          	ld	a5,8(a5)
    8000300c:	00078c63          	beqz	a5,80003024 <_ZN9Scheduler10putAtStartEP7_thread+0x58>
    schedulerList.addAtStart(thread);
}
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	02010113          	addi	sp,sp,32
    80003020:	00008067          	ret
    80003024:	00009797          	auipc	a5,0x9
    80003028:	dea7be23          	sd	a0,-516(a5) # 8000be20 <_ZN9Scheduler13schedulerListE+0x8>
    8000302c:	fe5ff06f          	j	80003010 <_ZN9Scheduler10putAtStartEP7_thread+0x44>

0000000080003030 <_ZN9Scheduler4freeEv>:

void Scheduler::free(){
    80003030:	ff010113          	addi	sp,sp,-16
    80003034:	00113423          	sd	ra,8(sp)
    80003038:	00813023          	sd	s0,0(sp)
    8000303c:	01010413          	addi	s0,sp,16
    while (!isEmpty()) get();
    80003040:	00000097          	auipc	ra,0x0
    80003044:	f5c080e7          	jalr	-164(ra) # 80002f9c <_ZN9Scheduler7isEmptyEv>
    80003048:	00051863          	bnez	a0,80003058 <_ZN9Scheduler4freeEv+0x28>
    8000304c:	00000097          	auipc	ra,0x0
    80003050:	ee8080e7          	jalr	-280(ra) # 80002f34 <_ZN9Scheduler3getEv>
    80003054:	fedff06f          	j	80003040 <_ZN9Scheduler4freeEv+0x10>
}
    80003058:	00813083          	ld	ra,8(sp)
    8000305c:	00013403          	ld	s0,0(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret

0000000080003068 <_Z3cmpP5EventS0_>:
#include "../h/event_list.hpp"
List<Event> EventList::eventList;

bool cmp(Event* a,Event* b){
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00813423          	sd	s0,8(sp)
    80003070:	01010413          	addi	s0,sp,16
    if (a->time<b->time){
    80003074:	00853783          	ld	a5,8(a0)
    80003078:	0085b703          	ld	a4,8(a1)
    8000307c:	00e7ee63          	bltu	a5,a4,80003098 <_Z3cmpP5EventS0_+0x30>
        b->time-=a->time;
        return false;
    }
    a->time-=b->time;
    80003080:	40e787b3          	sub	a5,a5,a4
    80003084:	00f53423          	sd	a5,8(a0)
    return true;
    80003088:	00100513          	li	a0,1
}
    8000308c:	00813403          	ld	s0,8(sp)
    80003090:	01010113          	addi	sp,sp,16
    80003094:	00008067          	ret
        b->time-=a->time;
    80003098:	40f707b3          	sub	a5,a4,a5
    8000309c:	00f5b423          	sd	a5,8(a1)
        return false;
    800030a0:	00000513          	li	a0,0
    800030a4:	fe9ff06f          	j	8000308c <_Z3cmpP5EventS0_+0x24>

00000000800030a8 <_ZN9EventList3putEP7_threadm>:

void EventList::put(_thread* thread,time_t time){
    if (time==0) return;
    800030a8:	00059463          	bnez	a1,800030b0 <_ZN9EventList3putEP7_threadm+0x8>
    800030ac:	00008067          	ret
void EventList::put(_thread* thread,time_t time){
    800030b0:	fd010113          	addi	sp,sp,-48
    800030b4:	02113423          	sd	ra,40(sp)
    800030b8:	02813023          	sd	s0,32(sp)
    800030bc:	00913c23          	sd	s1,24(sp)
    800030c0:	01213823          	sd	s2,16(sp)
    800030c4:	01313423          	sd	s3,8(sp)
    800030c8:	03010413          	addi	s0,sp,48
    800030cc:	00050913          	mv	s2,a0
    800030d0:	00058493          	mv	s1,a1

    void setFinished(bool finished){this->finished=finished;}
    800030d4:	00100793          	li	a5,1
    800030d8:	04f50023          	sb	a5,64(a0)
    thread->setFinished(true);
    size_t mem=(sizeof(Event)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    Event* new_elem = (Event*)MemUnit::mem_alloc(mem);
    800030dc:	00100513          	li	a0,1
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	27c080e7          	jalr	636(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    800030e8:	00050993          	mv	s3,a0
    new_elem->thread=thread;
    800030ec:	01253023          	sd	s2,0(a0)
    new_elem->time=time;
    800030f0:	00953423          	sd	s1,8(a0)
        Elem* new_elem = (Elem*)MemUnit::mem_alloc(mem);
    800030f4:	00100513          	li	a0,1
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	264080e7          	jalr	612(ra) # 8000335c <_ZN7MemUnit9mem_allocEm>
    80003100:	00050913          	mv	s2,a0
        new_elem->data=data;
    80003104:	01353023          	sd	s3,0(a0)
        new_elem->next=nullptr;
    80003108:	00053423          	sd	zero,8(a0)
        Elem* curr=head;
    8000310c:	00009497          	auipc	s1,0x9
    80003110:	d1c4b483          	ld	s1,-740(s1) # 8000be28 <_ZN9EventList9eventListE>
        Elem* prev=nullptr;
    80003114:	00000993          	li	s3,0
    80003118:	00c0006f          	j	80003124 <_ZN9EventList3putEP7_threadm+0x7c>
            prev=curr;
    8000311c:	00048993          	mv	s3,s1
            curr=curr->next;
    80003120:	0084b483          	ld	s1,8(s1)
        while (curr && cmp(new_elem->data,curr->data)){
    80003124:	00048c63          	beqz	s1,8000313c <_ZN9EventList3putEP7_threadm+0x94>
    80003128:	0004b583          	ld	a1,0(s1)
    8000312c:	00093503          	ld	a0,0(s2)
    80003130:	00000097          	auipc	ra,0x0
    80003134:	f38080e7          	jalr	-200(ra) # 80003068 <_Z3cmpP5EventS0_>
    80003138:	fe0512e3          	bnez	a0,8000311c <_ZN9EventList3putEP7_threadm+0x74>
        if (prev) prev->next=new_elem;
    8000313c:	02098663          	beqz	s3,80003168 <_ZN9EventList3putEP7_threadm+0xc0>
    80003140:	0129b423          	sd	s2,8(s3)
        new_elem->next=curr;
    80003144:	00993423          	sd	s1,8(s2)
        if (!curr){
    80003148:	02048663          	beqz	s1,80003174 <_ZN9EventList3putEP7_threadm+0xcc>
    eventList.addSorted(new_elem,cmp);
}
    8000314c:	02813083          	ld	ra,40(sp)
    80003150:	02013403          	ld	s0,32(sp)
    80003154:	01813483          	ld	s1,24(sp)
    80003158:	01013903          	ld	s2,16(sp)
    8000315c:	00813983          	ld	s3,8(sp)
    80003160:	03010113          	addi	sp,sp,48
    80003164:	00008067          	ret
        else head=new_elem;
    80003168:	00009797          	auipc	a5,0x9
    8000316c:	cd27b023          	sd	s2,-832(a5) # 8000be28 <_ZN9EventList9eventListE>
    80003170:	fd5ff06f          	j	80003144 <_ZN9EventList3putEP7_threadm+0x9c>
            tail=new_elem;
    80003174:	00009797          	auipc	a5,0x9
    80003178:	cb27be23          	sd	s2,-836(a5) # 8000be30 <_ZN9EventList9eventListE+0x8>
    }
    8000317c:	fd1ff06f          	j	8000314c <_ZN9EventList3putEP7_threadm+0xa4>

0000000080003180 <_ZN9EventList3retEv>:
            head=eventList.peek();
        }
    }
}

void EventList::ret(){
    80003180:	fe010113          	addi	sp,sp,-32
    80003184:	00113c23          	sd	ra,24(sp)
    80003188:	00813823          	sd	s0,16(sp)
    8000318c:	00913423          	sd	s1,8(sp)
    80003190:	02010413          	addi	s0,sp,32
        if (!head) return nullptr;
    80003194:	00009517          	auipc	a0,0x9
    80003198:	c9453503          	ld	a0,-876(a0) # 8000be28 <_ZN9EventList9eventListE>
    8000319c:	06050063          	beqz	a0,800031fc <_ZN9EventList3retEv+0x7c>
        head=head->next;
    800031a0:	00853783          	ld	a5,8(a0)
    800031a4:	00009717          	auipc	a4,0x9
    800031a8:	c8f73223          	sd	a5,-892(a4) # 8000be28 <_ZN9EventList9eventListE>
        if (!head) tail=nullptr;
    800031ac:	04078263          	beqz	a5,800031f0 <_ZN9EventList3retEv+0x70>
        T* data=node->data;
    800031b0:	00053483          	ld	s1,0(a0)
        MemUnit::mem_free(node);
    800031b4:	00000097          	auipc	ra,0x0
    800031b8:	278080e7          	jalr	632(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    Event* head=eventList.get();
    Scheduler::put(head->thread);
    800031bc:	0004b503          	ld	a0,0(s1)
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	d08080e7          	jalr	-760(ra) # 80002ec8 <_ZN9Scheduler3putEP7_thread>
    head->thread->setFinished(false);
    800031c8:	0004b783          	ld	a5,0(s1)
    800031cc:	04078023          	sb	zero,64(a5)
    MemUnit::mem_free(head);
    800031d0:	00048513          	mv	a0,s1
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	258080e7          	jalr	600(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
}
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	02010113          	addi	sp,sp,32
    800031ec:	00008067          	ret
        if (!head) tail=nullptr;
    800031f0:	00009797          	auipc	a5,0x9
    800031f4:	c407b023          	sd	zero,-960(a5) # 8000be30 <_ZN9EventList9eventListE+0x8>
    800031f8:	fb9ff06f          	j	800031b0 <_ZN9EventList3retEv+0x30>
        if (!head) return nullptr;
    800031fc:	00050493          	mv	s1,a0
    80003200:	fbdff06f          	j	800031bc <_ZN9EventList3retEv+0x3c>

0000000080003204 <_ZN9EventList5alertEv>:
        if (head) return head->data;
    80003204:	00009797          	auipc	a5,0x9
    80003208:	c247b783          	ld	a5,-988(a5) # 8000be28 <_ZN9EventList9eventListE>
    8000320c:	06078663          	beqz	a5,80003278 <_ZN9EventList5alertEv+0x74>
    80003210:	0007b783          	ld	a5,0(a5)
    if (head){
    80003214:	06078263          	beqz	a5,80003278 <_ZN9EventList5alertEv+0x74>
        head->time--;
    80003218:	0087b703          	ld	a4,8(a5)
    8000321c:	fff70713          	addi	a4,a4,-1
    80003220:	00e7b423          	sd	a4,8(a5)
        while (head && head->time==0){
    80003224:	04078a63          	beqz	a5,80003278 <_ZN9EventList5alertEv+0x74>
    80003228:	0087b783          	ld	a5,8(a5)
    8000322c:	04079663          	bnez	a5,80003278 <_ZN9EventList5alertEv+0x74>
void EventList::alert(){
    80003230:	ff010113          	addi	sp,sp,-16
    80003234:	00113423          	sd	ra,8(sp)
    80003238:	00813023          	sd	s0,0(sp)
    8000323c:	01010413          	addi	s0,sp,16
    80003240:	00c0006f          	j	8000324c <_ZN9EventList5alertEv+0x48>
        while (head && head->time==0){
    80003244:	0087b783          	ld	a5,8(a5)
    80003248:	02079063          	bnez	a5,80003268 <_ZN9EventList5alertEv+0x64>
            ret();
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	f34080e7          	jalr	-204(ra) # 80003180 <_ZN9EventList3retEv>
    80003254:	00009797          	auipc	a5,0x9
    80003258:	bd47b783          	ld	a5,-1068(a5) # 8000be28 <_ZN9EventList9eventListE>
    8000325c:	00078663          	beqz	a5,80003268 <_ZN9EventList5alertEv+0x64>
    80003260:	0007b783          	ld	a5,0(a5)
        while (head && head->time==0){
    80003264:	fe0790e3          	bnez	a5,80003244 <_ZN9EventList5alertEv+0x40>
}
    80003268:	00813083          	ld	ra,8(sp)
    8000326c:	00013403          	ld	s0,0(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret
    80003278:	00008067          	ret

000000008000327c <_ZN9EventList7isEmptyEv>:

bool EventList::isEmpty(){
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00813423          	sd	s0,8(sp)
    80003284:	01010413          	addi	s0,sp,16
        if (head) return false;
    80003288:	00009797          	auipc	a5,0x9
    8000328c:	ba07b783          	ld	a5,-1120(a5) # 8000be28 <_ZN9EventList9eventListE>
    80003290:	00078a63          	beqz	a5,800032a4 <_ZN9EventList7isEmptyEv+0x28>
    80003294:	00000513          	li	a0,0
    return eventList.isEmpty();
}
    80003298:	00813403          	ld	s0,8(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret
        return true;
    800032a4:	00100513          	li	a0,1
    800032a8:	ff1ff06f          	j	80003298 <_ZN9EventList7isEmptyEv+0x1c>

00000000800032ac <_ZN9EventList4freeEv>:

void EventList::free(){
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00113423          	sd	ra,8(sp)
    800032b4:	00813023          	sd	s0,0(sp)
    800032b8:	01010413          	addi	s0,sp,16
    800032bc:	0140006f          	j	800032d0 <_ZN9EventList4freeEv+0x24>
        if (!head) tail=nullptr;
    800032c0:	00009797          	auipc	a5,0x9
    800032c4:	b607b823          	sd	zero,-1168(a5) # 8000be30 <_ZN9EventList9eventListE+0x8>
        MemUnit::mem_free(node);
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	164080e7          	jalr	356(ra) # 8000342c <_ZN7MemUnit8mem_freeEPv>
    while (!isEmpty()) eventList.get();
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	fac080e7          	jalr	-84(ra) # 8000327c <_ZN9EventList7isEmptyEv>
    800032d8:	02051263          	bnez	a0,800032fc <_ZN9EventList4freeEv+0x50>
        if (!head) return nullptr;
    800032dc:	00009517          	auipc	a0,0x9
    800032e0:	b4c53503          	ld	a0,-1204(a0) # 8000be28 <_ZN9EventList9eventListE>
    800032e4:	fe0506e3          	beqz	a0,800032d0 <_ZN9EventList4freeEv+0x24>
        head=head->next;
    800032e8:	00853783          	ld	a5,8(a0)
    800032ec:	00009717          	auipc	a4,0x9
    800032f0:	b2f73e23          	sd	a5,-1220(a4) # 8000be28 <_ZN9EventList9eventListE>
        if (!head) tail=nullptr;
    800032f4:	fc079ae3          	bnez	a5,800032c8 <_ZN9EventList4freeEv+0x1c>
    800032f8:	fc9ff06f          	j	800032c0 <_ZN9EventList4freeEv+0x14>
}
    800032fc:	00813083          	ld	ra,8(sp)
    80003300:	00013403          	ld	s0,0(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret

000000008000330c <_ZN7MemUnit8mem_initEv>:
const int PTR_NULL_ERR=-1;
const int ADDR_OUT_OF_BOUNDS_ERR=-2;

MemUnit::FreeNode* MemUnit::free_list = nullptr;

void MemUnit::mem_init(){
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00813423          	sd	s0,8(sp)
    80003314:	01010413          	addi	s0,sp,16
    free_list = (FreeNode*)HEAP_START_ADDR;
    80003318:	00009797          	auipc	a5,0x9
    8000331c:	9f87b783          	ld	a5,-1544(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003320:	0007b703          	ld	a4,0(a5)
    80003324:	00009697          	auipc	a3,0x9
    80003328:	b1468693          	addi	a3,a3,-1260 # 8000be38 <_ZN7MemUnit9free_listE>
    8000332c:	00e6b023          	sd	a4,0(a3)
    free_list->size=(size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80003330:	00009797          	auipc	a5,0x9
    80003334:	a107b783          	ld	a5,-1520(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003338:	0007b783          	ld	a5,0(a5)
    8000333c:	40e787b3          	sub	a5,a5,a4
    80003340:	0067d793          	srli	a5,a5,0x6
    80003344:	00f73023          	sd	a5,0(a4)
    free_list->next=nullptr;
    80003348:	0006b783          	ld	a5,0(a3)
    8000334c:	0007b423          	sd	zero,8(a5)
}
    80003350:	00813403          	ld	s0,8(sp)
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00008067          	ret

000000008000335c <_ZN7MemUnit9mem_allocEm>:

void* MemUnit::mem_alloc(size_t size)
{
    8000335c:	ff010113          	addi	sp,sp,-16
    80003360:	00813423          	sd	s0,8(sp)
    80003364:	01010413          	addi	s0,sp,16
    size_t sz=size+1;
    80003368:	00150713          	addi	a4,a0,1
    FreeNode* prev = nullptr;
    FreeNode* node = free_list;
    8000336c:	00009517          	auipc	a0,0x9
    80003370:	acc53503          	ld	a0,-1332(a0) # 8000be38 <_ZN7MemUnit9free_listE>
    FreeNode* prev = nullptr;
    80003374:	00000693          	li	a3,0
    while (node){
    80003378:	00050c63          	beqz	a0,80003390 <_ZN7MemUnit9mem_allocEm+0x34>
        if (node->size >= sz) break;
    8000337c:	00053783          	ld	a5,0(a0)
    80003380:	00e7f863          	bgeu	a5,a4,80003390 <_ZN7MemUnit9mem_allocEm+0x34>
        prev = node;
    80003384:	00050693          	mv	a3,a0
        node=node->next;
    80003388:	00853503          	ld	a0,8(a0)
    while (node){
    8000338c:	fedff06f          	j	80003378 <_ZN7MemUnit9mem_allocEm+0x1c>
    }
    if (node==nullptr){
    80003390:	02050a63          	beqz	a0,800033c4 <_ZN7MemUnit9mem_allocEm+0x68>
        return nullptr;
    }
    if (node->size ==sz){
    80003394:	00053783          	ld	a5,0(a0)
    80003398:	02e78c63          	beq	a5,a4,800033d0 <_ZN7MemUnit9mem_allocEm+0x74>
        if (prev) prev->next=node->next;
        else free_list=node->next;
    }
    else{
        FreeNode* newNode=(FreeNode*)((char*)node+sz*MEM_BLOCK_SIZE);
    8000339c:	00671613          	slli	a2,a4,0x6
    800033a0:	00c50633          	add	a2,a0,a2
        newNode->size=node->size-sz;
    800033a4:	40e787b3          	sub	a5,a5,a4
    800033a8:	00f63023          	sd	a5,0(a2)
        newNode->next=node->next;
    800033ac:	00853783          	ld	a5,8(a0)
    800033b0:	00f63423          	sd	a5,8(a2)
        if (prev) prev->next=newNode;
    800033b4:	02068e63          	beqz	a3,800033f0 <_ZN7MemUnit9mem_allocEm+0x94>
    800033b8:	00c6b423          	sd	a2,8(a3)
        else free_list=newNode;
    }
    *(size_t*)node=sz;
    800033bc:	00e53023          	sd	a4,0(a0)
    return (void*)((char*)node+MEM_BLOCK_SIZE);
    800033c0:	04050513          	addi	a0,a0,64
}
    800033c4:	00813403          	ld	s0,8(sp)
    800033c8:	01010113          	addi	sp,sp,16
    800033cc:	00008067          	ret
        if (prev) prev->next=node->next;
    800033d0:	00068863          	beqz	a3,800033e0 <_ZN7MemUnit9mem_allocEm+0x84>
    800033d4:	00853783          	ld	a5,8(a0)
    800033d8:	00f6b423          	sd	a5,8(a3)
    800033dc:	fe1ff06f          	j	800033bc <_ZN7MemUnit9mem_allocEm+0x60>
        else free_list=node->next;
    800033e0:	00853783          	ld	a5,8(a0)
    800033e4:	00009697          	auipc	a3,0x9
    800033e8:	a4f6ba23          	sd	a5,-1452(a3) # 8000be38 <_ZN7MemUnit9free_listE>
    800033ec:	fd1ff06f          	j	800033bc <_ZN7MemUnit9mem_allocEm+0x60>
        else free_list=newNode;
    800033f0:	00009797          	auipc	a5,0x9
    800033f4:	a4c7b423          	sd	a2,-1464(a5) # 8000be38 <_ZN7MemUnit9free_listE>
    800033f8:	fc5ff06f          	j	800033bc <_ZN7MemUnit9mem_allocEm+0x60>

00000000800033fc <_ZN7MemUnit11merge_nodesEPNS_9free_nodeES1_>:
    ptr=nullptr;
    return 0;

}

void MemUnit::merge_nodes(FreeNode* prev, FreeNode* next){
    800033fc:	ff010113          	addi	sp,sp,-16
    80003400:	00813423          	sd	s0,8(sp)
    80003404:	01010413          	addi	s0,sp,16
    prev->next=next->next;
    80003408:	0085b783          	ld	a5,8(a1)
    8000340c:	00f53423          	sd	a5,8(a0)
    prev->size+=next->size;
    80003410:	0005b703          	ld	a4,0(a1)
    80003414:	00053783          	ld	a5,0(a0)
    80003418:	00e787b3          	add	a5,a5,a4
    8000341c:	00f53023          	sd	a5,0(a0)
}
    80003420:	00813403          	ld	s0,8(sp)
    80003424:	01010113          	addi	sp,sp,16
    80003428:	00008067          	ret

000000008000342c <_ZN7MemUnit8mem_freeEPv>:
    if (!ptr) return PTR_NULL_ERR;
    8000342c:	0e050463          	beqz	a0,80003514 <_ZN7MemUnit8mem_freeEPv+0xe8>
int MemUnit::mem_free(void* ptr){
    80003430:	fe010113          	addi	sp,sp,-32
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00813823          	sd	s0,16(sp)
    8000343c:	00913423          	sd	s1,8(sp)
    80003440:	01213023          	sd	s2,0(sp)
    80003444:	02010413          	addi	s0,sp,32
    FreeNode* node=(FreeNode*)((char*)ptr-MEM_BLOCK_SIZE);
    80003448:	fc050493          	addi	s1,a0,-64
    if (node<HEAP_START_ADDR || node>HEAP_END_ADDR) return ADDR_OUT_OF_BOUNDS_ERR;
    8000344c:	00009797          	auipc	a5,0x9
    80003450:	8c47b783          	ld	a5,-1852(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003454:	0007b783          	ld	a5,0(a5)
    80003458:	0cf4e263          	bltu	s1,a5,8000351c <_ZN7MemUnit8mem_freeEPv+0xf0>
    8000345c:	00009797          	auipc	a5,0x9
    80003460:	8e47b783          	ld	a5,-1820(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003464:	0007b703          	ld	a4,0(a5)
    80003468:	0a976e63          	bltu	a4,s1,80003524 <_ZN7MemUnit8mem_freeEPv+0xf8>
    size_t sz=*(size_t*)node;
    8000346c:	fc053783          	ld	a5,-64(a0)
    if ((char*)node + sz * MEM_BLOCK_SIZE > HEAP_END_ADDR) return ADDR_OUT_OF_BOUNDS_ERR;
    80003470:	00679793          	slli	a5,a5,0x6
    80003474:	00f487b3          	add	a5,s1,a5
    80003478:	0af76a63          	bltu	a4,a5,8000352c <_ZN7MemUnit8mem_freeEPv+0x100>
    FreeNode* next=free_list;
    8000347c:	00009597          	auipc	a1,0x9
    80003480:	9bc5b583          	ld	a1,-1604(a1) # 8000be38 <_ZN7MemUnit9free_listE>
    FreeNode* prev=nullptr;
    80003484:	00000913          	li	s2,0
    while (next){
    80003488:	00058a63          	beqz	a1,8000349c <_ZN7MemUnit8mem_freeEPv+0x70>
        if (next>node) break;
    8000348c:	00b4e863          	bltu	s1,a1,8000349c <_ZN7MemUnit8mem_freeEPv+0x70>
        prev=next;
    80003490:	00058913          	mv	s2,a1
        next=next->next;
    80003494:	0085b583          	ld	a1,8(a1)
    while (next){
    80003498:	ff1ff06f          	j	80003488 <_ZN7MemUnit8mem_freeEPv+0x5c>
    if (prev) prev->next=node;
    8000349c:	04090263          	beqz	s2,800034e0 <_ZN7MemUnit8mem_freeEPv+0xb4>
    800034a0:	00993423          	sd	s1,8(s2)
    node->next=next;
    800034a4:	fcb53423          	sd	a1,-56(a0)
    if (next && (char*)node+sz*MEM_BLOCK_SIZE==(char*)next) merge_nodes(node,next);
    800034a8:	00058463          	beqz	a1,800034b0 <_ZN7MemUnit8mem_freeEPv+0x84>
    800034ac:	04b78063          	beq	a5,a1,800034ec <_ZN7MemUnit8mem_freeEPv+0xc0>
    if (prev && (char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)node) merge_nodes(prev,node);
    800034b0:	08090263          	beqz	s2,80003534 <_ZN7MemUnit8mem_freeEPv+0x108>
    800034b4:	00093783          	ld	a5,0(s2)
    800034b8:	00679793          	slli	a5,a5,0x6
    800034bc:	00f907b3          	add	a5,s2,a5
    800034c0:	02978e63          	beq	a5,s1,800034fc <_ZN7MemUnit8mem_freeEPv+0xd0>
    return 0;
    800034c4:	00000513          	li	a0,0
}
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	00013903          	ld	s2,0(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret
    else free_list=node;
    800034e0:	00009717          	auipc	a4,0x9
    800034e4:	94973c23          	sd	s1,-1704(a4) # 8000be38 <_ZN7MemUnit9free_listE>
    800034e8:	fbdff06f          	j	800034a4 <_ZN7MemUnit8mem_freeEPv+0x78>
    if (next && (char*)node+sz*MEM_BLOCK_SIZE==(char*)next) merge_nodes(node,next);
    800034ec:	00048513          	mv	a0,s1
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	f0c080e7          	jalr	-244(ra) # 800033fc <_ZN7MemUnit11merge_nodesEPNS_9free_nodeES1_>
    800034f8:	fb9ff06f          	j	800034b0 <_ZN7MemUnit8mem_freeEPv+0x84>
    if (prev && (char*)prev+prev->size*MEM_BLOCK_SIZE==(char*)node) merge_nodes(prev,node);
    800034fc:	00048593          	mv	a1,s1
    80003500:	00090513          	mv	a0,s2
    80003504:	00000097          	auipc	ra,0x0
    80003508:	ef8080e7          	jalr	-264(ra) # 800033fc <_ZN7MemUnit11merge_nodesEPNS_9free_nodeES1_>
    return 0;
    8000350c:	00000513          	li	a0,0
    80003510:	fb9ff06f          	j	800034c8 <_ZN7MemUnit8mem_freeEPv+0x9c>
    if (!ptr) return PTR_NULL_ERR;
    80003514:	fff00513          	li	a0,-1
}
    80003518:	00008067          	ret
    if (node<HEAP_START_ADDR || node>HEAP_END_ADDR) return ADDR_OUT_OF_BOUNDS_ERR;
    8000351c:	ffe00513          	li	a0,-2
    80003520:	fa9ff06f          	j	800034c8 <_ZN7MemUnit8mem_freeEPv+0x9c>
    80003524:	ffe00513          	li	a0,-2
    80003528:	fa1ff06f          	j	800034c8 <_ZN7MemUnit8mem_freeEPv+0x9c>
    if ((char*)node + sz * MEM_BLOCK_SIZE > HEAP_END_ADDR) return ADDR_OUT_OF_BOUNDS_ERR;
    8000352c:	ffe00513          	li	a0,-2
    80003530:	f99ff06f          	j	800034c8 <_ZN7MemUnit8mem_freeEPv+0x9c>
    return 0;
    80003534:	00000513          	li	a0,0
    80003538:	f91ff06f          	j	800034c8 <_ZN7MemUnit8mem_freeEPv+0x9c>

000000008000353c <_ZN7MemUnit6isFullEv>:

bool MemUnit::isFull(){
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00813423          	sd	s0,8(sp)
    80003544:	01010413          	addi	s0,sp,16
    if (free_list->next==nullptr && free_list->size==((size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE)) return true;
    80003548:	00009797          	auipc	a5,0x9
    8000354c:	8f07b783          	ld	a5,-1808(a5) # 8000be38 <_ZN7MemUnit9free_listE>
    80003550:	0087b703          	ld	a4,8(a5)
    80003554:	00070a63          	beqz	a4,80003568 <_ZN7MemUnit6isFullEv+0x2c>
    return false;
    80003558:	00000513          	li	a0,0
}
    8000355c:	00813403          	ld	s0,8(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret
    if (free_list->next==nullptr && free_list->size==((size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE)) return true;
    80003568:	0007b703          	ld	a4,0(a5)
    8000356c:	00008797          	auipc	a5,0x8
    80003570:	7d47b783          	ld	a5,2004(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x58>
    80003574:	0007b783          	ld	a5,0(a5)
    80003578:	00008697          	auipc	a3,0x8
    8000357c:	7986b683          	ld	a3,1944(a3) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003580:	0006b683          	ld	a3,0(a3)
    80003584:	40d787b3          	sub	a5,a5,a3
    80003588:	0067d793          	srli	a5,a5,0x6
    8000358c:	00f70663          	beq	a4,a5,80003598 <_ZN7MemUnit6isFullEv+0x5c>
    return false;
    80003590:	00000513          	li	a0,0
    80003594:	fc9ff06f          	j	8000355c <_ZN7MemUnit6isFullEv+0x20>
    if (free_list->next==nullptr && free_list->size==((size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE)) return true;
    80003598:	00100513          	li	a0,1
    8000359c:	fc1ff06f          	j	8000355c <_ZN7MemUnit6isFullEv+0x20>

00000000800035a0 <_ZN7MemUnit8fullFreeEv>:

void MemUnit::fullFree(){
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00813423          	sd	s0,8(sp)
    800035a8:	01010413          	addi	s0,sp,16
    free_list = (FreeNode*)HEAP_START_ADDR;
    800035ac:	00008797          	auipc	a5,0x8
    800035b0:	7647b783          	ld	a5,1892(a5) # 8000bd10 <_GLOBAL_OFFSET_TABLE_+0x28>
    800035b4:	0007b703          	ld	a4,0(a5)
    800035b8:	00009697          	auipc	a3,0x9
    800035bc:	88068693          	addi	a3,a3,-1920 # 8000be38 <_ZN7MemUnit9free_listE>
    800035c0:	00e6b023          	sd	a4,0(a3)
    free_list->size=(size_t)((char*)HEAP_END_ADDR-(char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    800035c4:	00008797          	auipc	a5,0x8
    800035c8:	77c7b783          	ld	a5,1916(a5) # 8000bd40 <_GLOBAL_OFFSET_TABLE_+0x58>
    800035cc:	0007b783          	ld	a5,0(a5)
    800035d0:	40e787b3          	sub	a5,a5,a4
    800035d4:	0067d793          	srli	a5,a5,0x6
    800035d8:	00f73023          	sd	a5,0(a4)
    free_list->next=nullptr;
    800035dc:	0006b783          	ld	a5,0(a3)
    800035e0:	0007b423          	sd	zero,8(a5)
}
    800035e4:	00813403          	ld	s0,8(sp)
    800035e8:	01010113          	addi	sp,sp,16
    800035ec:	00008067          	ret

00000000800035f0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	00813823          	sd	s0,16(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	01213023          	sd	s2,0(sp)
    80003604:	02010413          	addi	s0,sp,32
    80003608:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000360c:	00000913          	li	s2,0
    80003610:	00c0006f          	j	8000361c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	dbc080e7          	jalr	-580(ra) # 800013d0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	f3c080e7          	jalr	-196(ra) # 80001558 <_Z4getcv>
    80003624:	0005059b          	sext.w	a1,a0
    80003628:	01b00793          	li	a5,27
    8000362c:	02f58a63          	beq	a1,a5,80003660 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003630:	0084b503          	ld	a0,8(s1)
    80003634:	00003097          	auipc	ra,0x3
    80003638:	400080e7          	jalr	1024(ra) # 80006a34 <_ZN6Buffer3putEi>
        i++;
    8000363c:	0019071b          	addiw	a4,s2,1
    80003640:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003644:	0004a683          	lw	a3,0(s1)
    80003648:	0026979b          	slliw	a5,a3,0x2
    8000364c:	00d787bb          	addw	a5,a5,a3
    80003650:	0017979b          	slliw	a5,a5,0x1
    80003654:	02f767bb          	remw	a5,a4,a5
    80003658:	fc0792e3          	bnez	a5,8000361c <_ZL16producerKeyboardPv+0x2c>
    8000365c:	fb9ff06f          	j	80003614 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003660:	00100793          	li	a5,1
    80003664:	00008717          	auipc	a4,0x8
    80003668:	7cf72e23          	sw	a5,2012(a4) # 8000be40 <_ZL9threadEnd>
    data->buffer->put('!');
    8000366c:	02100593          	li	a1,33
    80003670:	0084b503          	ld	a0,8(s1)
    80003674:	00003097          	auipc	ra,0x3
    80003678:	3c0080e7          	jalr	960(ra) # 80006a34 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000367c:	0104b503          	ld	a0,16(s1)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	e08080e7          	jalr	-504(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    80003688:	01813083          	ld	ra,24(sp)
    8000368c:	01013403          	ld	s0,16(sp)
    80003690:	00813483          	ld	s1,8(sp)
    80003694:	00013903          	ld	s2,0(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret

00000000800036a0 <_ZL8producerPv>:

static void producer(void *arg) {
    800036a0:	fe010113          	addi	sp,sp,-32
    800036a4:	00113c23          	sd	ra,24(sp)
    800036a8:	00813823          	sd	s0,16(sp)
    800036ac:	00913423          	sd	s1,8(sp)
    800036b0:	01213023          	sd	s2,0(sp)
    800036b4:	02010413          	addi	s0,sp,32
    800036b8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800036bc:	00000913          	li	s2,0
    800036c0:	00c0006f          	j	800036cc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	d0c080e7          	jalr	-756(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800036cc:	00008797          	auipc	a5,0x8
    800036d0:	7747a783          	lw	a5,1908(a5) # 8000be40 <_ZL9threadEnd>
    800036d4:	02079e63          	bnez	a5,80003710 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800036d8:	0004a583          	lw	a1,0(s1)
    800036dc:	0305859b          	addiw	a1,a1,48
    800036e0:	0084b503          	ld	a0,8(s1)
    800036e4:	00003097          	auipc	ra,0x3
    800036e8:	350080e7          	jalr	848(ra) # 80006a34 <_ZN6Buffer3putEi>
        i++;
    800036ec:	0019071b          	addiw	a4,s2,1
    800036f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800036f4:	0004a683          	lw	a3,0(s1)
    800036f8:	0026979b          	slliw	a5,a3,0x2
    800036fc:	00d787bb          	addw	a5,a5,a3
    80003700:	0017979b          	slliw	a5,a5,0x1
    80003704:	02f767bb          	remw	a5,a4,a5
    80003708:	fc0792e3          	bnez	a5,800036cc <_ZL8producerPv+0x2c>
    8000370c:	fb9ff06f          	j	800036c4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003710:	0104b503          	ld	a0,16(s1)
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	d74080e7          	jalr	-652(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    8000371c:	01813083          	ld	ra,24(sp)
    80003720:	01013403          	ld	s0,16(sp)
    80003724:	00813483          	ld	s1,8(sp)
    80003728:	00013903          	ld	s2,0(sp)
    8000372c:	02010113          	addi	sp,sp,32
    80003730:	00008067          	ret

0000000080003734 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003734:	fd010113          	addi	sp,sp,-48
    80003738:	02113423          	sd	ra,40(sp)
    8000373c:	02813023          	sd	s0,32(sp)
    80003740:	00913c23          	sd	s1,24(sp)
    80003744:	01213823          	sd	s2,16(sp)
    80003748:	01313423          	sd	s3,8(sp)
    8000374c:	03010413          	addi	s0,sp,48
    80003750:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003754:	00000993          	li	s3,0
    80003758:	01c0006f          	j	80003774 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	c74080e7          	jalr	-908(ra) # 800013d0 <_Z15thread_dispatchv>
    80003764:	0500006f          	j	800037b4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003768:	00a00513          	li	a0,10
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	e14080e7          	jalr	-492(ra) # 80001580 <_Z4putcc>
    while (!threadEnd) {
    80003774:	00008797          	auipc	a5,0x8
    80003778:	6cc7a783          	lw	a5,1740(a5) # 8000be40 <_ZL9threadEnd>
    8000377c:	06079063          	bnez	a5,800037dc <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003780:	00893503          	ld	a0,8(s2)
    80003784:	00003097          	auipc	ra,0x3
    80003788:	340080e7          	jalr	832(ra) # 80006ac4 <_ZN6Buffer3getEv>
        i++;
    8000378c:	0019849b          	addiw	s1,s3,1
    80003790:	0004899b          	sext.w	s3,s1
        putc(key);
    80003794:	0ff57513          	andi	a0,a0,255
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	de8080e7          	jalr	-536(ra) # 80001580 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800037a0:	00092703          	lw	a4,0(s2)
    800037a4:	0027179b          	slliw	a5,a4,0x2
    800037a8:	00e787bb          	addw	a5,a5,a4
    800037ac:	02f4e7bb          	remw	a5,s1,a5
    800037b0:	fa0786e3          	beqz	a5,8000375c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800037b4:	05000793          	li	a5,80
    800037b8:	02f4e4bb          	remw	s1,s1,a5
    800037bc:	fa049ce3          	bnez	s1,80003774 <_ZL8consumerPv+0x40>
    800037c0:	fa9ff06f          	j	80003768 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800037c4:	00893503          	ld	a0,8(s2)
    800037c8:	00003097          	auipc	ra,0x3
    800037cc:	2fc080e7          	jalr	764(ra) # 80006ac4 <_ZN6Buffer3getEv>
        putc(key);
    800037d0:	0ff57513          	andi	a0,a0,255
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	dac080e7          	jalr	-596(ra) # 80001580 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800037dc:	00893503          	ld	a0,8(s2)
    800037e0:	00003097          	auipc	ra,0x3
    800037e4:	370080e7          	jalr	880(ra) # 80006b50 <_ZN6Buffer6getCntEv>
    800037e8:	fca04ee3          	bgtz	a0,800037c4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800037ec:	01093503          	ld	a0,16(s2)
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	c98080e7          	jalr	-872(ra) # 80001488 <_Z10sem_signalP4_sem>
}
    800037f8:	02813083          	ld	ra,40(sp)
    800037fc:	02013403          	ld	s0,32(sp)
    80003800:	01813483          	ld	s1,24(sp)
    80003804:	01013903          	ld	s2,16(sp)
    80003808:	00813983          	ld	s3,8(sp)
    8000380c:	03010113          	addi	sp,sp,48
    80003810:	00008067          	ret

0000000080003814 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003814:	f9010113          	addi	sp,sp,-112
    80003818:	06113423          	sd	ra,104(sp)
    8000381c:	06813023          	sd	s0,96(sp)
    80003820:	04913c23          	sd	s1,88(sp)
    80003824:	05213823          	sd	s2,80(sp)
    80003828:	05313423          	sd	s3,72(sp)
    8000382c:	05413023          	sd	s4,64(sp)
    80003830:	03513c23          	sd	s5,56(sp)
    80003834:	03613823          	sd	s6,48(sp)
    80003838:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000383c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003840:	00006517          	auipc	a0,0x6
    80003844:	95850513          	addi	a0,a0,-1704 # 80009198 <CONSOLE_STATUS+0x188>
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	220080e7          	jalr	544(ra) # 80005a68 <_Z11printStringPKc>
    getString(input, 30);
    80003850:	01e00593          	li	a1,30
    80003854:	fa040493          	addi	s1,s0,-96
    80003858:	00048513          	mv	a0,s1
    8000385c:	00002097          	auipc	ra,0x2
    80003860:	294080e7          	jalr	660(ra) # 80005af0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003864:	00048513          	mv	a0,s1
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	360080e7          	jalr	864(ra) # 80005bc8 <_Z11stringToIntPKc>
    80003870:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003874:	00006517          	auipc	a0,0x6
    80003878:	94450513          	addi	a0,a0,-1724 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	1ec080e7          	jalr	492(ra) # 80005a68 <_Z11printStringPKc>
    getString(input, 30);
    80003884:	01e00593          	li	a1,30
    80003888:	00048513          	mv	a0,s1
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	264080e7          	jalr	612(ra) # 80005af0 <_Z9getStringPci>
    n = stringToInt(input);
    80003894:	00048513          	mv	a0,s1
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	330080e7          	jalr	816(ra) # 80005bc8 <_Z11stringToIntPKc>
    800038a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800038a4:	00006517          	auipc	a0,0x6
    800038a8:	93450513          	addi	a0,a0,-1740 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800038ac:	00002097          	auipc	ra,0x2
    800038b0:	1bc080e7          	jalr	444(ra) # 80005a68 <_Z11printStringPKc>
    800038b4:	00000613          	li	a2,0
    800038b8:	00a00593          	li	a1,10
    800038bc:	00090513          	mv	a0,s2
    800038c0:	00002097          	auipc	ra,0x2
    800038c4:	358080e7          	jalr	856(ra) # 80005c18 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800038c8:	00006517          	auipc	a0,0x6
    800038cc:	92850513          	addi	a0,a0,-1752 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800038d0:	00002097          	auipc	ra,0x2
    800038d4:	198080e7          	jalr	408(ra) # 80005a68 <_Z11printStringPKc>
    800038d8:	00000613          	li	a2,0
    800038dc:	00a00593          	li	a1,10
    800038e0:	00048513          	mv	a0,s1
    800038e4:	00002097          	auipc	ra,0x2
    800038e8:	334080e7          	jalr	820(ra) # 80005c18 <_Z8printIntiii>
    printString(".\n");
    800038ec:	00006517          	auipc	a0,0x6
    800038f0:	91c50513          	addi	a0,a0,-1764 # 80009208 <CONSOLE_STATUS+0x1f8>
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	174080e7          	jalr	372(ra) # 80005a68 <_Z11printStringPKc>
    if(threadNum > n) {
    800038fc:	0324c463          	blt	s1,s2,80003924 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003900:	03205c63          	blez	s2,80003938 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003904:	03800513          	li	a0,56
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	89c080e7          	jalr	-1892(ra) # 800021a4 <_Znwm>
    80003910:	00050a13          	mv	s4,a0
    80003914:	00048593          	mv	a1,s1
    80003918:	00003097          	auipc	ra,0x3
    8000391c:	080080e7          	jalr	128(ra) # 80006998 <_ZN6BufferC1Ei>
    80003920:	0300006f          	j	80003950 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003924:	00006517          	auipc	a0,0x6
    80003928:	8ec50513          	addi	a0,a0,-1812 # 80009210 <CONSOLE_STATUS+0x200>
    8000392c:	00002097          	auipc	ra,0x2
    80003930:	13c080e7          	jalr	316(ra) # 80005a68 <_Z11printStringPKc>
        return;
    80003934:	0140006f          	j	80003948 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003938:	00006517          	auipc	a0,0x6
    8000393c:	91850513          	addi	a0,a0,-1768 # 80009250 <CONSOLE_STATUS+0x240>
    80003940:	00002097          	auipc	ra,0x2
    80003944:	128080e7          	jalr	296(ra) # 80005a68 <_Z11printStringPKc>
        return;
    80003948:	000b0113          	mv	sp,s6
    8000394c:	1500006f          	j	80003a9c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003950:	00000593          	li	a1,0
    80003954:	00008517          	auipc	a0,0x8
    80003958:	4f450513          	addi	a0,a0,1268 # 8000be48 <_ZL10waitForAll>
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	a94080e7          	jalr	-1388(ra) # 800013f0 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003964:	00391793          	slli	a5,s2,0x3
    80003968:	00f78793          	addi	a5,a5,15
    8000396c:	ff07f793          	andi	a5,a5,-16
    80003970:	40f10133          	sub	sp,sp,a5
    80003974:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003978:	0019071b          	addiw	a4,s2,1
    8000397c:	00171793          	slli	a5,a4,0x1
    80003980:	00e787b3          	add	a5,a5,a4
    80003984:	00379793          	slli	a5,a5,0x3
    80003988:	00f78793          	addi	a5,a5,15
    8000398c:	ff07f793          	andi	a5,a5,-16
    80003990:	40f10133          	sub	sp,sp,a5
    80003994:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003998:	00191613          	slli	a2,s2,0x1
    8000399c:	012607b3          	add	a5,a2,s2
    800039a0:	00379793          	slli	a5,a5,0x3
    800039a4:	00f987b3          	add	a5,s3,a5
    800039a8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800039ac:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800039b0:	00008717          	auipc	a4,0x8
    800039b4:	49873703          	ld	a4,1176(a4) # 8000be48 <_ZL10waitForAll>
    800039b8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800039bc:	00078613          	mv	a2,a5
    800039c0:	00000597          	auipc	a1,0x0
    800039c4:	d7458593          	addi	a1,a1,-652 # 80003734 <_ZL8consumerPv>
    800039c8:	f9840513          	addi	a0,s0,-104
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	968080e7          	jalr	-1688(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039d4:	00000493          	li	s1,0
    800039d8:	0280006f          	j	80003a00 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800039dc:	00000597          	auipc	a1,0x0
    800039e0:	c1458593          	addi	a1,a1,-1004 # 800035f0 <_ZL16producerKeyboardPv>
                      data + i);
    800039e4:	00179613          	slli	a2,a5,0x1
    800039e8:	00f60633          	add	a2,a2,a5
    800039ec:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800039f0:	00c98633          	add	a2,s3,a2
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	940080e7          	jalr	-1728(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800039fc:	0014849b          	addiw	s1,s1,1
    80003a00:	0524d263          	bge	s1,s2,80003a44 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003a04:	00149793          	slli	a5,s1,0x1
    80003a08:	009787b3          	add	a5,a5,s1
    80003a0c:	00379793          	slli	a5,a5,0x3
    80003a10:	00f987b3          	add	a5,s3,a5
    80003a14:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003a18:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003a1c:	00008717          	auipc	a4,0x8
    80003a20:	42c73703          	ld	a4,1068(a4) # 8000be48 <_ZL10waitForAll>
    80003a24:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003a28:	00048793          	mv	a5,s1
    80003a2c:	00349513          	slli	a0,s1,0x3
    80003a30:	00aa8533          	add	a0,s5,a0
    80003a34:	fa9054e3          	blez	s1,800039dc <_Z22producerConsumer_C_APIv+0x1c8>
    80003a38:	00000597          	auipc	a1,0x0
    80003a3c:	c6858593          	addi	a1,a1,-920 # 800036a0 <_ZL8producerPv>
    80003a40:	fa5ff06f          	j	800039e4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	98c080e7          	jalr	-1652(ra) # 800013d0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003a4c:	00000493          	li	s1,0
    80003a50:	00994e63          	blt	s2,s1,80003a6c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003a54:	00008517          	auipc	a0,0x8
    80003a58:	3f453503          	ld	a0,1012(a0) # 8000be48 <_ZL10waitForAll>
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	9fc080e7          	jalr	-1540(ra) # 80001458 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003a64:	0014849b          	addiw	s1,s1,1
    80003a68:	fe9ff06f          	j	80003a50 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003a6c:	00008517          	auipc	a0,0x8
    80003a70:	3dc53503          	ld	a0,988(a0) # 8000be48 <_ZL10waitForAll>
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	9b4080e7          	jalr	-1612(ra) # 80001428 <_Z9sem_closeP4_sem>
    delete buffer;
    80003a7c:	000a0e63          	beqz	s4,80003a98 <_Z22producerConsumer_C_APIv+0x284>
    80003a80:	000a0513          	mv	a0,s4
    80003a84:	00003097          	auipc	ra,0x3
    80003a88:	154080e7          	jalr	340(ra) # 80006bd8 <_ZN6BufferD1Ev>
    80003a8c:	000a0513          	mv	a0,s4
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	73c080e7          	jalr	1852(ra) # 800021cc <_ZdlPv>
    80003a98:	000b0113          	mv	sp,s6

}
    80003a9c:	f9040113          	addi	sp,s0,-112
    80003aa0:	06813083          	ld	ra,104(sp)
    80003aa4:	06013403          	ld	s0,96(sp)
    80003aa8:	05813483          	ld	s1,88(sp)
    80003aac:	05013903          	ld	s2,80(sp)
    80003ab0:	04813983          	ld	s3,72(sp)
    80003ab4:	04013a03          	ld	s4,64(sp)
    80003ab8:	03813a83          	ld	s5,56(sp)
    80003abc:	03013b03          	ld	s6,48(sp)
    80003ac0:	07010113          	addi	sp,sp,112
    80003ac4:	00008067          	ret
    80003ac8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003acc:	000a0513          	mv	a0,s4
    80003ad0:	ffffe097          	auipc	ra,0xffffe
    80003ad4:	6fc080e7          	jalr	1788(ra) # 800021cc <_ZdlPv>
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	00009097          	auipc	ra,0x9
    80003ae0:	48c080e7          	jalr	1164(ra) # 8000cf68 <_Unwind_Resume>

0000000080003ae4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ae4:	fe010113          	addi	sp,sp,-32
    80003ae8:	00113c23          	sd	ra,24(sp)
    80003aec:	00813823          	sd	s0,16(sp)
    80003af0:	00913423          	sd	s1,8(sp)
    80003af4:	01213023          	sd	s2,0(sp)
    80003af8:	02010413          	addi	s0,sp,32
    80003afc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003b00:	00100793          	li	a5,1
    80003b04:	02a7f863          	bgeu	a5,a0,80003b34 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003b08:	00a00793          	li	a5,10
    80003b0c:	02f577b3          	remu	a5,a0,a5
    80003b10:	02078e63          	beqz	a5,80003b4c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003b14:	fff48513          	addi	a0,s1,-1
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	fcc080e7          	jalr	-52(ra) # 80003ae4 <_ZL9fibonaccim>
    80003b20:	00050913          	mv	s2,a0
    80003b24:	ffe48513          	addi	a0,s1,-2
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	fbc080e7          	jalr	-68(ra) # 80003ae4 <_ZL9fibonaccim>
    80003b30:	00a90533          	add	a0,s2,a0
}
    80003b34:	01813083          	ld	ra,24(sp)
    80003b38:	01013403          	ld	s0,16(sp)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	00013903          	ld	s2,0(sp)
    80003b44:	02010113          	addi	sp,sp,32
    80003b48:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	884080e7          	jalr	-1916(ra) # 800013d0 <_Z15thread_dispatchv>
    80003b54:	fc1ff06f          	j	80003b14 <_ZL9fibonaccim+0x30>

0000000080003b58 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003b58:	fe010113          	addi	sp,sp,-32
    80003b5c:	00113c23          	sd	ra,24(sp)
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	01213023          	sd	s2,0(sp)
    80003b6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003b70:	00000913          	li	s2,0
    80003b74:	0380006f          	j	80003bac <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	858080e7          	jalr	-1960(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b80:	00148493          	addi	s1,s1,1
    80003b84:	000027b7          	lui	a5,0x2
    80003b88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b8c:	0097ee63          	bltu	a5,s1,80003ba8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b90:	00000713          	li	a4,0
    80003b94:	000077b7          	lui	a5,0x7
    80003b98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b9c:	fce7eee3          	bltu	a5,a4,80003b78 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ba0:	00170713          	addi	a4,a4,1
    80003ba4:	ff1ff06f          	j	80003b94 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003ba8:	00190913          	addi	s2,s2,1
    80003bac:	00900793          	li	a5,9
    80003bb0:	0527e063          	bltu	a5,s2,80003bf0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003bb4:	00005517          	auipc	a0,0x5
    80003bb8:	6cc50513          	addi	a0,a0,1740 # 80009280 <CONSOLE_STATUS+0x270>
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	eac080e7          	jalr	-340(ra) # 80005a68 <_Z11printStringPKc>
    80003bc4:	00000613          	li	a2,0
    80003bc8:	00a00593          	li	a1,10
    80003bcc:	0009051b          	sext.w	a0,s2
    80003bd0:	00002097          	auipc	ra,0x2
    80003bd4:	048080e7          	jalr	72(ra) # 80005c18 <_Z8printIntiii>
    80003bd8:	00006517          	auipc	a0,0x6
    80003bdc:	90850513          	addi	a0,a0,-1784 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003be0:	00002097          	auipc	ra,0x2
    80003be4:	e88080e7          	jalr	-376(ra) # 80005a68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003be8:	00000493          	li	s1,0
    80003bec:	f99ff06f          	j	80003b84 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003bf0:	00005517          	auipc	a0,0x5
    80003bf4:	69850513          	addi	a0,a0,1688 # 80009288 <CONSOLE_STATUS+0x278>
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	e70080e7          	jalr	-400(ra) # 80005a68 <_Z11printStringPKc>
    finishedA = true;
    80003c00:	00100793          	li	a5,1
    80003c04:	00008717          	auipc	a4,0x8
    80003c08:	24f70623          	sb	a5,588(a4) # 8000be50 <_ZL9finishedA>
}
    80003c0c:	01813083          	ld	ra,24(sp)
    80003c10:	01013403          	ld	s0,16(sp)
    80003c14:	00813483          	ld	s1,8(sp)
    80003c18:	00013903          	ld	s2,0(sp)
    80003c1c:	02010113          	addi	sp,sp,32
    80003c20:	00008067          	ret

0000000080003c24 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003c24:	fe010113          	addi	sp,sp,-32
    80003c28:	00113c23          	sd	ra,24(sp)
    80003c2c:	00813823          	sd	s0,16(sp)
    80003c30:	00913423          	sd	s1,8(sp)
    80003c34:	01213023          	sd	s2,0(sp)
    80003c38:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003c3c:	00000913          	li	s2,0
    80003c40:	0380006f          	j	80003c78 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c44:	ffffd097          	auipc	ra,0xffffd
    80003c48:	78c080e7          	jalr	1932(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c4c:	00148493          	addi	s1,s1,1
    80003c50:	000027b7          	lui	a5,0x2
    80003c54:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c58:	0097ee63          	bltu	a5,s1,80003c74 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c5c:	00000713          	li	a4,0
    80003c60:	000077b7          	lui	a5,0x7
    80003c64:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c68:	fce7eee3          	bltu	a5,a4,80003c44 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003c6c:	00170713          	addi	a4,a4,1
    80003c70:	ff1ff06f          	j	80003c60 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003c74:	00190913          	addi	s2,s2,1
    80003c78:	00f00793          	li	a5,15
    80003c7c:	0527e063          	bltu	a5,s2,80003cbc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003c80:	00005517          	auipc	a0,0x5
    80003c84:	61850513          	addi	a0,a0,1560 # 80009298 <CONSOLE_STATUS+0x288>
    80003c88:	00002097          	auipc	ra,0x2
    80003c8c:	de0080e7          	jalr	-544(ra) # 80005a68 <_Z11printStringPKc>
    80003c90:	00000613          	li	a2,0
    80003c94:	00a00593          	li	a1,10
    80003c98:	0009051b          	sext.w	a0,s2
    80003c9c:	00002097          	auipc	ra,0x2
    80003ca0:	f7c080e7          	jalr	-132(ra) # 80005c18 <_Z8printIntiii>
    80003ca4:	00006517          	auipc	a0,0x6
    80003ca8:	83c50513          	addi	a0,a0,-1988 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	dbc080e7          	jalr	-580(ra) # 80005a68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003cb4:	00000493          	li	s1,0
    80003cb8:	f99ff06f          	j	80003c50 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	5e450513          	addi	a0,a0,1508 # 800092a0 <CONSOLE_STATUS+0x290>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	da4080e7          	jalr	-604(ra) # 80005a68 <_Z11printStringPKc>
    finishedB = true;
    80003ccc:	00100793          	li	a5,1
    80003cd0:	00008717          	auipc	a4,0x8
    80003cd4:	18f700a3          	sb	a5,385(a4) # 8000be51 <_ZL9finishedB>
    thread_dispatch();
    80003cd8:	ffffd097          	auipc	ra,0xffffd
    80003cdc:	6f8080e7          	jalr	1784(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003ce0:	01813083          	ld	ra,24(sp)
    80003ce4:	01013403          	ld	s0,16(sp)
    80003ce8:	00813483          	ld	s1,8(sp)
    80003cec:	00013903          	ld	s2,0(sp)
    80003cf0:	02010113          	addi	sp,sp,32
    80003cf4:	00008067          	ret

0000000080003cf8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003cf8:	fe010113          	addi	sp,sp,-32
    80003cfc:	00113c23          	sd	ra,24(sp)
    80003d00:	00813823          	sd	s0,16(sp)
    80003d04:	00913423          	sd	s1,8(sp)
    80003d08:	01213023          	sd	s2,0(sp)
    80003d0c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003d10:	00000493          	li	s1,0
    80003d14:	0400006f          	j	80003d54 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d18:	00005517          	auipc	a0,0x5
    80003d1c:	59850513          	addi	a0,a0,1432 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	d48080e7          	jalr	-696(ra) # 80005a68 <_Z11printStringPKc>
    80003d28:	00000613          	li	a2,0
    80003d2c:	00a00593          	li	a1,10
    80003d30:	00048513          	mv	a0,s1
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	ee4080e7          	jalr	-284(ra) # 80005c18 <_Z8printIntiii>
    80003d3c:	00005517          	auipc	a0,0x5
    80003d40:	7a450513          	addi	a0,a0,1956 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003d44:	00002097          	auipc	ra,0x2
    80003d48:	d24080e7          	jalr	-732(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003d4c:	0014849b          	addiw	s1,s1,1
    80003d50:	0ff4f493          	andi	s1,s1,255
    80003d54:	00200793          	li	a5,2
    80003d58:	fc97f0e3          	bgeu	a5,s1,80003d18 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003d5c:	00005517          	auipc	a0,0x5
    80003d60:	55c50513          	addi	a0,a0,1372 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	d04080e7          	jalr	-764(ra) # 80005a68 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003d6c:	00700313          	li	t1,7
    thread_dispatch();
    80003d70:	ffffd097          	auipc	ra,0xffffd
    80003d74:	660080e7          	jalr	1632(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003d78:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003d7c:	00005517          	auipc	a0,0x5
    80003d80:	54c50513          	addi	a0,a0,1356 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003d84:	00002097          	auipc	ra,0x2
    80003d88:	ce4080e7          	jalr	-796(ra) # 80005a68 <_Z11printStringPKc>
    80003d8c:	00000613          	li	a2,0
    80003d90:	00a00593          	li	a1,10
    80003d94:	0009051b          	sext.w	a0,s2
    80003d98:	00002097          	auipc	ra,0x2
    80003d9c:	e80080e7          	jalr	-384(ra) # 80005c18 <_Z8printIntiii>
    80003da0:	00005517          	auipc	a0,0x5
    80003da4:	74050513          	addi	a0,a0,1856 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	cc0080e7          	jalr	-832(ra) # 80005a68 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003db0:	00c00513          	li	a0,12
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	d30080e7          	jalr	-720(ra) # 80003ae4 <_ZL9fibonaccim>
    80003dbc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003dc0:	00005517          	auipc	a0,0x5
    80003dc4:	51050513          	addi	a0,a0,1296 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	ca0080e7          	jalr	-864(ra) # 80005a68 <_Z11printStringPKc>
    80003dd0:	00000613          	li	a2,0
    80003dd4:	00a00593          	li	a1,10
    80003dd8:	0009051b          	sext.w	a0,s2
    80003ddc:	00002097          	auipc	ra,0x2
    80003de0:	e3c080e7          	jalr	-452(ra) # 80005c18 <_Z8printIntiii>
    80003de4:	00005517          	auipc	a0,0x5
    80003de8:	6fc50513          	addi	a0,a0,1788 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003dec:	00002097          	auipc	ra,0x2
    80003df0:	c7c080e7          	jalr	-900(ra) # 80005a68 <_Z11printStringPKc>
    80003df4:	0400006f          	j	80003e34 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003df8:	00005517          	auipc	a0,0x5
    80003dfc:	4b850513          	addi	a0,a0,1208 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003e00:	00002097          	auipc	ra,0x2
    80003e04:	c68080e7          	jalr	-920(ra) # 80005a68 <_Z11printStringPKc>
    80003e08:	00000613          	li	a2,0
    80003e0c:	00a00593          	li	a1,10
    80003e10:	00048513          	mv	a0,s1
    80003e14:	00002097          	auipc	ra,0x2
    80003e18:	e04080e7          	jalr	-508(ra) # 80005c18 <_Z8printIntiii>
    80003e1c:	00005517          	auipc	a0,0x5
    80003e20:	6c450513          	addi	a0,a0,1732 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	c44080e7          	jalr	-956(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003e2c:	0014849b          	addiw	s1,s1,1
    80003e30:	0ff4f493          	andi	s1,s1,255
    80003e34:	00500793          	li	a5,5
    80003e38:	fc97f0e3          	bgeu	a5,s1,80003df8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    80003e3c:	00005517          	auipc	a0,0x5
    80003e40:	4a450513          	addi	a0,a0,1188 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	c24080e7          	jalr	-988(ra) # 80005a68 <_Z11printStringPKc>
    finishedC = true;
    80003e4c:	00100793          	li	a5,1
    80003e50:	00008717          	auipc	a4,0x8
    80003e54:	00f70123          	sb	a5,2(a4) # 8000be52 <_ZL9finishedC>
    thread_dispatch();
    80003e58:	ffffd097          	auipc	ra,0xffffd
    80003e5c:	578080e7          	jalr	1400(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003e60:	01813083          	ld	ra,24(sp)
    80003e64:	01013403          	ld	s0,16(sp)
    80003e68:	00813483          	ld	s1,8(sp)
    80003e6c:	00013903          	ld	s2,0(sp)
    80003e70:	02010113          	addi	sp,sp,32
    80003e74:	00008067          	ret

0000000080003e78 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003e78:	fe010113          	addi	sp,sp,-32
    80003e7c:	00113c23          	sd	ra,24(sp)
    80003e80:	00813823          	sd	s0,16(sp)
    80003e84:	00913423          	sd	s1,8(sp)
    80003e88:	01213023          	sd	s2,0(sp)
    80003e8c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003e90:	00a00493          	li	s1,10
    80003e94:	0400006f          	j	80003ed4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e98:	00005517          	auipc	a0,0x5
    80003e9c:	45850513          	addi	a0,a0,1112 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003ea0:	00002097          	auipc	ra,0x2
    80003ea4:	bc8080e7          	jalr	-1080(ra) # 80005a68 <_Z11printStringPKc>
    80003ea8:	00000613          	li	a2,0
    80003eac:	00a00593          	li	a1,10
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	00002097          	auipc	ra,0x2
    80003eb8:	d64080e7          	jalr	-668(ra) # 80005c18 <_Z8printIntiii>
    80003ebc:	00005517          	auipc	a0,0x5
    80003ec0:	62450513          	addi	a0,a0,1572 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	ba4080e7          	jalr	-1116(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003ecc:	0014849b          	addiw	s1,s1,1
    80003ed0:	0ff4f493          	andi	s1,s1,255
    80003ed4:	00c00793          	li	a5,12
    80003ed8:	fc97f0e3          	bgeu	a5,s1,80003e98 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003edc:	00005517          	auipc	a0,0x5
    80003ee0:	41c50513          	addi	a0,a0,1052 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003ee4:	00002097          	auipc	ra,0x2
    80003ee8:	b84080e7          	jalr	-1148(ra) # 80005a68 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003eec:	00500313          	li	t1,5
    thread_dispatch();
    80003ef0:	ffffd097          	auipc	ra,0xffffd
    80003ef4:	4e0080e7          	jalr	1248(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ef8:	01000513          	li	a0,16
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	be8080e7          	jalr	-1048(ra) # 80003ae4 <_ZL9fibonaccim>
    80003f04:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003f08:	00005517          	auipc	a0,0x5
    80003f0c:	40050513          	addi	a0,a0,1024 # 80009308 <CONSOLE_STATUS+0x2f8>
    80003f10:	00002097          	auipc	ra,0x2
    80003f14:	b58080e7          	jalr	-1192(ra) # 80005a68 <_Z11printStringPKc>
    80003f18:	00000613          	li	a2,0
    80003f1c:	00a00593          	li	a1,10
    80003f20:	0009051b          	sext.w	a0,s2
    80003f24:	00002097          	auipc	ra,0x2
    80003f28:	cf4080e7          	jalr	-780(ra) # 80005c18 <_Z8printIntiii>
    80003f2c:	00005517          	auipc	a0,0x5
    80003f30:	5b450513          	addi	a0,a0,1460 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003f34:	00002097          	auipc	ra,0x2
    80003f38:	b34080e7          	jalr	-1228(ra) # 80005a68 <_Z11printStringPKc>
    80003f3c:	0400006f          	j	80003f7c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f40:	00005517          	auipc	a0,0x5
    80003f44:	3b050513          	addi	a0,a0,944 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80003f48:	00002097          	auipc	ra,0x2
    80003f4c:	b20080e7          	jalr	-1248(ra) # 80005a68 <_Z11printStringPKc>
    80003f50:	00000613          	li	a2,0
    80003f54:	00a00593          	li	a1,10
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	00002097          	auipc	ra,0x2
    80003f60:	cbc080e7          	jalr	-836(ra) # 80005c18 <_Z8printIntiii>
    80003f64:	00005517          	auipc	a0,0x5
    80003f68:	57c50513          	addi	a0,a0,1404 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003f6c:	00002097          	auipc	ra,0x2
    80003f70:	afc080e7          	jalr	-1284(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003f74:	0014849b          	addiw	s1,s1,1
    80003f78:	0ff4f493          	andi	s1,s1,255
    80003f7c:	00f00793          	li	a5,15
    80003f80:	fc97f0e3          	bgeu	a5,s1,80003f40 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003f84:	00005517          	auipc	a0,0x5
    80003f88:	39450513          	addi	a0,a0,916 # 80009318 <CONSOLE_STATUS+0x308>
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	adc080e7          	jalr	-1316(ra) # 80005a68 <_Z11printStringPKc>
    finishedD = true;
    80003f94:	00100793          	li	a5,1
    80003f98:	00008717          	auipc	a4,0x8
    80003f9c:	eaf70da3          	sb	a5,-325(a4) # 8000be53 <_ZL9finishedD>
    thread_dispatch();
    80003fa0:	ffffd097          	auipc	ra,0xffffd
    80003fa4:	430080e7          	jalr	1072(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80003fa8:	01813083          	ld	ra,24(sp)
    80003fac:	01013403          	ld	s0,16(sp)
    80003fb0:	00813483          	ld	s1,8(sp)
    80003fb4:	00013903          	ld	s2,0(sp)
    80003fb8:	02010113          	addi	sp,sp,32
    80003fbc:	00008067          	ret

0000000080003fc0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003fc0:	fc010113          	addi	sp,sp,-64
    80003fc4:	02113c23          	sd	ra,56(sp)
    80003fc8:	02813823          	sd	s0,48(sp)
    80003fcc:	02913423          	sd	s1,40(sp)
    80003fd0:	03213023          	sd	s2,32(sp)
    80003fd4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003fd8:	02000513          	li	a0,32
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	1c8080e7          	jalr	456(ra) # 800021a4 <_Znwm>
    80003fe4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	2a0080e7          	jalr	672(ra) # 80002288 <_ZN6ThreadC1Ev>
    80003ff0:	00008797          	auipc	a5,0x8
    80003ff4:	b6078793          	addi	a5,a5,-1184 # 8000bb50 <_ZTV7WorkerA+0x10>
    80003ff8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ffc:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004000:	00005517          	auipc	a0,0x5
    80004004:	32850513          	addi	a0,a0,808 # 80009328 <CONSOLE_STATUS+0x318>
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	a60080e7          	jalr	-1440(ra) # 80005a68 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80004010:	02000513          	li	a0,32
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	190080e7          	jalr	400(ra) # 800021a4 <_Znwm>
    8000401c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	268080e7          	jalr	616(ra) # 80002288 <_ZN6ThreadC1Ev>
    80004028:	00008797          	auipc	a5,0x8
    8000402c:	b5078793          	addi	a5,a5,-1200 # 8000bb78 <_ZTV7WorkerB+0x10>
    80004030:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004034:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80004038:	00005517          	auipc	a0,0x5
    8000403c:	30850513          	addi	a0,a0,776 # 80009340 <CONSOLE_STATUS+0x330>
    80004040:	00002097          	auipc	ra,0x2
    80004044:	a28080e7          	jalr	-1496(ra) # 80005a68 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80004048:	02000513          	li	a0,32
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	158080e7          	jalr	344(ra) # 800021a4 <_Znwm>
    80004054:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	230080e7          	jalr	560(ra) # 80002288 <_ZN6ThreadC1Ev>
    80004060:	00008797          	auipc	a5,0x8
    80004064:	b4078793          	addi	a5,a5,-1216 # 8000bba0 <_ZTV7WorkerC+0x10>
    80004068:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000406c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004070:	00005517          	auipc	a0,0x5
    80004074:	2e850513          	addi	a0,a0,744 # 80009358 <CONSOLE_STATUS+0x348>
    80004078:	00002097          	auipc	ra,0x2
    8000407c:	9f0080e7          	jalr	-1552(ra) # 80005a68 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004080:	02000513          	li	a0,32
    80004084:	ffffe097          	auipc	ra,0xffffe
    80004088:	120080e7          	jalr	288(ra) # 800021a4 <_Znwm>
    8000408c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	1f8080e7          	jalr	504(ra) # 80002288 <_ZN6ThreadC1Ev>
    80004098:	00008797          	auipc	a5,0x8
    8000409c:	b3078793          	addi	a5,a5,-1232 # 8000bbc8 <_ZTV7WorkerD+0x10>
    800040a0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800040a4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800040a8:	00005517          	auipc	a0,0x5
    800040ac:	2c850513          	addi	a0,a0,712 # 80009370 <CONSOLE_STATUS+0x360>
    800040b0:	00002097          	auipc	ra,0x2
    800040b4:	9b8080e7          	jalr	-1608(ra) # 80005a68 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800040b8:	00000493          	li	s1,0
    800040bc:	00300793          	li	a5,3
    800040c0:	0297c663          	blt	a5,s1,800040ec <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800040c4:	00349793          	slli	a5,s1,0x3
    800040c8:	fe040713          	addi	a4,s0,-32
    800040cc:	00f707b3          	add	a5,a4,a5
    800040d0:	fe07b503          	ld	a0,-32(a5)
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	1e8080e7          	jalr	488(ra) # 800022bc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800040dc:	0014849b          	addiw	s1,s1,1
    800040e0:	fddff06f          	j	800040bc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	20c080e7          	jalr	524(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800040ec:	00008797          	auipc	a5,0x8
    800040f0:	d647c783          	lbu	a5,-668(a5) # 8000be50 <_ZL9finishedA>
    800040f4:	fe0788e3          	beqz	a5,800040e4 <_Z20Threads_CPP_API_testv+0x124>
    800040f8:	00008797          	auipc	a5,0x8
    800040fc:	d597c783          	lbu	a5,-679(a5) # 8000be51 <_ZL9finishedB>
    80004100:	fe0782e3          	beqz	a5,800040e4 <_Z20Threads_CPP_API_testv+0x124>
    80004104:	00008797          	auipc	a5,0x8
    80004108:	d4e7c783          	lbu	a5,-690(a5) # 8000be52 <_ZL9finishedC>
    8000410c:	fc078ce3          	beqz	a5,800040e4 <_Z20Threads_CPP_API_testv+0x124>
    80004110:	00008797          	auipc	a5,0x8
    80004114:	d437c783          	lbu	a5,-701(a5) # 8000be53 <_ZL9finishedD>
    80004118:	fc0786e3          	beqz	a5,800040e4 <_Z20Threads_CPP_API_testv+0x124>
    8000411c:	fc040493          	addi	s1,s0,-64
    80004120:	0080006f          	j	80004128 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004124:	00848493          	addi	s1,s1,8
    80004128:	fe040793          	addi	a5,s0,-32
    8000412c:	08f48663          	beq	s1,a5,800041b8 <_Z20Threads_CPP_API_testv+0x1f8>
    80004130:	0004b503          	ld	a0,0(s1)
    80004134:	fe0508e3          	beqz	a0,80004124 <_Z20Threads_CPP_API_testv+0x164>
    80004138:	00053783          	ld	a5,0(a0)
    8000413c:	0087b783          	ld	a5,8(a5)
    80004140:	000780e7          	jalr	a5
    80004144:	fe1ff06f          	j	80004124 <_Z20Threads_CPP_API_testv+0x164>
    80004148:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    8000414c:	00048513          	mv	a0,s1
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	07c080e7          	jalr	124(ra) # 800021cc <_ZdlPv>
    80004158:	00090513          	mv	a0,s2
    8000415c:	00009097          	auipc	ra,0x9
    80004160:	e0c080e7          	jalr	-500(ra) # 8000cf68 <_Unwind_Resume>
    80004164:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004168:	00048513          	mv	a0,s1
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	060080e7          	jalr	96(ra) # 800021cc <_ZdlPv>
    80004174:	00090513          	mv	a0,s2
    80004178:	00009097          	auipc	ra,0x9
    8000417c:	df0080e7          	jalr	-528(ra) # 8000cf68 <_Unwind_Resume>
    80004180:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004184:	00048513          	mv	a0,s1
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	044080e7          	jalr	68(ra) # 800021cc <_ZdlPv>
    80004190:	00090513          	mv	a0,s2
    80004194:	00009097          	auipc	ra,0x9
    80004198:	dd4080e7          	jalr	-556(ra) # 8000cf68 <_Unwind_Resume>
    8000419c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800041a0:	00048513          	mv	a0,s1
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	028080e7          	jalr	40(ra) # 800021cc <_ZdlPv>
    800041ac:	00090513          	mv	a0,s2
    800041b0:	00009097          	auipc	ra,0x9
    800041b4:	db8080e7          	jalr	-584(ra) # 8000cf68 <_Unwind_Resume>
}
    800041b8:	03813083          	ld	ra,56(sp)
    800041bc:	03013403          	ld	s0,48(sp)
    800041c0:	02813483          	ld	s1,40(sp)
    800041c4:	02013903          	ld	s2,32(sp)
    800041c8:	04010113          	addi	sp,sp,64
    800041cc:	00008067          	ret

00000000800041d0 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800041d0:	ff010113          	addi	sp,sp,-16
    800041d4:	00113423          	sd	ra,8(sp)
    800041d8:	00813023          	sd	s0,0(sp)
    800041dc:	01010413          	addi	s0,sp,16
    800041e0:	00008797          	auipc	a5,0x8
    800041e4:	97078793          	addi	a5,a5,-1680 # 8000bb50 <_ZTV7WorkerA+0x10>
    800041e8:	00f53023          	sd	a5,0(a0)
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	f68080e7          	jalr	-152(ra) # 80002154 <_ZN6ThreadD1Ev>
    800041f4:	00813083          	ld	ra,8(sp)
    800041f8:	00013403          	ld	s0,0(sp)
    800041fc:	01010113          	addi	sp,sp,16
    80004200:	00008067          	ret

0000000080004204 <_ZN7WorkerAD0Ev>:
    80004204:	fe010113          	addi	sp,sp,-32
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	00813823          	sd	s0,16(sp)
    80004210:	00913423          	sd	s1,8(sp)
    80004214:	02010413          	addi	s0,sp,32
    80004218:	00050493          	mv	s1,a0
    8000421c:	00008797          	auipc	a5,0x8
    80004220:	93478793          	addi	a5,a5,-1740 # 8000bb50 <_ZTV7WorkerA+0x10>
    80004224:	00f53023          	sd	a5,0(a0)
    80004228:	ffffe097          	auipc	ra,0xffffe
    8000422c:	f2c080e7          	jalr	-212(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004230:	00048513          	mv	a0,s1
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	f98080e7          	jalr	-104(ra) # 800021cc <_ZdlPv>
    8000423c:	01813083          	ld	ra,24(sp)
    80004240:	01013403          	ld	s0,16(sp)
    80004244:	00813483          	ld	s1,8(sp)
    80004248:	02010113          	addi	sp,sp,32
    8000424c:	00008067          	ret

0000000080004250 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004250:	ff010113          	addi	sp,sp,-16
    80004254:	00113423          	sd	ra,8(sp)
    80004258:	00813023          	sd	s0,0(sp)
    8000425c:	01010413          	addi	s0,sp,16
    80004260:	00008797          	auipc	a5,0x8
    80004264:	91878793          	addi	a5,a5,-1768 # 8000bb78 <_ZTV7WorkerB+0x10>
    80004268:	00f53023          	sd	a5,0(a0)
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	ee8080e7          	jalr	-280(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004274:	00813083          	ld	ra,8(sp)
    80004278:	00013403          	ld	s0,0(sp)
    8000427c:	01010113          	addi	sp,sp,16
    80004280:	00008067          	ret

0000000080004284 <_ZN7WorkerBD0Ev>:
    80004284:	fe010113          	addi	sp,sp,-32
    80004288:	00113c23          	sd	ra,24(sp)
    8000428c:	00813823          	sd	s0,16(sp)
    80004290:	00913423          	sd	s1,8(sp)
    80004294:	02010413          	addi	s0,sp,32
    80004298:	00050493          	mv	s1,a0
    8000429c:	00008797          	auipc	a5,0x8
    800042a0:	8dc78793          	addi	a5,a5,-1828 # 8000bb78 <_ZTV7WorkerB+0x10>
    800042a4:	00f53023          	sd	a5,0(a0)
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	eac080e7          	jalr	-340(ra) # 80002154 <_ZN6ThreadD1Ev>
    800042b0:	00048513          	mv	a0,s1
    800042b4:	ffffe097          	auipc	ra,0xffffe
    800042b8:	f18080e7          	jalr	-232(ra) # 800021cc <_ZdlPv>
    800042bc:	01813083          	ld	ra,24(sp)
    800042c0:	01013403          	ld	s0,16(sp)
    800042c4:	00813483          	ld	s1,8(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret

00000000800042d0 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00113423          	sd	ra,8(sp)
    800042d8:	00813023          	sd	s0,0(sp)
    800042dc:	01010413          	addi	s0,sp,16
    800042e0:	00008797          	auipc	a5,0x8
    800042e4:	8c078793          	addi	a5,a5,-1856 # 8000bba0 <_ZTV7WorkerC+0x10>
    800042e8:	00f53023          	sd	a5,0(a0)
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	e68080e7          	jalr	-408(ra) # 80002154 <_ZN6ThreadD1Ev>
    800042f4:	00813083          	ld	ra,8(sp)
    800042f8:	00013403          	ld	s0,0(sp)
    800042fc:	01010113          	addi	sp,sp,16
    80004300:	00008067          	ret

0000000080004304 <_ZN7WorkerCD0Ev>:
    80004304:	fe010113          	addi	sp,sp,-32
    80004308:	00113c23          	sd	ra,24(sp)
    8000430c:	00813823          	sd	s0,16(sp)
    80004310:	00913423          	sd	s1,8(sp)
    80004314:	02010413          	addi	s0,sp,32
    80004318:	00050493          	mv	s1,a0
    8000431c:	00008797          	auipc	a5,0x8
    80004320:	88478793          	addi	a5,a5,-1916 # 8000bba0 <_ZTV7WorkerC+0x10>
    80004324:	00f53023          	sd	a5,0(a0)
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	e2c080e7          	jalr	-468(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004330:	00048513          	mv	a0,s1
    80004334:	ffffe097          	auipc	ra,0xffffe
    80004338:	e98080e7          	jalr	-360(ra) # 800021cc <_ZdlPv>
    8000433c:	01813083          	ld	ra,24(sp)
    80004340:	01013403          	ld	s0,16(sp)
    80004344:	00813483          	ld	s1,8(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004350:	ff010113          	addi	sp,sp,-16
    80004354:	00113423          	sd	ra,8(sp)
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	01010413          	addi	s0,sp,16
    80004360:	00008797          	auipc	a5,0x8
    80004364:	86878793          	addi	a5,a5,-1944 # 8000bbc8 <_ZTV7WorkerD+0x10>
    80004368:	00f53023          	sd	a5,0(a0)
    8000436c:	ffffe097          	auipc	ra,0xffffe
    80004370:	de8080e7          	jalr	-536(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004374:	00813083          	ld	ra,8(sp)
    80004378:	00013403          	ld	s0,0(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN7WorkerDD0Ev>:
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00113c23          	sd	ra,24(sp)
    8000438c:	00813823          	sd	s0,16(sp)
    80004390:	00913423          	sd	s1,8(sp)
    80004394:	02010413          	addi	s0,sp,32
    80004398:	00050493          	mv	s1,a0
    8000439c:	00008797          	auipc	a5,0x8
    800043a0:	82c78793          	addi	a5,a5,-2004 # 8000bbc8 <_ZTV7WorkerD+0x10>
    800043a4:	00f53023          	sd	a5,0(a0)
    800043a8:	ffffe097          	auipc	ra,0xffffe
    800043ac:	dac080e7          	jalr	-596(ra) # 80002154 <_ZN6ThreadD1Ev>
    800043b0:	00048513          	mv	a0,s1
    800043b4:	ffffe097          	auipc	ra,0xffffe
    800043b8:	e18080e7          	jalr	-488(ra) # 800021cc <_ZdlPv>
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <_ZN7WorkerA3runEv>:
    void run() override {
    800043d0:	ff010113          	addi	sp,sp,-16
    800043d4:	00113423          	sd	ra,8(sp)
    800043d8:	00813023          	sd	s0,0(sp)
    800043dc:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800043e0:	00000593          	li	a1,0
    800043e4:	fffff097          	auipc	ra,0xfffff
    800043e8:	774080e7          	jalr	1908(ra) # 80003b58 <_ZN7WorkerA11workerBodyAEPv>
    }
    800043ec:	00813083          	ld	ra,8(sp)
    800043f0:	00013403          	ld	s0,0(sp)
    800043f4:	01010113          	addi	sp,sp,16
    800043f8:	00008067          	ret

00000000800043fc <_ZN7WorkerB3runEv>:
    void run() override {
    800043fc:	ff010113          	addi	sp,sp,-16
    80004400:	00113423          	sd	ra,8(sp)
    80004404:	00813023          	sd	s0,0(sp)
    80004408:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000440c:	00000593          	li	a1,0
    80004410:	00000097          	auipc	ra,0x0
    80004414:	814080e7          	jalr	-2028(ra) # 80003c24 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004418:	00813083          	ld	ra,8(sp)
    8000441c:	00013403          	ld	s0,0(sp)
    80004420:	01010113          	addi	sp,sp,16
    80004424:	00008067          	ret

0000000080004428 <_ZN7WorkerC3runEv>:
    void run() override {
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00113423          	sd	ra,8(sp)
    80004430:	00813023          	sd	s0,0(sp)
    80004434:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004438:	00000593          	li	a1,0
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	8bc080e7          	jalr	-1860(ra) # 80003cf8 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004444:	00813083          	ld	ra,8(sp)
    80004448:	00013403          	ld	s0,0(sp)
    8000444c:	01010113          	addi	sp,sp,16
    80004450:	00008067          	ret

0000000080004454 <_ZN7WorkerD3runEv>:
    void run() override {
    80004454:	ff010113          	addi	sp,sp,-16
    80004458:	00113423          	sd	ra,8(sp)
    8000445c:	00813023          	sd	s0,0(sp)
    80004460:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004464:	00000593          	li	a1,0
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	a10080e7          	jalr	-1520(ra) # 80003e78 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004470:	00813083          	ld	ra,8(sp)
    80004474:	00013403          	ld	s0,0(sp)
    80004478:	01010113          	addi	sp,sp,16
    8000447c:	00008067          	ret

0000000080004480 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004480:	f8010113          	addi	sp,sp,-128
    80004484:	06113c23          	sd	ra,120(sp)
    80004488:	06813823          	sd	s0,112(sp)
    8000448c:	06913423          	sd	s1,104(sp)
    80004490:	07213023          	sd	s2,96(sp)
    80004494:	05313c23          	sd	s3,88(sp)
    80004498:	05413823          	sd	s4,80(sp)
    8000449c:	05513423          	sd	s5,72(sp)
    800044a0:	05613023          	sd	s6,64(sp)
    800044a4:	03713c23          	sd	s7,56(sp)
    800044a8:	03813823          	sd	s8,48(sp)
    800044ac:	03913423          	sd	s9,40(sp)
    800044b0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800044b4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800044b8:	00005517          	auipc	a0,0x5
    800044bc:	ce050513          	addi	a0,a0,-800 # 80009198 <CONSOLE_STATUS+0x188>
    800044c0:	00001097          	auipc	ra,0x1
    800044c4:	5a8080e7          	jalr	1448(ra) # 80005a68 <_Z11printStringPKc>
    getString(input, 30);
    800044c8:	01e00593          	li	a1,30
    800044cc:	f8040493          	addi	s1,s0,-128
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00001097          	auipc	ra,0x1
    800044d8:	61c080e7          	jalr	1564(ra) # 80005af0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800044dc:	00048513          	mv	a0,s1
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	6e8080e7          	jalr	1768(ra) # 80005bc8 <_Z11stringToIntPKc>
    800044e8:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800044ec:	00005517          	auipc	a0,0x5
    800044f0:	ccc50513          	addi	a0,a0,-820 # 800091b8 <CONSOLE_STATUS+0x1a8>
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	574080e7          	jalr	1396(ra) # 80005a68 <_Z11printStringPKc>
    getString(input, 30);
    800044fc:	01e00593          	li	a1,30
    80004500:	00048513          	mv	a0,s1
    80004504:	00001097          	auipc	ra,0x1
    80004508:	5ec080e7          	jalr	1516(ra) # 80005af0 <_Z9getStringPci>
    n = stringToInt(input);
    8000450c:	00048513          	mv	a0,s1
    80004510:	00001097          	auipc	ra,0x1
    80004514:	6b8080e7          	jalr	1720(ra) # 80005bc8 <_Z11stringToIntPKc>
    80004518:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000451c:	00005517          	auipc	a0,0x5
    80004520:	cbc50513          	addi	a0,a0,-836 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80004524:	00001097          	auipc	ra,0x1
    80004528:	544080e7          	jalr	1348(ra) # 80005a68 <_Z11printStringPKc>
    printInt(threadNum);
    8000452c:	00000613          	li	a2,0
    80004530:	00a00593          	li	a1,10
    80004534:	00098513          	mv	a0,s3
    80004538:	00001097          	auipc	ra,0x1
    8000453c:	6e0080e7          	jalr	1760(ra) # 80005c18 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004540:	00005517          	auipc	a0,0x5
    80004544:	cb050513          	addi	a0,a0,-848 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004548:	00001097          	auipc	ra,0x1
    8000454c:	520080e7          	jalr	1312(ra) # 80005a68 <_Z11printStringPKc>
    printInt(n);
    80004550:	00000613          	li	a2,0
    80004554:	00a00593          	li	a1,10
    80004558:	00048513          	mv	a0,s1
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	6bc080e7          	jalr	1724(ra) # 80005c18 <_Z8printIntiii>
    printString(".\n");
    80004564:	00005517          	auipc	a0,0x5
    80004568:	ca450513          	addi	a0,a0,-860 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000456c:	00001097          	auipc	ra,0x1
    80004570:	4fc080e7          	jalr	1276(ra) # 80005a68 <_Z11printStringPKc>
    if (threadNum > n) {
    80004574:	0334c463          	blt	s1,s3,8000459c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004578:	03305c63          	blez	s3,800045b0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000457c:	03800513          	li	a0,56
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	c24080e7          	jalr	-988(ra) # 800021a4 <_Znwm>
    80004588:	00050a93          	mv	s5,a0
    8000458c:	00048593          	mv	a1,s1
    80004590:	00001097          	auipc	ra,0x1
    80004594:	7a8080e7          	jalr	1960(ra) # 80005d38 <_ZN9BufferCPPC1Ei>
    80004598:	0300006f          	j	800045c8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	c7450513          	addi	a0,a0,-908 # 80009210 <CONSOLE_STATUS+0x200>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	4c4080e7          	jalr	1220(ra) # 80005a68 <_Z11printStringPKc>
        return;
    800045ac:	0140006f          	j	800045c0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800045b0:	00005517          	auipc	a0,0x5
    800045b4:	ca050513          	addi	a0,a0,-864 # 80009250 <CONSOLE_STATUS+0x240>
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	4b0080e7          	jalr	1200(ra) # 80005a68 <_Z11printStringPKc>
        return;
    800045c0:	000c0113          	mv	sp,s8
    800045c4:	2140006f          	j	800047d8 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800045c8:	01000513          	li	a0,16
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	bd8080e7          	jalr	-1064(ra) # 800021a4 <_Znwm>
    800045d4:	00050913          	mv	s2,a0
    800045d8:	00000593          	li	a1,0
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	e24080e7          	jalr	-476(ra) # 80002400 <_ZN9SemaphoreC1Ej>
    800045e4:	00008797          	auipc	a5,0x8
    800045e8:	8727be23          	sd	s2,-1924(a5) # 8000be60 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800045ec:	00399793          	slli	a5,s3,0x3
    800045f0:	00f78793          	addi	a5,a5,15
    800045f4:	ff07f793          	andi	a5,a5,-16
    800045f8:	40f10133          	sub	sp,sp,a5
    800045fc:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004600:	0019871b          	addiw	a4,s3,1
    80004604:	00171793          	slli	a5,a4,0x1
    80004608:	00e787b3          	add	a5,a5,a4
    8000460c:	00379793          	slli	a5,a5,0x3
    80004610:	00f78793          	addi	a5,a5,15
    80004614:	ff07f793          	andi	a5,a5,-16
    80004618:	40f10133          	sub	sp,sp,a5
    8000461c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004620:	00199493          	slli	s1,s3,0x1
    80004624:	013484b3          	add	s1,s1,s3
    80004628:	00349493          	slli	s1,s1,0x3
    8000462c:	009b04b3          	add	s1,s6,s1
    80004630:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004634:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004638:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000463c:	02800513          	li	a0,40
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	b64080e7          	jalr	-1180(ra) # 800021a4 <_Znwm>
    80004648:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	c3c080e7          	jalr	-964(ra) # 80002288 <_ZN6ThreadC1Ev>
    80004654:	00007797          	auipc	a5,0x7
    80004658:	5ec78793          	addi	a5,a5,1516 # 8000bc40 <_ZTV8Consumer+0x10>
    8000465c:	00fbb023          	sd	a5,0(s7)
    80004660:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004664:	000b8513          	mv	a0,s7
    80004668:	ffffe097          	auipc	ra,0xffffe
    8000466c:	c54080e7          	jalr	-940(ra) # 800022bc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004670:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004674:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004678:	00007797          	auipc	a5,0x7
    8000467c:	7e87b783          	ld	a5,2024(a5) # 8000be60 <_ZL10waitForAll>
    80004680:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004684:	02800513          	li	a0,40
    80004688:	ffffe097          	auipc	ra,0xffffe
    8000468c:	b1c080e7          	jalr	-1252(ra) # 800021a4 <_Znwm>
    80004690:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004694:	ffffe097          	auipc	ra,0xffffe
    80004698:	bf4080e7          	jalr	-1036(ra) # 80002288 <_ZN6ThreadC1Ev>
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	55478793          	addi	a5,a5,1364 # 8000bbf0 <_ZTV16ProducerKeyborad+0x10>
    800046a4:	00f4b023          	sd	a5,0(s1)
    800046a8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800046ac:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800046b0:	00048513          	mv	a0,s1
    800046b4:	ffffe097          	auipc	ra,0xffffe
    800046b8:	c08080e7          	jalr	-1016(ra) # 800022bc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046bc:	00100913          	li	s2,1
    800046c0:	0300006f          	j	800046f0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800046c4:	00007797          	auipc	a5,0x7
    800046c8:	55478793          	addi	a5,a5,1364 # 8000bc18 <_ZTV8Producer+0x10>
    800046cc:	00fcb023          	sd	a5,0(s9)
    800046d0:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800046d4:	00391793          	slli	a5,s2,0x3
    800046d8:	00fa07b3          	add	a5,s4,a5
    800046dc:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800046e0:	000c8513          	mv	a0,s9
    800046e4:	ffffe097          	auipc	ra,0xffffe
    800046e8:	bd8080e7          	jalr	-1064(ra) # 800022bc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800046ec:	0019091b          	addiw	s2,s2,1
    800046f0:	05395263          	bge	s2,s3,80004734 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800046f4:	00191493          	slli	s1,s2,0x1
    800046f8:	012484b3          	add	s1,s1,s2
    800046fc:	00349493          	slli	s1,s1,0x3
    80004700:	009b04b3          	add	s1,s6,s1
    80004704:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004708:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000470c:	00007797          	auipc	a5,0x7
    80004710:	7547b783          	ld	a5,1876(a5) # 8000be60 <_ZL10waitForAll>
    80004714:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004718:	02800513          	li	a0,40
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	a88080e7          	jalr	-1400(ra) # 800021a4 <_Znwm>
    80004724:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	b60080e7          	jalr	-1184(ra) # 80002288 <_ZN6ThreadC1Ev>
    80004730:	f95ff06f          	j	800046c4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004734:	ffffe097          	auipc	ra,0xffffe
    80004738:	bbc080e7          	jalr	-1092(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000473c:	00000493          	li	s1,0
    80004740:	0099ce63          	blt	s3,s1,8000475c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004744:	00007517          	auipc	a0,0x7
    80004748:	71c53503          	ld	a0,1820(a0) # 8000be60 <_ZL10waitForAll>
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	cec080e7          	jalr	-788(ra) # 80002438 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004754:	0014849b          	addiw	s1,s1,1
    80004758:	fe9ff06f          	j	80004740 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000475c:	00007517          	auipc	a0,0x7
    80004760:	70453503          	ld	a0,1796(a0) # 8000be60 <_ZL10waitForAll>
    80004764:	00050863          	beqz	a0,80004774 <_Z20testConsumerProducerv+0x2f4>
    80004768:	00053783          	ld	a5,0(a0)
    8000476c:	0087b783          	ld	a5,8(a5)
    80004770:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004774:	00000493          	li	s1,0
    80004778:	0080006f          	j	80004780 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    8000477c:	0014849b          	addiw	s1,s1,1
    80004780:	0334d263          	bge	s1,s3,800047a4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004784:	00349793          	slli	a5,s1,0x3
    80004788:	00fa07b3          	add	a5,s4,a5
    8000478c:	0007b503          	ld	a0,0(a5)
    80004790:	fe0506e3          	beqz	a0,8000477c <_Z20testConsumerProducerv+0x2fc>
    80004794:	00053783          	ld	a5,0(a0)
    80004798:	0087b783          	ld	a5,8(a5)
    8000479c:	000780e7          	jalr	a5
    800047a0:	fddff06f          	j	8000477c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800047a4:	000b8a63          	beqz	s7,800047b8 <_Z20testConsumerProducerv+0x338>
    800047a8:	000bb783          	ld	a5,0(s7)
    800047ac:	0087b783          	ld	a5,8(a5)
    800047b0:	000b8513          	mv	a0,s7
    800047b4:	000780e7          	jalr	a5
    delete buffer;
    800047b8:	000a8e63          	beqz	s5,800047d4 <_Z20testConsumerProducerv+0x354>
    800047bc:	000a8513          	mv	a0,s5
    800047c0:	00002097          	auipc	ra,0x2
    800047c4:	870080e7          	jalr	-1936(ra) # 80006030 <_ZN9BufferCPPD1Ev>
    800047c8:	000a8513          	mv	a0,s5
    800047cc:	ffffe097          	auipc	ra,0xffffe
    800047d0:	a00080e7          	jalr	-1536(ra) # 800021cc <_ZdlPv>
    800047d4:	000c0113          	mv	sp,s8
}
    800047d8:	f8040113          	addi	sp,s0,-128
    800047dc:	07813083          	ld	ra,120(sp)
    800047e0:	07013403          	ld	s0,112(sp)
    800047e4:	06813483          	ld	s1,104(sp)
    800047e8:	06013903          	ld	s2,96(sp)
    800047ec:	05813983          	ld	s3,88(sp)
    800047f0:	05013a03          	ld	s4,80(sp)
    800047f4:	04813a83          	ld	s5,72(sp)
    800047f8:	04013b03          	ld	s6,64(sp)
    800047fc:	03813b83          	ld	s7,56(sp)
    80004800:	03013c03          	ld	s8,48(sp)
    80004804:	02813c83          	ld	s9,40(sp)
    80004808:	08010113          	addi	sp,sp,128
    8000480c:	00008067          	ret
    80004810:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004814:	000a8513          	mv	a0,s5
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	9b4080e7          	jalr	-1612(ra) # 800021cc <_ZdlPv>
    80004820:	00048513          	mv	a0,s1
    80004824:	00008097          	auipc	ra,0x8
    80004828:	744080e7          	jalr	1860(ra) # 8000cf68 <_Unwind_Resume>
    8000482c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004830:	00090513          	mv	a0,s2
    80004834:	ffffe097          	auipc	ra,0xffffe
    80004838:	998080e7          	jalr	-1640(ra) # 800021cc <_ZdlPv>
    8000483c:	00048513          	mv	a0,s1
    80004840:	00008097          	auipc	ra,0x8
    80004844:	728080e7          	jalr	1832(ra) # 8000cf68 <_Unwind_Resume>
    80004848:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000484c:	000b8513          	mv	a0,s7
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	97c080e7          	jalr	-1668(ra) # 800021cc <_ZdlPv>
    80004858:	00048513          	mv	a0,s1
    8000485c:	00008097          	auipc	ra,0x8
    80004860:	70c080e7          	jalr	1804(ra) # 8000cf68 <_Unwind_Resume>
    80004864:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004868:	00048513          	mv	a0,s1
    8000486c:	ffffe097          	auipc	ra,0xffffe
    80004870:	960080e7          	jalr	-1696(ra) # 800021cc <_ZdlPv>
    80004874:	00090513          	mv	a0,s2
    80004878:	00008097          	auipc	ra,0x8
    8000487c:	6f0080e7          	jalr	1776(ra) # 8000cf68 <_Unwind_Resume>
    80004880:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004884:	000c8513          	mv	a0,s9
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	944080e7          	jalr	-1724(ra) # 800021cc <_ZdlPv>
    80004890:	00048513          	mv	a0,s1
    80004894:	00008097          	auipc	ra,0x8
    80004898:	6d4080e7          	jalr	1748(ra) # 8000cf68 <_Unwind_Resume>

000000008000489c <_ZN8Consumer3runEv>:
    void run() override {
    8000489c:	fd010113          	addi	sp,sp,-48
    800048a0:	02113423          	sd	ra,40(sp)
    800048a4:	02813023          	sd	s0,32(sp)
    800048a8:	00913c23          	sd	s1,24(sp)
    800048ac:	01213823          	sd	s2,16(sp)
    800048b0:	01313423          	sd	s3,8(sp)
    800048b4:	03010413          	addi	s0,sp,48
    800048b8:	00050913          	mv	s2,a0
        int i = 0;
    800048bc:	00000993          	li	s3,0
    800048c0:	0100006f          	j	800048d0 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800048c4:	00a00513          	li	a0,10
    800048c8:	ffffe097          	auipc	ra,0xffffe
    800048cc:	bf0080e7          	jalr	-1040(ra) # 800024b8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800048d0:	00007797          	auipc	a5,0x7
    800048d4:	5887a783          	lw	a5,1416(a5) # 8000be58 <_ZL9threadEnd>
    800048d8:	04079a63          	bnez	a5,8000492c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800048dc:	02093783          	ld	a5,32(s2)
    800048e0:	0087b503          	ld	a0,8(a5)
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	638080e7          	jalr	1592(ra) # 80005f1c <_ZN9BufferCPP3getEv>
            i++;
    800048ec:	0019849b          	addiw	s1,s3,1
    800048f0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800048f4:	0ff57513          	andi	a0,a0,255
    800048f8:	ffffe097          	auipc	ra,0xffffe
    800048fc:	bc0080e7          	jalr	-1088(ra) # 800024b8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004900:	05000793          	li	a5,80
    80004904:	02f4e4bb          	remw	s1,s1,a5
    80004908:	fc0494e3          	bnez	s1,800048d0 <_ZN8Consumer3runEv+0x34>
    8000490c:	fb9ff06f          	j	800048c4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004910:	02093783          	ld	a5,32(s2)
    80004914:	0087b503          	ld	a0,8(a5)
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	604080e7          	jalr	1540(ra) # 80005f1c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004920:	0ff57513          	andi	a0,a0,255
    80004924:	ffffe097          	auipc	ra,0xffffe
    80004928:	b94080e7          	jalr	-1132(ra) # 800024b8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000492c:	02093783          	ld	a5,32(s2)
    80004930:	0087b503          	ld	a0,8(a5)
    80004934:	00001097          	auipc	ra,0x1
    80004938:	674080e7          	jalr	1652(ra) # 80005fa8 <_ZN9BufferCPP6getCntEv>
    8000493c:	fca04ae3          	bgtz	a0,80004910 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004940:	02093783          	ld	a5,32(s2)
    80004944:	0107b503          	ld	a0,16(a5)
    80004948:	ffffe097          	auipc	ra,0xffffe
    8000494c:	b1c080e7          	jalr	-1252(ra) # 80002464 <_ZN9Semaphore6signalEv>
    }
    80004950:	02813083          	ld	ra,40(sp)
    80004954:	02013403          	ld	s0,32(sp)
    80004958:	01813483          	ld	s1,24(sp)
    8000495c:	01013903          	ld	s2,16(sp)
    80004960:	00813983          	ld	s3,8(sp)
    80004964:	03010113          	addi	sp,sp,48
    80004968:	00008067          	ret

000000008000496c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000496c:	ff010113          	addi	sp,sp,-16
    80004970:	00113423          	sd	ra,8(sp)
    80004974:	00813023          	sd	s0,0(sp)
    80004978:	01010413          	addi	s0,sp,16
    8000497c:	00007797          	auipc	a5,0x7
    80004980:	2c478793          	addi	a5,a5,708 # 8000bc40 <_ZTV8Consumer+0x10>
    80004984:	00f53023          	sd	a5,0(a0)
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	7cc080e7          	jalr	1996(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004990:	00813083          	ld	ra,8(sp)
    80004994:	00013403          	ld	s0,0(sp)
    80004998:	01010113          	addi	sp,sp,16
    8000499c:	00008067          	ret

00000000800049a0 <_ZN8ConsumerD0Ev>:
    800049a0:	fe010113          	addi	sp,sp,-32
    800049a4:	00113c23          	sd	ra,24(sp)
    800049a8:	00813823          	sd	s0,16(sp)
    800049ac:	00913423          	sd	s1,8(sp)
    800049b0:	02010413          	addi	s0,sp,32
    800049b4:	00050493          	mv	s1,a0
    800049b8:	00007797          	auipc	a5,0x7
    800049bc:	28878793          	addi	a5,a5,648 # 8000bc40 <_ZTV8Consumer+0x10>
    800049c0:	00f53023          	sd	a5,0(a0)
    800049c4:	ffffd097          	auipc	ra,0xffffd
    800049c8:	790080e7          	jalr	1936(ra) # 80002154 <_ZN6ThreadD1Ev>
    800049cc:	00048513          	mv	a0,s1
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	7fc080e7          	jalr	2044(ra) # 800021cc <_ZdlPv>
    800049d8:	01813083          	ld	ra,24(sp)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	00813483          	ld	s1,8(sp)
    800049e4:	02010113          	addi	sp,sp,32
    800049e8:	00008067          	ret

00000000800049ec <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800049ec:	ff010113          	addi	sp,sp,-16
    800049f0:	00113423          	sd	ra,8(sp)
    800049f4:	00813023          	sd	s0,0(sp)
    800049f8:	01010413          	addi	s0,sp,16
    800049fc:	00007797          	auipc	a5,0x7
    80004a00:	1f478793          	addi	a5,a5,500 # 8000bbf0 <_ZTV16ProducerKeyborad+0x10>
    80004a04:	00f53023          	sd	a5,0(a0)
    80004a08:	ffffd097          	auipc	ra,0xffffd
    80004a0c:	74c080e7          	jalr	1868(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004a10:	00813083          	ld	ra,8(sp)
    80004a14:	00013403          	ld	s0,0(sp)
    80004a18:	01010113          	addi	sp,sp,16
    80004a1c:	00008067          	ret

0000000080004a20 <_ZN16ProducerKeyboradD0Ev>:
    80004a20:	fe010113          	addi	sp,sp,-32
    80004a24:	00113c23          	sd	ra,24(sp)
    80004a28:	00813823          	sd	s0,16(sp)
    80004a2c:	00913423          	sd	s1,8(sp)
    80004a30:	02010413          	addi	s0,sp,32
    80004a34:	00050493          	mv	s1,a0
    80004a38:	00007797          	auipc	a5,0x7
    80004a3c:	1b878793          	addi	a5,a5,440 # 8000bbf0 <_ZTV16ProducerKeyborad+0x10>
    80004a40:	00f53023          	sd	a5,0(a0)
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	710080e7          	jalr	1808(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004a4c:	00048513          	mv	a0,s1
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	77c080e7          	jalr	1916(ra) # 800021cc <_ZdlPv>
    80004a58:	01813083          	ld	ra,24(sp)
    80004a5c:	01013403          	ld	s0,16(sp)
    80004a60:	00813483          	ld	s1,8(sp)
    80004a64:	02010113          	addi	sp,sp,32
    80004a68:	00008067          	ret

0000000080004a6c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004a6c:	ff010113          	addi	sp,sp,-16
    80004a70:	00113423          	sd	ra,8(sp)
    80004a74:	00813023          	sd	s0,0(sp)
    80004a78:	01010413          	addi	s0,sp,16
    80004a7c:	00007797          	auipc	a5,0x7
    80004a80:	19c78793          	addi	a5,a5,412 # 8000bc18 <_ZTV8Producer+0x10>
    80004a84:	00f53023          	sd	a5,0(a0)
    80004a88:	ffffd097          	auipc	ra,0xffffd
    80004a8c:	6cc080e7          	jalr	1740(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004a90:	00813083          	ld	ra,8(sp)
    80004a94:	00013403          	ld	s0,0(sp)
    80004a98:	01010113          	addi	sp,sp,16
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZN8ProducerD0Ev>:
    80004aa0:	fe010113          	addi	sp,sp,-32
    80004aa4:	00113c23          	sd	ra,24(sp)
    80004aa8:	00813823          	sd	s0,16(sp)
    80004aac:	00913423          	sd	s1,8(sp)
    80004ab0:	02010413          	addi	s0,sp,32
    80004ab4:	00050493          	mv	s1,a0
    80004ab8:	00007797          	auipc	a5,0x7
    80004abc:	16078793          	addi	a5,a5,352 # 8000bc18 <_ZTV8Producer+0x10>
    80004ac0:	00f53023          	sd	a5,0(a0)
    80004ac4:	ffffd097          	auipc	ra,0xffffd
    80004ac8:	690080e7          	jalr	1680(ra) # 80002154 <_ZN6ThreadD1Ev>
    80004acc:	00048513          	mv	a0,s1
    80004ad0:	ffffd097          	auipc	ra,0xffffd
    80004ad4:	6fc080e7          	jalr	1788(ra) # 800021cc <_ZdlPv>
    80004ad8:	01813083          	ld	ra,24(sp)
    80004adc:	01013403          	ld	s0,16(sp)
    80004ae0:	00813483          	ld	s1,8(sp)
    80004ae4:	02010113          	addi	sp,sp,32
    80004ae8:	00008067          	ret

0000000080004aec <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004aec:	fe010113          	addi	sp,sp,-32
    80004af0:	00113c23          	sd	ra,24(sp)
    80004af4:	00813823          	sd	s0,16(sp)
    80004af8:	00913423          	sd	s1,8(sp)
    80004afc:	02010413          	addi	s0,sp,32
    80004b00:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004b04:	ffffd097          	auipc	ra,0xffffd
    80004b08:	a54080e7          	jalr	-1452(ra) # 80001558 <_Z4getcv>
    80004b0c:	0005059b          	sext.w	a1,a0
    80004b10:	01b00793          	li	a5,27
    80004b14:	00f58c63          	beq	a1,a5,80004b2c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004b18:	0204b783          	ld	a5,32(s1)
    80004b1c:	0087b503          	ld	a0,8(a5)
    80004b20:	00001097          	auipc	ra,0x1
    80004b24:	36c080e7          	jalr	876(ra) # 80005e8c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004b28:	fddff06f          	j	80004b04 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004b2c:	00100793          	li	a5,1
    80004b30:	00007717          	auipc	a4,0x7
    80004b34:	32f72423          	sw	a5,808(a4) # 8000be58 <_ZL9threadEnd>
        td->buffer->put('!');
    80004b38:	0204b783          	ld	a5,32(s1)
    80004b3c:	02100593          	li	a1,33
    80004b40:	0087b503          	ld	a0,8(a5)
    80004b44:	00001097          	auipc	ra,0x1
    80004b48:	348080e7          	jalr	840(ra) # 80005e8c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004b4c:	0204b783          	ld	a5,32(s1)
    80004b50:	0107b503          	ld	a0,16(a5)
    80004b54:	ffffe097          	auipc	ra,0xffffe
    80004b58:	910080e7          	jalr	-1776(ra) # 80002464 <_ZN9Semaphore6signalEv>
    }
    80004b5c:	01813083          	ld	ra,24(sp)
    80004b60:	01013403          	ld	s0,16(sp)
    80004b64:	00813483          	ld	s1,8(sp)
    80004b68:	02010113          	addi	sp,sp,32
    80004b6c:	00008067          	ret

0000000080004b70 <_ZN8Producer3runEv>:
    void run() override {
    80004b70:	fe010113          	addi	sp,sp,-32
    80004b74:	00113c23          	sd	ra,24(sp)
    80004b78:	00813823          	sd	s0,16(sp)
    80004b7c:	00913423          	sd	s1,8(sp)
    80004b80:	01213023          	sd	s2,0(sp)
    80004b84:	02010413          	addi	s0,sp,32
    80004b88:	00050493          	mv	s1,a0
        int i = 0;
    80004b8c:	00000913          	li	s2,0
        while (!threadEnd) {
    80004b90:	00007797          	auipc	a5,0x7
    80004b94:	2c87a783          	lw	a5,712(a5) # 8000be58 <_ZL9threadEnd>
    80004b98:	04079263          	bnez	a5,80004bdc <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004b9c:	0204b783          	ld	a5,32(s1)
    80004ba0:	0007a583          	lw	a1,0(a5)
    80004ba4:	0305859b          	addiw	a1,a1,48
    80004ba8:	0087b503          	ld	a0,8(a5)
    80004bac:	00001097          	auipc	ra,0x1
    80004bb0:	2e0080e7          	jalr	736(ra) # 80005e8c <_ZN9BufferCPP3putEi>
            i++;
    80004bb4:	0019071b          	addiw	a4,s2,1
    80004bb8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004bbc:	0204b783          	ld	a5,32(s1)
    80004bc0:	0007a783          	lw	a5,0(a5)
    80004bc4:	00e787bb          	addw	a5,a5,a4
    80004bc8:	00500513          	li	a0,5
    80004bcc:	02a7e53b          	remw	a0,a5,a0
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	748080e7          	jalr	1864(ra) # 80002318 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004bd8:	fb9ff06f          	j	80004b90 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004bdc:	0204b783          	ld	a5,32(s1)
    80004be0:	0107b503          	ld	a0,16(a5)
    80004be4:	ffffe097          	auipc	ra,0xffffe
    80004be8:	880080e7          	jalr	-1920(ra) # 80002464 <_ZN9Semaphore6signalEv>
    }
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	00813483          	ld	s1,8(sp)
    80004bf8:	00013903          	ld	s2,0(sp)
    80004bfc:	02010113          	addi	sp,sp,32
    80004c00:	00008067          	ret

0000000080004c04 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004c04:	fe010113          	addi	sp,sp,-32
    80004c08:	00113c23          	sd	ra,24(sp)
    80004c0c:	00813823          	sd	s0,16(sp)
    80004c10:	00913423          	sd	s1,8(sp)
    80004c14:	01213023          	sd	s2,0(sp)
    80004c18:	02010413          	addi	s0,sp,32
    80004c1c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004c20:	00100793          	li	a5,1
    80004c24:	02a7f863          	bgeu	a5,a0,80004c54 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004c28:	00a00793          	li	a5,10
    80004c2c:	02f577b3          	remu	a5,a0,a5
    80004c30:	02078e63          	beqz	a5,80004c6c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004c34:	fff48513          	addi	a0,s1,-1
    80004c38:	00000097          	auipc	ra,0x0
    80004c3c:	fcc080e7          	jalr	-52(ra) # 80004c04 <_ZL9fibonaccim>
    80004c40:	00050913          	mv	s2,a0
    80004c44:	ffe48513          	addi	a0,s1,-2
    80004c48:	00000097          	auipc	ra,0x0
    80004c4c:	fbc080e7          	jalr	-68(ra) # 80004c04 <_ZL9fibonaccim>
    80004c50:	00a90533          	add	a0,s2,a0
}
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	00013903          	ld	s2,0(sp)
    80004c64:	02010113          	addi	sp,sp,32
    80004c68:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004c6c:	ffffc097          	auipc	ra,0xffffc
    80004c70:	764080e7          	jalr	1892(ra) # 800013d0 <_Z15thread_dispatchv>
    80004c74:	fc1ff06f          	j	80004c34 <_ZL9fibonaccim+0x30>

0000000080004c78 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004c78:	fe010113          	addi	sp,sp,-32
    80004c7c:	00113c23          	sd	ra,24(sp)
    80004c80:	00813823          	sd	s0,16(sp)
    80004c84:	00913423          	sd	s1,8(sp)
    80004c88:	01213023          	sd	s2,0(sp)
    80004c8c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004c90:	00a00493          	li	s1,10
    80004c94:	0400006f          	j	80004cd4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	65850513          	addi	a0,a0,1624 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	dc8080e7          	jalr	-568(ra) # 80005a68 <_Z11printStringPKc>
    80004ca8:	00000613          	li	a2,0
    80004cac:	00a00593          	li	a1,10
    80004cb0:	00048513          	mv	a0,s1
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	f64080e7          	jalr	-156(ra) # 80005c18 <_Z8printIntiii>
    80004cbc:	00005517          	auipc	a0,0x5
    80004cc0:	82450513          	addi	a0,a0,-2012 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004cc4:	00001097          	auipc	ra,0x1
    80004cc8:	da4080e7          	jalr	-604(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004ccc:	0014849b          	addiw	s1,s1,1
    80004cd0:	0ff4f493          	andi	s1,s1,255
    80004cd4:	00c00793          	li	a5,12
    80004cd8:	fc97f0e3          	bgeu	a5,s1,80004c98 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004cdc:	00004517          	auipc	a0,0x4
    80004ce0:	61c50513          	addi	a0,a0,1564 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	d84080e7          	jalr	-636(ra) # 80005a68 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004cec:	00500313          	li	t1,5
    thread_dispatch();
    80004cf0:	ffffc097          	auipc	ra,0xffffc
    80004cf4:	6e0080e7          	jalr	1760(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004cf8:	01000513          	li	a0,16
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	f08080e7          	jalr	-248(ra) # 80004c04 <_ZL9fibonaccim>
    80004d04:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004d08:	00004517          	auipc	a0,0x4
    80004d0c:	60050513          	addi	a0,a0,1536 # 80009308 <CONSOLE_STATUS+0x2f8>
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	d58080e7          	jalr	-680(ra) # 80005a68 <_Z11printStringPKc>
    80004d18:	00000613          	li	a2,0
    80004d1c:	00a00593          	li	a1,10
    80004d20:	0009051b          	sext.w	a0,s2
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	ef4080e7          	jalr	-268(ra) # 80005c18 <_Z8printIntiii>
    80004d2c:	00004517          	auipc	a0,0x4
    80004d30:	7b450513          	addi	a0,a0,1972 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	d34080e7          	jalr	-716(ra) # 80005a68 <_Z11printStringPKc>
    80004d3c:	0400006f          	j	80004d7c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d40:	00004517          	auipc	a0,0x4
    80004d44:	5b050513          	addi	a0,a0,1456 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	d20080e7          	jalr	-736(ra) # 80005a68 <_Z11printStringPKc>
    80004d50:	00000613          	li	a2,0
    80004d54:	00a00593          	li	a1,10
    80004d58:	00048513          	mv	a0,s1
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	ebc080e7          	jalr	-324(ra) # 80005c18 <_Z8printIntiii>
    80004d64:	00004517          	auipc	a0,0x4
    80004d68:	77c50513          	addi	a0,a0,1916 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	cfc080e7          	jalr	-772(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004d74:	0014849b          	addiw	s1,s1,1
    80004d78:	0ff4f493          	andi	s1,s1,255
    80004d7c:	00f00793          	li	a5,15
    80004d80:	fc97f0e3          	bgeu	a5,s1,80004d40 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004d84:	00004517          	auipc	a0,0x4
    80004d88:	59450513          	addi	a0,a0,1428 # 80009318 <CONSOLE_STATUS+0x308>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	cdc080e7          	jalr	-804(ra) # 80005a68 <_Z11printStringPKc>
    finishedD = true;
    80004d94:	00100793          	li	a5,1
    80004d98:	00007717          	auipc	a4,0x7
    80004d9c:	0cf70823          	sb	a5,208(a4) # 8000be68 <_ZL9finishedD>
    thread_dispatch();
    80004da0:	ffffc097          	auipc	ra,0xffffc
    80004da4:	630080e7          	jalr	1584(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004da8:	01813083          	ld	ra,24(sp)
    80004dac:	01013403          	ld	s0,16(sp)
    80004db0:	00813483          	ld	s1,8(sp)
    80004db4:	00013903          	ld	s2,0(sp)
    80004db8:	02010113          	addi	sp,sp,32
    80004dbc:	00008067          	ret

0000000080004dc0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004dc0:	fe010113          	addi	sp,sp,-32
    80004dc4:	00113c23          	sd	ra,24(sp)
    80004dc8:	00813823          	sd	s0,16(sp)
    80004dcc:	00913423          	sd	s1,8(sp)
    80004dd0:	01213023          	sd	s2,0(sp)
    80004dd4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004dd8:	00000493          	li	s1,0
    80004ddc:	0400006f          	j	80004e1c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004de0:	00004517          	auipc	a0,0x4
    80004de4:	4d050513          	addi	a0,a0,1232 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004de8:	00001097          	auipc	ra,0x1
    80004dec:	c80080e7          	jalr	-896(ra) # 80005a68 <_Z11printStringPKc>
    80004df0:	00000613          	li	a2,0
    80004df4:	00a00593          	li	a1,10
    80004df8:	00048513          	mv	a0,s1
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	e1c080e7          	jalr	-484(ra) # 80005c18 <_Z8printIntiii>
    80004e04:	00004517          	auipc	a0,0x4
    80004e08:	6dc50513          	addi	a0,a0,1756 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004e0c:	00001097          	auipc	ra,0x1
    80004e10:	c5c080e7          	jalr	-932(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004e14:	0014849b          	addiw	s1,s1,1
    80004e18:	0ff4f493          	andi	s1,s1,255
    80004e1c:	00200793          	li	a5,2
    80004e20:	fc97f0e3          	bgeu	a5,s1,80004de0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004e24:	00004517          	auipc	a0,0x4
    80004e28:	49450513          	addi	a0,a0,1172 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	c3c080e7          	jalr	-964(ra) # 80005a68 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004e34:	00700313          	li	t1,7
    thread_dispatch();
    80004e38:	ffffc097          	auipc	ra,0xffffc
    80004e3c:	598080e7          	jalr	1432(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004e40:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004e44:	00004517          	auipc	a0,0x4
    80004e48:	48450513          	addi	a0,a0,1156 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	c1c080e7          	jalr	-996(ra) # 80005a68 <_Z11printStringPKc>
    80004e54:	00000613          	li	a2,0
    80004e58:	00a00593          	li	a1,10
    80004e5c:	0009051b          	sext.w	a0,s2
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	db8080e7          	jalr	-584(ra) # 80005c18 <_Z8printIntiii>
    80004e68:	00004517          	auipc	a0,0x4
    80004e6c:	67850513          	addi	a0,a0,1656 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	bf8080e7          	jalr	-1032(ra) # 80005a68 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004e78:	00c00513          	li	a0,12
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	d88080e7          	jalr	-632(ra) # 80004c04 <_ZL9fibonaccim>
    80004e84:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	44850513          	addi	a0,a0,1096 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	bd8080e7          	jalr	-1064(ra) # 80005a68 <_Z11printStringPKc>
    80004e98:	00000613          	li	a2,0
    80004e9c:	00a00593          	li	a1,10
    80004ea0:	0009051b          	sext.w	a0,s2
    80004ea4:	00001097          	auipc	ra,0x1
    80004ea8:	d74080e7          	jalr	-652(ra) # 80005c18 <_Z8printIntiii>
    80004eac:	00004517          	auipc	a0,0x4
    80004eb0:	63450513          	addi	a0,a0,1588 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	bb4080e7          	jalr	-1100(ra) # 80005a68 <_Z11printStringPKc>
    80004ebc:	0400006f          	j	80004efc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004ec0:	00004517          	auipc	a0,0x4
    80004ec4:	3f050513          	addi	a0,a0,1008 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004ec8:	00001097          	auipc	ra,0x1
    80004ecc:	ba0080e7          	jalr	-1120(ra) # 80005a68 <_Z11printStringPKc>
    80004ed0:	00000613          	li	a2,0
    80004ed4:	00a00593          	li	a1,10
    80004ed8:	00048513          	mv	a0,s1
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	d3c080e7          	jalr	-708(ra) # 80005c18 <_Z8printIntiii>
    80004ee4:	00004517          	auipc	a0,0x4
    80004ee8:	5fc50513          	addi	a0,a0,1532 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004eec:	00001097          	auipc	ra,0x1
    80004ef0:	b7c080e7          	jalr	-1156(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ef4:	0014849b          	addiw	s1,s1,1
    80004ef8:	0ff4f493          	andi	s1,s1,255
    80004efc:	00500793          	li	a5,5
    80004f00:	fc97f0e3          	bgeu	a5,s1,80004ec0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004f04:	00004517          	auipc	a0,0x4
    80004f08:	38450513          	addi	a0,a0,900 # 80009288 <CONSOLE_STATUS+0x278>
    80004f0c:	00001097          	auipc	ra,0x1
    80004f10:	b5c080e7          	jalr	-1188(ra) # 80005a68 <_Z11printStringPKc>
    finishedC = true;
    80004f14:	00100793          	li	a5,1
    80004f18:	00007717          	auipc	a4,0x7
    80004f1c:	f4f708a3          	sb	a5,-175(a4) # 8000be69 <_ZL9finishedC>
    thread_dispatch();
    80004f20:	ffffc097          	auipc	ra,0xffffc
    80004f24:	4b0080e7          	jalr	1200(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004f28:	01813083          	ld	ra,24(sp)
    80004f2c:	01013403          	ld	s0,16(sp)
    80004f30:	00813483          	ld	s1,8(sp)
    80004f34:	00013903          	ld	s2,0(sp)
    80004f38:	02010113          	addi	sp,sp,32
    80004f3c:	00008067          	ret

0000000080004f40 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004f40:	fe010113          	addi	sp,sp,-32
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	00813823          	sd	s0,16(sp)
    80004f4c:	00913423          	sd	s1,8(sp)
    80004f50:	01213023          	sd	s2,0(sp)
    80004f54:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004f58:	00000913          	li	s2,0
    80004f5c:	0380006f          	j	80004f94 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004f60:	ffffc097          	auipc	ra,0xffffc
    80004f64:	470080e7          	jalr	1136(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f68:	00148493          	addi	s1,s1,1
    80004f6c:	000027b7          	lui	a5,0x2
    80004f70:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f74:	0097ee63          	bltu	a5,s1,80004f90 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f78:	00000713          	li	a4,0
    80004f7c:	000077b7          	lui	a5,0x7
    80004f80:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f84:	fce7eee3          	bltu	a5,a4,80004f60 <_ZL11workerBodyBPv+0x20>
    80004f88:	00170713          	addi	a4,a4,1
    80004f8c:	ff1ff06f          	j	80004f7c <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004f90:	00190913          	addi	s2,s2,1
    80004f94:	00f00793          	li	a5,15
    80004f98:	0527e063          	bltu	a5,s2,80004fd8 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	2fc50513          	addi	a0,a0,764 # 80009298 <CONSOLE_STATUS+0x288>
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	ac4080e7          	jalr	-1340(ra) # 80005a68 <_Z11printStringPKc>
    80004fac:	00000613          	li	a2,0
    80004fb0:	00a00593          	li	a1,10
    80004fb4:	0009051b          	sext.w	a0,s2
    80004fb8:	00001097          	auipc	ra,0x1
    80004fbc:	c60080e7          	jalr	-928(ra) # 80005c18 <_Z8printIntiii>
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	52050513          	addi	a0,a0,1312 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	aa0080e7          	jalr	-1376(ra) # 80005a68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fd0:	00000493          	li	s1,0
    80004fd4:	f99ff06f          	j	80004f6c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004fd8:	00004517          	auipc	a0,0x4
    80004fdc:	2c850513          	addi	a0,a0,712 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fe0:	00001097          	auipc	ra,0x1
    80004fe4:	a88080e7          	jalr	-1400(ra) # 80005a68 <_Z11printStringPKc>
    finishedB = true;
    80004fe8:	00100793          	li	a5,1
    80004fec:	00007717          	auipc	a4,0x7
    80004ff0:	e6f70f23          	sb	a5,-386(a4) # 8000be6a <_ZL9finishedB>
    thread_dispatch();
    80004ff4:	ffffc097          	auipc	ra,0xffffc
    80004ff8:	3dc080e7          	jalr	988(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80004ffc:	01813083          	ld	ra,24(sp)
    80005000:	01013403          	ld	s0,16(sp)
    80005004:	00813483          	ld	s1,8(sp)
    80005008:	00013903          	ld	s2,0(sp)
    8000500c:	02010113          	addi	sp,sp,32
    80005010:	00008067          	ret

0000000080005014 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005014:	fe010113          	addi	sp,sp,-32
    80005018:	00113c23          	sd	ra,24(sp)
    8000501c:	00813823          	sd	s0,16(sp)
    80005020:	00913423          	sd	s1,8(sp)
    80005024:	01213023          	sd	s2,0(sp)
    80005028:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000502c:	00000913          	li	s2,0
    80005030:	0380006f          	j	80005068 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005034:	ffffc097          	auipc	ra,0xffffc
    80005038:	39c080e7          	jalr	924(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000503c:	00148493          	addi	s1,s1,1
    80005040:	000027b7          	lui	a5,0x2
    80005044:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005048:	0097ee63          	bltu	a5,s1,80005064 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000504c:	00000713          	li	a4,0
    80005050:	000077b7          	lui	a5,0x7
    80005054:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005058:	fce7eee3          	bltu	a5,a4,80005034 <_ZL11workerBodyAPv+0x20>
    8000505c:	00170713          	addi	a4,a4,1
    80005060:	ff1ff06f          	j	80005050 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005064:	00190913          	addi	s2,s2,1
    80005068:	00900793          	li	a5,9
    8000506c:	0527e063          	bltu	a5,s2,800050ac <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005070:	00004517          	auipc	a0,0x4
    80005074:	21050513          	addi	a0,a0,528 # 80009280 <CONSOLE_STATUS+0x270>
    80005078:	00001097          	auipc	ra,0x1
    8000507c:	9f0080e7          	jalr	-1552(ra) # 80005a68 <_Z11printStringPKc>
    80005080:	00000613          	li	a2,0
    80005084:	00a00593          	li	a1,10
    80005088:	0009051b          	sext.w	a0,s2
    8000508c:	00001097          	auipc	ra,0x1
    80005090:	b8c080e7          	jalr	-1140(ra) # 80005c18 <_Z8printIntiii>
    80005094:	00004517          	auipc	a0,0x4
    80005098:	44c50513          	addi	a0,a0,1100 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	9cc080e7          	jalr	-1588(ra) # 80005a68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050a4:	00000493          	li	s1,0
    800050a8:	f99ff06f          	j	80005040 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800050ac:	00004517          	auipc	a0,0x4
    800050b0:	1dc50513          	addi	a0,a0,476 # 80009288 <CONSOLE_STATUS+0x278>
    800050b4:	00001097          	auipc	ra,0x1
    800050b8:	9b4080e7          	jalr	-1612(ra) # 80005a68 <_Z11printStringPKc>
    finishedA = true;
    800050bc:	00100793          	li	a5,1
    800050c0:	00007717          	auipc	a4,0x7
    800050c4:	daf705a3          	sb	a5,-597(a4) # 8000be6b <_ZL9finishedA>
}
    800050c8:	01813083          	ld	ra,24(sp)
    800050cc:	01013403          	ld	s0,16(sp)
    800050d0:	00813483          	ld	s1,8(sp)
    800050d4:	00013903          	ld	s2,0(sp)
    800050d8:	02010113          	addi	sp,sp,32
    800050dc:	00008067          	ret

00000000800050e0 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800050e0:	fd010113          	addi	sp,sp,-48
    800050e4:	02113423          	sd	ra,40(sp)
    800050e8:	02813023          	sd	s0,32(sp)
    800050ec:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800050f0:	00000613          	li	a2,0
    800050f4:	00000597          	auipc	a1,0x0
    800050f8:	f2058593          	addi	a1,a1,-224 # 80005014 <_ZL11workerBodyAPv>
    800050fc:	fd040513          	addi	a0,s0,-48
    80005100:	ffffc097          	auipc	ra,0xffffc
    80005104:	234080e7          	jalr	564(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005108:	00004517          	auipc	a0,0x4
    8000510c:	22050513          	addi	a0,a0,544 # 80009328 <CONSOLE_STATUS+0x318>
    80005110:	00001097          	auipc	ra,0x1
    80005114:	958080e7          	jalr	-1704(ra) # 80005a68 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005118:	00000613          	li	a2,0
    8000511c:	00000597          	auipc	a1,0x0
    80005120:	e2458593          	addi	a1,a1,-476 # 80004f40 <_ZL11workerBodyBPv>
    80005124:	fd840513          	addi	a0,s0,-40
    80005128:	ffffc097          	auipc	ra,0xffffc
    8000512c:	20c080e7          	jalr	524(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005130:	00004517          	auipc	a0,0x4
    80005134:	21050513          	addi	a0,a0,528 # 80009340 <CONSOLE_STATUS+0x330>
    80005138:	00001097          	auipc	ra,0x1
    8000513c:	930080e7          	jalr	-1744(ra) # 80005a68 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005140:	00000613          	li	a2,0
    80005144:	00000597          	auipc	a1,0x0
    80005148:	c7c58593          	addi	a1,a1,-900 # 80004dc0 <_ZL11workerBodyCPv>
    8000514c:	fe040513          	addi	a0,s0,-32
    80005150:	ffffc097          	auipc	ra,0xffffc
    80005154:	1e4080e7          	jalr	484(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005158:	00004517          	auipc	a0,0x4
    8000515c:	20050513          	addi	a0,a0,512 # 80009358 <CONSOLE_STATUS+0x348>
    80005160:	00001097          	auipc	ra,0x1
    80005164:	908080e7          	jalr	-1784(ra) # 80005a68 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005168:	00000613          	li	a2,0
    8000516c:	00000597          	auipc	a1,0x0
    80005170:	b0c58593          	addi	a1,a1,-1268 # 80004c78 <_ZL11workerBodyDPv>
    80005174:	fe840513          	addi	a0,s0,-24
    80005178:	ffffc097          	auipc	ra,0xffffc
    8000517c:	1bc080e7          	jalr	444(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005180:	00004517          	auipc	a0,0x4
    80005184:	1f050513          	addi	a0,a0,496 # 80009370 <CONSOLE_STATUS+0x360>
    80005188:	00001097          	auipc	ra,0x1
    8000518c:	8e0080e7          	jalr	-1824(ra) # 80005a68 <_Z11printStringPKc>
    80005190:	00c0006f          	j	8000519c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005194:	ffffc097          	auipc	ra,0xffffc
    80005198:	23c080e7          	jalr	572(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000519c:	00007797          	auipc	a5,0x7
    800051a0:	ccf7c783          	lbu	a5,-817(a5) # 8000be6b <_ZL9finishedA>
    800051a4:	fe0788e3          	beqz	a5,80005194 <_Z18Threads_C_API_testv+0xb4>
    800051a8:	00007797          	auipc	a5,0x7
    800051ac:	cc27c783          	lbu	a5,-830(a5) # 8000be6a <_ZL9finishedB>
    800051b0:	fe0782e3          	beqz	a5,80005194 <_Z18Threads_C_API_testv+0xb4>
    800051b4:	00007797          	auipc	a5,0x7
    800051b8:	cb57c783          	lbu	a5,-843(a5) # 8000be69 <_ZL9finishedC>
    800051bc:	fc078ce3          	beqz	a5,80005194 <_Z18Threads_C_API_testv+0xb4>
    800051c0:	00007797          	auipc	a5,0x7
    800051c4:	ca87c783          	lbu	a5,-856(a5) # 8000be68 <_ZL9finishedD>
    800051c8:	fc0786e3          	beqz	a5,80005194 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800051cc:	02813083          	ld	ra,40(sp)
    800051d0:	02013403          	ld	s0,32(sp)
    800051d4:	03010113          	addi	sp,sp,48
    800051d8:	00008067          	ret

00000000800051dc <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800051dc:	fd010113          	addi	sp,sp,-48
    800051e0:	02113423          	sd	ra,40(sp)
    800051e4:	02813023          	sd	s0,32(sp)
    800051e8:	00913c23          	sd	s1,24(sp)
    800051ec:	01213823          	sd	s2,16(sp)
    800051f0:	01313423          	sd	s3,8(sp)
    800051f4:	03010413          	addi	s0,sp,48
    800051f8:	00050993          	mv	s3,a0
    800051fc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005200:	00000913          	li	s2,0
    80005204:	00c0006f          	j	80005210 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	0e8080e7          	jalr	232(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005210:	ffffc097          	auipc	ra,0xffffc
    80005214:	348080e7          	jalr	840(ra) # 80001558 <_Z4getcv>
    80005218:	0005059b          	sext.w	a1,a0
    8000521c:	01b00793          	li	a5,27
    80005220:	02f58a63          	beq	a1,a5,80005254 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005224:	0084b503          	ld	a0,8(s1)
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	c64080e7          	jalr	-924(ra) # 80005e8c <_ZN9BufferCPP3putEi>
        i++;
    80005230:	0019071b          	addiw	a4,s2,1
    80005234:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005238:	0004a683          	lw	a3,0(s1)
    8000523c:	0026979b          	slliw	a5,a3,0x2
    80005240:	00d787bb          	addw	a5,a5,a3
    80005244:	0017979b          	slliw	a5,a5,0x1
    80005248:	02f767bb          	remw	a5,a4,a5
    8000524c:	fc0792e3          	bnez	a5,80005210 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005250:	fb9ff06f          	j	80005208 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005254:	00100793          	li	a5,1
    80005258:	00007717          	auipc	a4,0x7
    8000525c:	c0f72c23          	sw	a5,-1000(a4) # 8000be70 <_ZL9threadEnd>
    td->buffer->put('!');
    80005260:	0209b783          	ld	a5,32(s3)
    80005264:	02100593          	li	a1,33
    80005268:	0087b503          	ld	a0,8(a5)
    8000526c:	00001097          	auipc	ra,0x1
    80005270:	c20080e7          	jalr	-992(ra) # 80005e8c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005274:	0104b503          	ld	a0,16(s1)
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	1ec080e7          	jalr	492(ra) # 80002464 <_ZN9Semaphore6signalEv>
}
    80005280:	02813083          	ld	ra,40(sp)
    80005284:	02013403          	ld	s0,32(sp)
    80005288:	01813483          	ld	s1,24(sp)
    8000528c:	01013903          	ld	s2,16(sp)
    80005290:	00813983          	ld	s3,8(sp)
    80005294:	03010113          	addi	sp,sp,48
    80005298:	00008067          	ret

000000008000529c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000529c:	fe010113          	addi	sp,sp,-32
    800052a0:	00113c23          	sd	ra,24(sp)
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00913423          	sd	s1,8(sp)
    800052ac:	01213023          	sd	s2,0(sp)
    800052b0:	02010413          	addi	s0,sp,32
    800052b4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800052b8:	00000913          	li	s2,0
    800052bc:	00c0006f          	j	800052c8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	030080e7          	jalr	48(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800052c8:	00007797          	auipc	a5,0x7
    800052cc:	ba87a783          	lw	a5,-1112(a5) # 8000be70 <_ZL9threadEnd>
    800052d0:	02079e63          	bnez	a5,8000530c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800052d4:	0004a583          	lw	a1,0(s1)
    800052d8:	0305859b          	addiw	a1,a1,48
    800052dc:	0084b503          	ld	a0,8(s1)
    800052e0:	00001097          	auipc	ra,0x1
    800052e4:	bac080e7          	jalr	-1108(ra) # 80005e8c <_ZN9BufferCPP3putEi>
        i++;
    800052e8:	0019071b          	addiw	a4,s2,1
    800052ec:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800052f0:	0004a683          	lw	a3,0(s1)
    800052f4:	0026979b          	slliw	a5,a3,0x2
    800052f8:	00d787bb          	addw	a5,a5,a3
    800052fc:	0017979b          	slliw	a5,a5,0x1
    80005300:	02f767bb          	remw	a5,a4,a5
    80005304:	fc0792e3          	bnez	a5,800052c8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005308:	fb9ff06f          	j	800052c0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000530c:	0104b503          	ld	a0,16(s1)
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	154080e7          	jalr	340(ra) # 80002464 <_ZN9Semaphore6signalEv>
}
    80005318:	01813083          	ld	ra,24(sp)
    8000531c:	01013403          	ld	s0,16(sp)
    80005320:	00813483          	ld	s1,8(sp)
    80005324:	00013903          	ld	s2,0(sp)
    80005328:	02010113          	addi	sp,sp,32
    8000532c:	00008067          	ret

0000000080005330 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005330:	fd010113          	addi	sp,sp,-48
    80005334:	02113423          	sd	ra,40(sp)
    80005338:	02813023          	sd	s0,32(sp)
    8000533c:	00913c23          	sd	s1,24(sp)
    80005340:	01213823          	sd	s2,16(sp)
    80005344:	01313423          	sd	s3,8(sp)
    80005348:	01413023          	sd	s4,0(sp)
    8000534c:	03010413          	addi	s0,sp,48
    80005350:	00050993          	mv	s3,a0
    80005354:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005358:	00000a13          	li	s4,0
    8000535c:	01c0006f          	j	80005378 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	f90080e7          	jalr	-112(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    80005368:	0500006f          	j	800053b8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000536c:	00a00513          	li	a0,10
    80005370:	ffffc097          	auipc	ra,0xffffc
    80005374:	210080e7          	jalr	528(ra) # 80001580 <_Z4putcc>
    while (!threadEnd) {
    80005378:	00007797          	auipc	a5,0x7
    8000537c:	af87a783          	lw	a5,-1288(a5) # 8000be70 <_ZL9threadEnd>
    80005380:	06079263          	bnez	a5,800053e4 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005384:	00893503          	ld	a0,8(s2)
    80005388:	00001097          	auipc	ra,0x1
    8000538c:	b94080e7          	jalr	-1132(ra) # 80005f1c <_ZN9BufferCPP3getEv>
        i++;
    80005390:	001a049b          	addiw	s1,s4,1
    80005394:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005398:	0ff57513          	andi	a0,a0,255
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	1e4080e7          	jalr	484(ra) # 80001580 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800053a4:	00092703          	lw	a4,0(s2)
    800053a8:	0027179b          	slliw	a5,a4,0x2
    800053ac:	00e787bb          	addw	a5,a5,a4
    800053b0:	02f4e7bb          	remw	a5,s1,a5
    800053b4:	fa0786e3          	beqz	a5,80005360 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800053b8:	05000793          	li	a5,80
    800053bc:	02f4e4bb          	remw	s1,s1,a5
    800053c0:	fa049ce3          	bnez	s1,80005378 <_ZN12ConsumerSync8consumerEPv+0x48>
    800053c4:	fa9ff06f          	j	8000536c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800053c8:	0209b783          	ld	a5,32(s3)
    800053cc:	0087b503          	ld	a0,8(a5)
    800053d0:	00001097          	auipc	ra,0x1
    800053d4:	b4c080e7          	jalr	-1204(ra) # 80005f1c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800053d8:	0ff57513          	andi	a0,a0,255
    800053dc:	ffffd097          	auipc	ra,0xffffd
    800053e0:	0dc080e7          	jalr	220(ra) # 800024b8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800053e4:	0209b783          	ld	a5,32(s3)
    800053e8:	0087b503          	ld	a0,8(a5)
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	bbc080e7          	jalr	-1092(ra) # 80005fa8 <_ZN9BufferCPP6getCntEv>
    800053f4:	fca04ae3          	bgtz	a0,800053c8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800053f8:	01093503          	ld	a0,16(s2)
    800053fc:	ffffd097          	auipc	ra,0xffffd
    80005400:	068080e7          	jalr	104(ra) # 80002464 <_ZN9Semaphore6signalEv>
}
    80005404:	02813083          	ld	ra,40(sp)
    80005408:	02013403          	ld	s0,32(sp)
    8000540c:	01813483          	ld	s1,24(sp)
    80005410:	01013903          	ld	s2,16(sp)
    80005414:	00813983          	ld	s3,8(sp)
    80005418:	00013a03          	ld	s4,0(sp)
    8000541c:	03010113          	addi	sp,sp,48
    80005420:	00008067          	ret

0000000080005424 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005424:	f8010113          	addi	sp,sp,-128
    80005428:	06113c23          	sd	ra,120(sp)
    8000542c:	06813823          	sd	s0,112(sp)
    80005430:	06913423          	sd	s1,104(sp)
    80005434:	07213023          	sd	s2,96(sp)
    80005438:	05313c23          	sd	s3,88(sp)
    8000543c:	05413823          	sd	s4,80(sp)
    80005440:	05513423          	sd	s5,72(sp)
    80005444:	05613023          	sd	s6,64(sp)
    80005448:	03713c23          	sd	s7,56(sp)
    8000544c:	03813823          	sd	s8,48(sp)
    80005450:	03913423          	sd	s9,40(sp)
    80005454:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005458:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000545c:	00004517          	auipc	a0,0x4
    80005460:	d3c50513          	addi	a0,a0,-708 # 80009198 <CONSOLE_STATUS+0x188>
    80005464:	00000097          	auipc	ra,0x0
    80005468:	604080e7          	jalr	1540(ra) # 80005a68 <_Z11printStringPKc>
    getString(input, 30);
    8000546c:	01e00593          	li	a1,30
    80005470:	f8040493          	addi	s1,s0,-128
    80005474:	00048513          	mv	a0,s1
    80005478:	00000097          	auipc	ra,0x0
    8000547c:	678080e7          	jalr	1656(ra) # 80005af0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005480:	00048513          	mv	a0,s1
    80005484:	00000097          	auipc	ra,0x0
    80005488:	744080e7          	jalr	1860(ra) # 80005bc8 <_Z11stringToIntPKc>
    8000548c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005490:	00004517          	auipc	a0,0x4
    80005494:	d2850513          	addi	a0,a0,-728 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80005498:	00000097          	auipc	ra,0x0
    8000549c:	5d0080e7          	jalr	1488(ra) # 80005a68 <_Z11printStringPKc>
    getString(input, 30);
    800054a0:	01e00593          	li	a1,30
    800054a4:	00048513          	mv	a0,s1
    800054a8:	00000097          	auipc	ra,0x0
    800054ac:	648080e7          	jalr	1608(ra) # 80005af0 <_Z9getStringPci>
    n = stringToInt(input);
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00000097          	auipc	ra,0x0
    800054b8:	714080e7          	jalr	1812(ra) # 80005bc8 <_Z11stringToIntPKc>
    800054bc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054c0:	00004517          	auipc	a0,0x4
    800054c4:	d1850513          	addi	a0,a0,-744 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800054c8:	00000097          	auipc	ra,0x0
    800054cc:	5a0080e7          	jalr	1440(ra) # 80005a68 <_Z11printStringPKc>
    800054d0:	00000613          	li	a2,0
    800054d4:	00a00593          	li	a1,10
    800054d8:	00090513          	mv	a0,s2
    800054dc:	00000097          	auipc	ra,0x0
    800054e0:	73c080e7          	jalr	1852(ra) # 80005c18 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800054e4:	00004517          	auipc	a0,0x4
    800054e8:	d0c50513          	addi	a0,a0,-756 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800054ec:	00000097          	auipc	ra,0x0
    800054f0:	57c080e7          	jalr	1404(ra) # 80005a68 <_Z11printStringPKc>
    800054f4:	00000613          	li	a2,0
    800054f8:	00a00593          	li	a1,10
    800054fc:	00048513          	mv	a0,s1
    80005500:	00000097          	auipc	ra,0x0
    80005504:	718080e7          	jalr	1816(ra) # 80005c18 <_Z8printIntiii>
    printString(".\n");
    80005508:	00004517          	auipc	a0,0x4
    8000550c:	d0050513          	addi	a0,a0,-768 # 80009208 <CONSOLE_STATUS+0x1f8>
    80005510:	00000097          	auipc	ra,0x0
    80005514:	558080e7          	jalr	1368(ra) # 80005a68 <_Z11printStringPKc>
    if(threadNum > n) {
    80005518:	0324c463          	blt	s1,s2,80005540 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000551c:	03205c63          	blez	s2,80005554 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005520:	03800513          	li	a0,56
    80005524:	ffffd097          	auipc	ra,0xffffd
    80005528:	c80080e7          	jalr	-896(ra) # 800021a4 <_Znwm>
    8000552c:	00050a93          	mv	s5,a0
    80005530:	00048593          	mv	a1,s1
    80005534:	00001097          	auipc	ra,0x1
    80005538:	804080e7          	jalr	-2044(ra) # 80005d38 <_ZN9BufferCPPC1Ei>
    8000553c:	0300006f          	j	8000556c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005540:	00004517          	auipc	a0,0x4
    80005544:	cd050513          	addi	a0,a0,-816 # 80009210 <CONSOLE_STATUS+0x200>
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	520080e7          	jalr	1312(ra) # 80005a68 <_Z11printStringPKc>
        return;
    80005550:	0140006f          	j	80005564 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005554:	00004517          	auipc	a0,0x4
    80005558:	cfc50513          	addi	a0,a0,-772 # 80009250 <CONSOLE_STATUS+0x240>
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	50c080e7          	jalr	1292(ra) # 80005a68 <_Z11printStringPKc>
        return;
    80005564:	000b8113          	mv	sp,s7
    80005568:	2380006f          	j	800057a0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000556c:	01000513          	li	a0,16
    80005570:	ffffd097          	auipc	ra,0xffffd
    80005574:	c34080e7          	jalr	-972(ra) # 800021a4 <_Znwm>
    80005578:	00050493          	mv	s1,a0
    8000557c:	00000593          	li	a1,0
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	e80080e7          	jalr	-384(ra) # 80002400 <_ZN9SemaphoreC1Ej>
    80005588:	00007797          	auipc	a5,0x7
    8000558c:	8e97b823          	sd	s1,-1808(a5) # 8000be78 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005590:	00391793          	slli	a5,s2,0x3
    80005594:	00f78793          	addi	a5,a5,15
    80005598:	ff07f793          	andi	a5,a5,-16
    8000559c:	40f10133          	sub	sp,sp,a5
    800055a0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800055a4:	0019071b          	addiw	a4,s2,1
    800055a8:	00171793          	slli	a5,a4,0x1
    800055ac:	00e787b3          	add	a5,a5,a4
    800055b0:	00379793          	slli	a5,a5,0x3
    800055b4:	00f78793          	addi	a5,a5,15
    800055b8:	ff07f793          	andi	a5,a5,-16
    800055bc:	40f10133          	sub	sp,sp,a5
    800055c0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800055c4:	00191c13          	slli	s8,s2,0x1
    800055c8:	012c07b3          	add	a5,s8,s2
    800055cc:	00379793          	slli	a5,a5,0x3
    800055d0:	00fa07b3          	add	a5,s4,a5
    800055d4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800055d8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800055dc:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800055e0:	02800513          	li	a0,40
    800055e4:	ffffd097          	auipc	ra,0xffffd
    800055e8:	bc0080e7          	jalr	-1088(ra) # 800021a4 <_Znwm>
    800055ec:	00050b13          	mv	s6,a0
    800055f0:	012c0c33          	add	s8,s8,s2
    800055f4:	003c1c13          	slli	s8,s8,0x3
    800055f8:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	c8c080e7          	jalr	-884(ra) # 80002288 <_ZN6ThreadC1Ev>
    80005604:	00006797          	auipc	a5,0x6
    80005608:	6b478793          	addi	a5,a5,1716 # 8000bcb8 <_ZTV12ConsumerSync+0x10>
    8000560c:	00fb3023          	sd	a5,0(s6)
    80005610:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005614:	000b0513          	mv	a0,s6
    80005618:	ffffd097          	auipc	ra,0xffffd
    8000561c:	ca4080e7          	jalr	-860(ra) # 800022bc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005620:	00000493          	li	s1,0
    80005624:	0380006f          	j	8000565c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005628:	00006797          	auipc	a5,0x6
    8000562c:	66878793          	addi	a5,a5,1640 # 8000bc90 <_ZTV12ProducerSync+0x10>
    80005630:	00fcb023          	sd	a5,0(s9)
    80005634:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005638:	00349793          	slli	a5,s1,0x3
    8000563c:	00f987b3          	add	a5,s3,a5
    80005640:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005644:	00349793          	slli	a5,s1,0x3
    80005648:	00f987b3          	add	a5,s3,a5
    8000564c:	0007b503          	ld	a0,0(a5)
    80005650:	ffffd097          	auipc	ra,0xffffd
    80005654:	c6c080e7          	jalr	-916(ra) # 800022bc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005658:	0014849b          	addiw	s1,s1,1
    8000565c:	0b24d063          	bge	s1,s2,800056fc <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005660:	00149793          	slli	a5,s1,0x1
    80005664:	009787b3          	add	a5,a5,s1
    80005668:	00379793          	slli	a5,a5,0x3
    8000566c:	00fa07b3          	add	a5,s4,a5
    80005670:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005674:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005678:	00007717          	auipc	a4,0x7
    8000567c:	80073703          	ld	a4,-2048(a4) # 8000be78 <_ZL10waitForAll>
    80005680:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005684:	02905863          	blez	s1,800056b4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005688:	02800513          	li	a0,40
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	b18080e7          	jalr	-1256(ra) # 800021a4 <_Znwm>
    80005694:	00050c93          	mv	s9,a0
    80005698:	00149c13          	slli	s8,s1,0x1
    8000569c:	009c0c33          	add	s8,s8,s1
    800056a0:	003c1c13          	slli	s8,s8,0x3
    800056a4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800056a8:	ffffd097          	auipc	ra,0xffffd
    800056ac:	be0080e7          	jalr	-1056(ra) # 80002288 <_ZN6ThreadC1Ev>
    800056b0:	f79ff06f          	j	80005628 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800056b4:	02800513          	li	a0,40
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	aec080e7          	jalr	-1300(ra) # 800021a4 <_Znwm>
    800056c0:	00050c93          	mv	s9,a0
    800056c4:	00149c13          	slli	s8,s1,0x1
    800056c8:	009c0c33          	add	s8,s8,s1
    800056cc:	003c1c13          	slli	s8,s8,0x3
    800056d0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800056d4:	ffffd097          	auipc	ra,0xffffd
    800056d8:	bb4080e7          	jalr	-1100(ra) # 80002288 <_ZN6ThreadC1Ev>
    800056dc:	00006797          	auipc	a5,0x6
    800056e0:	58c78793          	addi	a5,a5,1420 # 8000bc68 <_ZTV16ProducerKeyboard+0x10>
    800056e4:	00fcb023          	sd	a5,0(s9)
    800056e8:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800056ec:	00349793          	slli	a5,s1,0x3
    800056f0:	00f987b3          	add	a5,s3,a5
    800056f4:	0197b023          	sd	s9,0(a5)
    800056f8:	f4dff06f          	j	80005644 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800056fc:	ffffd097          	auipc	ra,0xffffd
    80005700:	bf4080e7          	jalr	-1036(ra) # 800022f0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005704:	00000493          	li	s1,0
    80005708:	00994e63          	blt	s2,s1,80005724 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000570c:	00006517          	auipc	a0,0x6
    80005710:	76c53503          	ld	a0,1900(a0) # 8000be78 <_ZL10waitForAll>
    80005714:	ffffd097          	auipc	ra,0xffffd
    80005718:	d24080e7          	jalr	-732(ra) # 80002438 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000571c:	0014849b          	addiw	s1,s1,1
    80005720:	fe9ff06f          	j	80005708 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005724:	00000493          	li	s1,0
    80005728:	0080006f          	j	80005730 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000572c:	0014849b          	addiw	s1,s1,1
    80005730:	0324d263          	bge	s1,s2,80005754 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005734:	00349793          	slli	a5,s1,0x3
    80005738:	00f987b3          	add	a5,s3,a5
    8000573c:	0007b503          	ld	a0,0(a5)
    80005740:	fe0506e3          	beqz	a0,8000572c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005744:	00053783          	ld	a5,0(a0)
    80005748:	0087b783          	ld	a5,8(a5)
    8000574c:	000780e7          	jalr	a5
    80005750:	fddff06f          	j	8000572c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005754:	000b0a63          	beqz	s6,80005768 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005758:	000b3783          	ld	a5,0(s6)
    8000575c:	0087b783          	ld	a5,8(a5)
    80005760:	000b0513          	mv	a0,s6
    80005764:	000780e7          	jalr	a5
    delete waitForAll;
    80005768:	00006517          	auipc	a0,0x6
    8000576c:	71053503          	ld	a0,1808(a0) # 8000be78 <_ZL10waitForAll>
    80005770:	00050863          	beqz	a0,80005780 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005774:	00053783          	ld	a5,0(a0)
    80005778:	0087b783          	ld	a5,8(a5)
    8000577c:	000780e7          	jalr	a5
    delete buffer;
    80005780:	000a8e63          	beqz	s5,8000579c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005784:	000a8513          	mv	a0,s5
    80005788:	00001097          	auipc	ra,0x1
    8000578c:	8a8080e7          	jalr	-1880(ra) # 80006030 <_ZN9BufferCPPD1Ev>
    80005790:	000a8513          	mv	a0,s5
    80005794:	ffffd097          	auipc	ra,0xffffd
    80005798:	a38080e7          	jalr	-1480(ra) # 800021cc <_ZdlPv>
    8000579c:	000b8113          	mv	sp,s7

}
    800057a0:	f8040113          	addi	sp,s0,-128
    800057a4:	07813083          	ld	ra,120(sp)
    800057a8:	07013403          	ld	s0,112(sp)
    800057ac:	06813483          	ld	s1,104(sp)
    800057b0:	06013903          	ld	s2,96(sp)
    800057b4:	05813983          	ld	s3,88(sp)
    800057b8:	05013a03          	ld	s4,80(sp)
    800057bc:	04813a83          	ld	s5,72(sp)
    800057c0:	04013b03          	ld	s6,64(sp)
    800057c4:	03813b83          	ld	s7,56(sp)
    800057c8:	03013c03          	ld	s8,48(sp)
    800057cc:	02813c83          	ld	s9,40(sp)
    800057d0:	08010113          	addi	sp,sp,128
    800057d4:	00008067          	ret
    800057d8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800057dc:	000a8513          	mv	a0,s5
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	9ec080e7          	jalr	-1556(ra) # 800021cc <_ZdlPv>
    800057e8:	00048513          	mv	a0,s1
    800057ec:	00007097          	auipc	ra,0x7
    800057f0:	77c080e7          	jalr	1916(ra) # 8000cf68 <_Unwind_Resume>
    800057f4:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800057f8:	00048513          	mv	a0,s1
    800057fc:	ffffd097          	auipc	ra,0xffffd
    80005800:	9d0080e7          	jalr	-1584(ra) # 800021cc <_ZdlPv>
    80005804:	00090513          	mv	a0,s2
    80005808:	00007097          	auipc	ra,0x7
    8000580c:	760080e7          	jalr	1888(ra) # 8000cf68 <_Unwind_Resume>
    80005810:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005814:	000b0513          	mv	a0,s6
    80005818:	ffffd097          	auipc	ra,0xffffd
    8000581c:	9b4080e7          	jalr	-1612(ra) # 800021cc <_ZdlPv>
    80005820:	00048513          	mv	a0,s1
    80005824:	00007097          	auipc	ra,0x7
    80005828:	744080e7          	jalr	1860(ra) # 8000cf68 <_Unwind_Resume>
    8000582c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005830:	000c8513          	mv	a0,s9
    80005834:	ffffd097          	auipc	ra,0xffffd
    80005838:	998080e7          	jalr	-1640(ra) # 800021cc <_ZdlPv>
    8000583c:	00048513          	mv	a0,s1
    80005840:	00007097          	auipc	ra,0x7
    80005844:	728080e7          	jalr	1832(ra) # 8000cf68 <_Unwind_Resume>
    80005848:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000584c:	000c8513          	mv	a0,s9
    80005850:	ffffd097          	auipc	ra,0xffffd
    80005854:	97c080e7          	jalr	-1668(ra) # 800021cc <_ZdlPv>
    80005858:	00048513          	mv	a0,s1
    8000585c:	00007097          	auipc	ra,0x7
    80005860:	70c080e7          	jalr	1804(ra) # 8000cf68 <_Unwind_Resume>

0000000080005864 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005864:	ff010113          	addi	sp,sp,-16
    80005868:	00113423          	sd	ra,8(sp)
    8000586c:	00813023          	sd	s0,0(sp)
    80005870:	01010413          	addi	s0,sp,16
    80005874:	00006797          	auipc	a5,0x6
    80005878:	44478793          	addi	a5,a5,1092 # 8000bcb8 <_ZTV12ConsumerSync+0x10>
    8000587c:	00f53023          	sd	a5,0(a0)
    80005880:	ffffd097          	auipc	ra,0xffffd
    80005884:	8d4080e7          	jalr	-1836(ra) # 80002154 <_ZN6ThreadD1Ev>
    80005888:	00813083          	ld	ra,8(sp)
    8000588c:	00013403          	ld	s0,0(sp)
    80005890:	01010113          	addi	sp,sp,16
    80005894:	00008067          	ret

0000000080005898 <_ZN12ConsumerSyncD0Ev>:
    80005898:	fe010113          	addi	sp,sp,-32
    8000589c:	00113c23          	sd	ra,24(sp)
    800058a0:	00813823          	sd	s0,16(sp)
    800058a4:	00913423          	sd	s1,8(sp)
    800058a8:	02010413          	addi	s0,sp,32
    800058ac:	00050493          	mv	s1,a0
    800058b0:	00006797          	auipc	a5,0x6
    800058b4:	40878793          	addi	a5,a5,1032 # 8000bcb8 <_ZTV12ConsumerSync+0x10>
    800058b8:	00f53023          	sd	a5,0(a0)
    800058bc:	ffffd097          	auipc	ra,0xffffd
    800058c0:	898080e7          	jalr	-1896(ra) # 80002154 <_ZN6ThreadD1Ev>
    800058c4:	00048513          	mv	a0,s1
    800058c8:	ffffd097          	auipc	ra,0xffffd
    800058cc:	904080e7          	jalr	-1788(ra) # 800021cc <_ZdlPv>
    800058d0:	01813083          	ld	ra,24(sp)
    800058d4:	01013403          	ld	s0,16(sp)
    800058d8:	00813483          	ld	s1,8(sp)
    800058dc:	02010113          	addi	sp,sp,32
    800058e0:	00008067          	ret

00000000800058e4 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800058e4:	ff010113          	addi	sp,sp,-16
    800058e8:	00113423          	sd	ra,8(sp)
    800058ec:	00813023          	sd	s0,0(sp)
    800058f0:	01010413          	addi	s0,sp,16
    800058f4:	00006797          	auipc	a5,0x6
    800058f8:	39c78793          	addi	a5,a5,924 # 8000bc90 <_ZTV12ProducerSync+0x10>
    800058fc:	00f53023          	sd	a5,0(a0)
    80005900:	ffffd097          	auipc	ra,0xffffd
    80005904:	854080e7          	jalr	-1964(ra) # 80002154 <_ZN6ThreadD1Ev>
    80005908:	00813083          	ld	ra,8(sp)
    8000590c:	00013403          	ld	s0,0(sp)
    80005910:	01010113          	addi	sp,sp,16
    80005914:	00008067          	ret

0000000080005918 <_ZN12ProducerSyncD0Ev>:
    80005918:	fe010113          	addi	sp,sp,-32
    8000591c:	00113c23          	sd	ra,24(sp)
    80005920:	00813823          	sd	s0,16(sp)
    80005924:	00913423          	sd	s1,8(sp)
    80005928:	02010413          	addi	s0,sp,32
    8000592c:	00050493          	mv	s1,a0
    80005930:	00006797          	auipc	a5,0x6
    80005934:	36078793          	addi	a5,a5,864 # 8000bc90 <_ZTV12ProducerSync+0x10>
    80005938:	00f53023          	sd	a5,0(a0)
    8000593c:	ffffd097          	auipc	ra,0xffffd
    80005940:	818080e7          	jalr	-2024(ra) # 80002154 <_ZN6ThreadD1Ev>
    80005944:	00048513          	mv	a0,s1
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	884080e7          	jalr	-1916(ra) # 800021cc <_ZdlPv>
    80005950:	01813083          	ld	ra,24(sp)
    80005954:	01013403          	ld	s0,16(sp)
    80005958:	00813483          	ld	s1,8(sp)
    8000595c:	02010113          	addi	sp,sp,32
    80005960:	00008067          	ret

0000000080005964 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005964:	ff010113          	addi	sp,sp,-16
    80005968:	00113423          	sd	ra,8(sp)
    8000596c:	00813023          	sd	s0,0(sp)
    80005970:	01010413          	addi	s0,sp,16
    80005974:	00006797          	auipc	a5,0x6
    80005978:	2f478793          	addi	a5,a5,756 # 8000bc68 <_ZTV16ProducerKeyboard+0x10>
    8000597c:	00f53023          	sd	a5,0(a0)
    80005980:	ffffc097          	auipc	ra,0xffffc
    80005984:	7d4080e7          	jalr	2004(ra) # 80002154 <_ZN6ThreadD1Ev>
    80005988:	00813083          	ld	ra,8(sp)
    8000598c:	00013403          	ld	s0,0(sp)
    80005990:	01010113          	addi	sp,sp,16
    80005994:	00008067          	ret

0000000080005998 <_ZN16ProducerKeyboardD0Ev>:
    80005998:	fe010113          	addi	sp,sp,-32
    8000599c:	00113c23          	sd	ra,24(sp)
    800059a0:	00813823          	sd	s0,16(sp)
    800059a4:	00913423          	sd	s1,8(sp)
    800059a8:	02010413          	addi	s0,sp,32
    800059ac:	00050493          	mv	s1,a0
    800059b0:	00006797          	auipc	a5,0x6
    800059b4:	2b878793          	addi	a5,a5,696 # 8000bc68 <_ZTV16ProducerKeyboard+0x10>
    800059b8:	00f53023          	sd	a5,0(a0)
    800059bc:	ffffc097          	auipc	ra,0xffffc
    800059c0:	798080e7          	jalr	1944(ra) # 80002154 <_ZN6ThreadD1Ev>
    800059c4:	00048513          	mv	a0,s1
    800059c8:	ffffd097          	auipc	ra,0xffffd
    800059cc:	804080e7          	jalr	-2044(ra) # 800021cc <_ZdlPv>
    800059d0:	01813083          	ld	ra,24(sp)
    800059d4:	01013403          	ld	s0,16(sp)
    800059d8:	00813483          	ld	s1,8(sp)
    800059dc:	02010113          	addi	sp,sp,32
    800059e0:	00008067          	ret

00000000800059e4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800059e4:	ff010113          	addi	sp,sp,-16
    800059e8:	00113423          	sd	ra,8(sp)
    800059ec:	00813023          	sd	s0,0(sp)
    800059f0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800059f4:	02053583          	ld	a1,32(a0)
    800059f8:	fffff097          	auipc	ra,0xfffff
    800059fc:	7e4080e7          	jalr	2020(ra) # 800051dc <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005a00:	00813083          	ld	ra,8(sp)
    80005a04:	00013403          	ld	s0,0(sp)
    80005a08:	01010113          	addi	sp,sp,16
    80005a0c:	00008067          	ret

0000000080005a10 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005a10:	ff010113          	addi	sp,sp,-16
    80005a14:	00113423          	sd	ra,8(sp)
    80005a18:	00813023          	sd	s0,0(sp)
    80005a1c:	01010413          	addi	s0,sp,16
        producer(td);
    80005a20:	02053583          	ld	a1,32(a0)
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	878080e7          	jalr	-1928(ra) # 8000529c <_ZN12ProducerSync8producerEPv>
    }
    80005a2c:	00813083          	ld	ra,8(sp)
    80005a30:	00013403          	ld	s0,0(sp)
    80005a34:	01010113          	addi	sp,sp,16
    80005a38:	00008067          	ret

0000000080005a3c <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a3c:	ff010113          	addi	sp,sp,-16
    80005a40:	00113423          	sd	ra,8(sp)
    80005a44:	00813023          	sd	s0,0(sp)
    80005a48:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a4c:	02053583          	ld	a1,32(a0)
    80005a50:	00000097          	auipc	ra,0x0
    80005a54:	8e0080e7          	jalr	-1824(ra) # 80005330 <_ZN12ConsumerSync8consumerEPv>
    }
    80005a58:	00813083          	ld	ra,8(sp)
    80005a5c:	00013403          	ld	s0,0(sp)
    80005a60:	01010113          	addi	sp,sp,16
    80005a64:	00008067          	ret

0000000080005a68 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005a68:	fe010113          	addi	sp,sp,-32
    80005a6c:	00113c23          	sd	ra,24(sp)
    80005a70:	00813823          	sd	s0,16(sp)
    80005a74:	00913423          	sd	s1,8(sp)
    80005a78:	02010413          	addi	s0,sp,32
    80005a7c:	00050493          	mv	s1,a0
    LOCK();
    80005a80:	00100613          	li	a2,1
    80005a84:	00000593          	li	a1,0
    80005a88:	00006517          	auipc	a0,0x6
    80005a8c:	3f850513          	addi	a0,a0,1016 # 8000be80 <lockPrint>
    80005a90:	ffffc097          	auipc	ra,0xffffc
    80005a94:	820080e7          	jalr	-2016(ra) # 800012b0 <copy_and_swap>
    80005a98:	00050863          	beqz	a0,80005aa8 <_Z11printStringPKc+0x40>
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	934080e7          	jalr	-1740(ra) # 800013d0 <_Z15thread_dispatchv>
    80005aa4:	fddff06f          	j	80005a80 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005aa8:	0004c503          	lbu	a0,0(s1)
    80005aac:	00050a63          	beqz	a0,80005ac0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005ab0:	ffffc097          	auipc	ra,0xffffc
    80005ab4:	ad0080e7          	jalr	-1328(ra) # 80001580 <_Z4putcc>
        string++;
    80005ab8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005abc:	fedff06f          	j	80005aa8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005ac0:	00000613          	li	a2,0
    80005ac4:	00100593          	li	a1,1
    80005ac8:	00006517          	auipc	a0,0x6
    80005acc:	3b850513          	addi	a0,a0,952 # 8000be80 <lockPrint>
    80005ad0:	ffffb097          	auipc	ra,0xffffb
    80005ad4:	7e0080e7          	jalr	2016(ra) # 800012b0 <copy_and_swap>
    80005ad8:	fe0514e3          	bnez	a0,80005ac0 <_Z11printStringPKc+0x58>
}
    80005adc:	01813083          	ld	ra,24(sp)
    80005ae0:	01013403          	ld	s0,16(sp)
    80005ae4:	00813483          	ld	s1,8(sp)
    80005ae8:	02010113          	addi	sp,sp,32
    80005aec:	00008067          	ret

0000000080005af0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005af0:	fd010113          	addi	sp,sp,-48
    80005af4:	02113423          	sd	ra,40(sp)
    80005af8:	02813023          	sd	s0,32(sp)
    80005afc:	00913c23          	sd	s1,24(sp)
    80005b00:	01213823          	sd	s2,16(sp)
    80005b04:	01313423          	sd	s3,8(sp)
    80005b08:	01413023          	sd	s4,0(sp)
    80005b0c:	03010413          	addi	s0,sp,48
    80005b10:	00050993          	mv	s3,a0
    80005b14:	00058a13          	mv	s4,a1
    LOCK();
    80005b18:	00100613          	li	a2,1
    80005b1c:	00000593          	li	a1,0
    80005b20:	00006517          	auipc	a0,0x6
    80005b24:	36050513          	addi	a0,a0,864 # 8000be80 <lockPrint>
    80005b28:	ffffb097          	auipc	ra,0xffffb
    80005b2c:	788080e7          	jalr	1928(ra) # 800012b0 <copy_and_swap>
    80005b30:	00050863          	beqz	a0,80005b40 <_Z9getStringPci+0x50>
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	89c080e7          	jalr	-1892(ra) # 800013d0 <_Z15thread_dispatchv>
    80005b3c:	fddff06f          	j	80005b18 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b40:	00000913          	li	s2,0
    80005b44:	00090493          	mv	s1,s2
    80005b48:	0019091b          	addiw	s2,s2,1
    80005b4c:	03495a63          	bge	s2,s4,80005b80 <_Z9getStringPci+0x90>
        cc = getc();
    80005b50:	ffffc097          	auipc	ra,0xffffc
    80005b54:	a08080e7          	jalr	-1528(ra) # 80001558 <_Z4getcv>
        if(cc < 1)
    80005b58:	02050463          	beqz	a0,80005b80 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b5c:	009984b3          	add	s1,s3,s1
    80005b60:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005b64:	00a00793          	li	a5,10
    80005b68:	00f50a63          	beq	a0,a5,80005b7c <_Z9getStringPci+0x8c>
    80005b6c:	00d00793          	li	a5,13
    80005b70:	fcf51ae3          	bne	a0,a5,80005b44 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005b74:	00090493          	mv	s1,s2
    80005b78:	0080006f          	j	80005b80 <_Z9getStringPci+0x90>
    80005b7c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005b80:	009984b3          	add	s1,s3,s1
    80005b84:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005b88:	00000613          	li	a2,0
    80005b8c:	00100593          	li	a1,1
    80005b90:	00006517          	auipc	a0,0x6
    80005b94:	2f050513          	addi	a0,a0,752 # 8000be80 <lockPrint>
    80005b98:	ffffb097          	auipc	ra,0xffffb
    80005b9c:	718080e7          	jalr	1816(ra) # 800012b0 <copy_and_swap>
    80005ba0:	fe0514e3          	bnez	a0,80005b88 <_Z9getStringPci+0x98>
    return buf;
}
    80005ba4:	00098513          	mv	a0,s3
    80005ba8:	02813083          	ld	ra,40(sp)
    80005bac:	02013403          	ld	s0,32(sp)
    80005bb0:	01813483          	ld	s1,24(sp)
    80005bb4:	01013903          	ld	s2,16(sp)
    80005bb8:	00813983          	ld	s3,8(sp)
    80005bbc:	00013a03          	ld	s4,0(sp)
    80005bc0:	03010113          	addi	sp,sp,48
    80005bc4:	00008067          	ret

0000000080005bc8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005bc8:	ff010113          	addi	sp,sp,-16
    80005bcc:	00813423          	sd	s0,8(sp)
    80005bd0:	01010413          	addi	s0,sp,16
    80005bd4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005bd8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005bdc:	0006c603          	lbu	a2,0(a3)
    80005be0:	fd06071b          	addiw	a4,a2,-48
    80005be4:	0ff77713          	andi	a4,a4,255
    80005be8:	00900793          	li	a5,9
    80005bec:	02e7e063          	bltu	a5,a4,80005c0c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005bf0:	0025179b          	slliw	a5,a0,0x2
    80005bf4:	00a787bb          	addw	a5,a5,a0
    80005bf8:	0017979b          	slliw	a5,a5,0x1
    80005bfc:	00168693          	addi	a3,a3,1
    80005c00:	00c787bb          	addw	a5,a5,a2
    80005c04:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005c08:	fd5ff06f          	j	80005bdc <_Z11stringToIntPKc+0x14>
    return n;
}
    80005c0c:	00813403          	ld	s0,8(sp)
    80005c10:	01010113          	addi	sp,sp,16
    80005c14:	00008067          	ret

0000000080005c18 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005c18:	fc010113          	addi	sp,sp,-64
    80005c1c:	02113c23          	sd	ra,56(sp)
    80005c20:	02813823          	sd	s0,48(sp)
    80005c24:	02913423          	sd	s1,40(sp)
    80005c28:	03213023          	sd	s2,32(sp)
    80005c2c:	01313c23          	sd	s3,24(sp)
    80005c30:	04010413          	addi	s0,sp,64
    80005c34:	00050493          	mv	s1,a0
    80005c38:	00058913          	mv	s2,a1
    80005c3c:	00060993          	mv	s3,a2
    LOCK();
    80005c40:	00100613          	li	a2,1
    80005c44:	00000593          	li	a1,0
    80005c48:	00006517          	auipc	a0,0x6
    80005c4c:	23850513          	addi	a0,a0,568 # 8000be80 <lockPrint>
    80005c50:	ffffb097          	auipc	ra,0xffffb
    80005c54:	660080e7          	jalr	1632(ra) # 800012b0 <copy_and_swap>
    80005c58:	00050863          	beqz	a0,80005c68 <_Z8printIntiii+0x50>
    80005c5c:	ffffb097          	auipc	ra,0xffffb
    80005c60:	774080e7          	jalr	1908(ra) # 800013d0 <_Z15thread_dispatchv>
    80005c64:	fddff06f          	j	80005c40 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005c68:	00098463          	beqz	s3,80005c70 <_Z8printIntiii+0x58>
    80005c6c:	0804c463          	bltz	s1,80005cf4 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005c70:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005c74:	00000593          	li	a1,0
    }

    i = 0;
    80005c78:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005c7c:	0009079b          	sext.w	a5,s2
    80005c80:	0325773b          	remuw	a4,a0,s2
    80005c84:	00048613          	mv	a2,s1
    80005c88:	0014849b          	addiw	s1,s1,1
    80005c8c:	02071693          	slli	a3,a4,0x20
    80005c90:	0206d693          	srli	a3,a3,0x20
    80005c94:	00006717          	auipc	a4,0x6
    80005c98:	03c70713          	addi	a4,a4,60 # 8000bcd0 <digits>
    80005c9c:	00d70733          	add	a4,a4,a3
    80005ca0:	00074683          	lbu	a3,0(a4)
    80005ca4:	fd040713          	addi	a4,s0,-48
    80005ca8:	00c70733          	add	a4,a4,a2
    80005cac:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005cb0:	0005071b          	sext.w	a4,a0
    80005cb4:	0325553b          	divuw	a0,a0,s2
    80005cb8:	fcf772e3          	bgeu	a4,a5,80005c7c <_Z8printIntiii+0x64>
    if(neg)
    80005cbc:	00058c63          	beqz	a1,80005cd4 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005cc0:	fd040793          	addi	a5,s0,-48
    80005cc4:	009784b3          	add	s1,a5,s1
    80005cc8:	02d00793          	li	a5,45
    80005ccc:	fef48823          	sb	a5,-16(s1)
    80005cd0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005cd4:	fff4849b          	addiw	s1,s1,-1
    80005cd8:	0204c463          	bltz	s1,80005d00 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005cdc:	fd040793          	addi	a5,s0,-48
    80005ce0:	009787b3          	add	a5,a5,s1
    80005ce4:	ff07c503          	lbu	a0,-16(a5)
    80005ce8:	ffffc097          	auipc	ra,0xffffc
    80005cec:	898080e7          	jalr	-1896(ra) # 80001580 <_Z4putcc>
    80005cf0:	fe5ff06f          	j	80005cd4 <_Z8printIntiii+0xbc>
        x = -xx;
    80005cf4:	4090053b          	negw	a0,s1
        neg = 1;
    80005cf8:	00100593          	li	a1,1
        x = -xx;
    80005cfc:	f7dff06f          	j	80005c78 <_Z8printIntiii+0x60>

    UNLOCK();
    80005d00:	00000613          	li	a2,0
    80005d04:	00100593          	li	a1,1
    80005d08:	00006517          	auipc	a0,0x6
    80005d0c:	17850513          	addi	a0,a0,376 # 8000be80 <lockPrint>
    80005d10:	ffffb097          	auipc	ra,0xffffb
    80005d14:	5a0080e7          	jalr	1440(ra) # 800012b0 <copy_and_swap>
    80005d18:	fe0514e3          	bnez	a0,80005d00 <_Z8printIntiii+0xe8>
    80005d1c:	03813083          	ld	ra,56(sp)
    80005d20:	03013403          	ld	s0,48(sp)
    80005d24:	02813483          	ld	s1,40(sp)
    80005d28:	02013903          	ld	s2,32(sp)
    80005d2c:	01813983          	ld	s3,24(sp)
    80005d30:	04010113          	addi	sp,sp,64
    80005d34:	00008067          	ret

0000000080005d38 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d38:	fd010113          	addi	sp,sp,-48
    80005d3c:	02113423          	sd	ra,40(sp)
    80005d40:	02813023          	sd	s0,32(sp)
    80005d44:	00913c23          	sd	s1,24(sp)
    80005d48:	01213823          	sd	s2,16(sp)
    80005d4c:	01313423          	sd	s3,8(sp)
    80005d50:	03010413          	addi	s0,sp,48
    80005d54:	00050493          	mv	s1,a0
    80005d58:	00058913          	mv	s2,a1
    80005d5c:	0015879b          	addiw	a5,a1,1
    80005d60:	0007851b          	sext.w	a0,a5
    80005d64:	00f4a023          	sw	a5,0(s1)
    80005d68:	0004a823          	sw	zero,16(s1)
    80005d6c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005d70:	00251513          	slli	a0,a0,0x2
    80005d74:	ffffb097          	auipc	ra,0xffffb
    80005d78:	55c080e7          	jalr	1372(ra) # 800012d0 <_Z9mem_allocm>
    80005d7c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005d80:	01000513          	li	a0,16
    80005d84:	ffffc097          	auipc	ra,0xffffc
    80005d88:	420080e7          	jalr	1056(ra) # 800021a4 <_Znwm>
    80005d8c:	00050993          	mv	s3,a0
    80005d90:	00000593          	li	a1,0
    80005d94:	ffffc097          	auipc	ra,0xffffc
    80005d98:	66c080e7          	jalr	1644(ra) # 80002400 <_ZN9SemaphoreC1Ej>
    80005d9c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005da0:	01000513          	li	a0,16
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	400080e7          	jalr	1024(ra) # 800021a4 <_Znwm>
    80005dac:	00050993          	mv	s3,a0
    80005db0:	00090593          	mv	a1,s2
    80005db4:	ffffc097          	auipc	ra,0xffffc
    80005db8:	64c080e7          	jalr	1612(ra) # 80002400 <_ZN9SemaphoreC1Ej>
    80005dbc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005dc0:	01000513          	li	a0,16
    80005dc4:	ffffc097          	auipc	ra,0xffffc
    80005dc8:	3e0080e7          	jalr	992(ra) # 800021a4 <_Znwm>
    80005dcc:	00050913          	mv	s2,a0
    80005dd0:	00100593          	li	a1,1
    80005dd4:	ffffc097          	auipc	ra,0xffffc
    80005dd8:	62c080e7          	jalr	1580(ra) # 80002400 <_ZN9SemaphoreC1Ej>
    80005ddc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005de0:	01000513          	li	a0,16
    80005de4:	ffffc097          	auipc	ra,0xffffc
    80005de8:	3c0080e7          	jalr	960(ra) # 800021a4 <_Znwm>
    80005dec:	00050913          	mv	s2,a0
    80005df0:	00100593          	li	a1,1
    80005df4:	ffffc097          	auipc	ra,0xffffc
    80005df8:	60c080e7          	jalr	1548(ra) # 80002400 <_ZN9SemaphoreC1Ej>
    80005dfc:	0324b823          	sd	s2,48(s1)
}
    80005e00:	02813083          	ld	ra,40(sp)
    80005e04:	02013403          	ld	s0,32(sp)
    80005e08:	01813483          	ld	s1,24(sp)
    80005e0c:	01013903          	ld	s2,16(sp)
    80005e10:	00813983          	ld	s3,8(sp)
    80005e14:	03010113          	addi	sp,sp,48
    80005e18:	00008067          	ret
    80005e1c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e20:	00098513          	mv	a0,s3
    80005e24:	ffffc097          	auipc	ra,0xffffc
    80005e28:	3a8080e7          	jalr	936(ra) # 800021cc <_ZdlPv>
    80005e2c:	00048513          	mv	a0,s1
    80005e30:	00007097          	auipc	ra,0x7
    80005e34:	138080e7          	jalr	312(ra) # 8000cf68 <_Unwind_Resume>
    80005e38:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e3c:	00098513          	mv	a0,s3
    80005e40:	ffffc097          	auipc	ra,0xffffc
    80005e44:	38c080e7          	jalr	908(ra) # 800021cc <_ZdlPv>
    80005e48:	00048513          	mv	a0,s1
    80005e4c:	00007097          	auipc	ra,0x7
    80005e50:	11c080e7          	jalr	284(ra) # 8000cf68 <_Unwind_Resume>
    80005e54:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e58:	00090513          	mv	a0,s2
    80005e5c:	ffffc097          	auipc	ra,0xffffc
    80005e60:	370080e7          	jalr	880(ra) # 800021cc <_ZdlPv>
    80005e64:	00048513          	mv	a0,s1
    80005e68:	00007097          	auipc	ra,0x7
    80005e6c:	100080e7          	jalr	256(ra) # 8000cf68 <_Unwind_Resume>
    80005e70:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005e74:	00090513          	mv	a0,s2
    80005e78:	ffffc097          	auipc	ra,0xffffc
    80005e7c:	354080e7          	jalr	852(ra) # 800021cc <_ZdlPv>
    80005e80:	00048513          	mv	a0,s1
    80005e84:	00007097          	auipc	ra,0x7
    80005e88:	0e4080e7          	jalr	228(ra) # 8000cf68 <_Unwind_Resume>

0000000080005e8c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005e8c:	fe010113          	addi	sp,sp,-32
    80005e90:	00113c23          	sd	ra,24(sp)
    80005e94:	00813823          	sd	s0,16(sp)
    80005e98:	00913423          	sd	s1,8(sp)
    80005e9c:	01213023          	sd	s2,0(sp)
    80005ea0:	02010413          	addi	s0,sp,32
    80005ea4:	00050493          	mv	s1,a0
    80005ea8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005eac:	01853503          	ld	a0,24(a0)
    80005eb0:	ffffc097          	auipc	ra,0xffffc
    80005eb4:	588080e7          	jalr	1416(ra) # 80002438 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005eb8:	0304b503          	ld	a0,48(s1)
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	57c080e7          	jalr	1404(ra) # 80002438 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005ec4:	0084b783          	ld	a5,8(s1)
    80005ec8:	0144a703          	lw	a4,20(s1)
    80005ecc:	00271713          	slli	a4,a4,0x2
    80005ed0:	00e787b3          	add	a5,a5,a4
    80005ed4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005ed8:	0144a783          	lw	a5,20(s1)
    80005edc:	0017879b          	addiw	a5,a5,1
    80005ee0:	0004a703          	lw	a4,0(s1)
    80005ee4:	02e7e7bb          	remw	a5,a5,a4
    80005ee8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005eec:	0304b503          	ld	a0,48(s1)
    80005ef0:	ffffc097          	auipc	ra,0xffffc
    80005ef4:	574080e7          	jalr	1396(ra) # 80002464 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005ef8:	0204b503          	ld	a0,32(s1)
    80005efc:	ffffc097          	auipc	ra,0xffffc
    80005f00:	568080e7          	jalr	1384(ra) # 80002464 <_ZN9Semaphore6signalEv>

}
    80005f04:	01813083          	ld	ra,24(sp)
    80005f08:	01013403          	ld	s0,16(sp)
    80005f0c:	00813483          	ld	s1,8(sp)
    80005f10:	00013903          	ld	s2,0(sp)
    80005f14:	02010113          	addi	sp,sp,32
    80005f18:	00008067          	ret

0000000080005f1c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005f1c:	fe010113          	addi	sp,sp,-32
    80005f20:	00113c23          	sd	ra,24(sp)
    80005f24:	00813823          	sd	s0,16(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	01213023          	sd	s2,0(sp)
    80005f30:	02010413          	addi	s0,sp,32
    80005f34:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f38:	02053503          	ld	a0,32(a0)
    80005f3c:	ffffc097          	auipc	ra,0xffffc
    80005f40:	4fc080e7          	jalr	1276(ra) # 80002438 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f44:	0284b503          	ld	a0,40(s1)
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	4f0080e7          	jalr	1264(ra) # 80002438 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f50:	0084b703          	ld	a4,8(s1)
    80005f54:	0104a783          	lw	a5,16(s1)
    80005f58:	00279693          	slli	a3,a5,0x2
    80005f5c:	00d70733          	add	a4,a4,a3
    80005f60:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005f64:	0017879b          	addiw	a5,a5,1
    80005f68:	0004a703          	lw	a4,0(s1)
    80005f6c:	02e7e7bb          	remw	a5,a5,a4
    80005f70:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005f74:	0284b503          	ld	a0,40(s1)
    80005f78:	ffffc097          	auipc	ra,0xffffc
    80005f7c:	4ec080e7          	jalr	1260(ra) # 80002464 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005f80:	0184b503          	ld	a0,24(s1)
    80005f84:	ffffc097          	auipc	ra,0xffffc
    80005f88:	4e0080e7          	jalr	1248(ra) # 80002464 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f8c:	00090513          	mv	a0,s2
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	00813483          	ld	s1,8(sp)
    80005f9c:	00013903          	ld	s2,0(sp)
    80005fa0:	02010113          	addi	sp,sp,32
    80005fa4:	00008067          	ret

0000000080005fa8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005fa8:	fe010113          	addi	sp,sp,-32
    80005fac:	00113c23          	sd	ra,24(sp)
    80005fb0:	00813823          	sd	s0,16(sp)
    80005fb4:	00913423          	sd	s1,8(sp)
    80005fb8:	01213023          	sd	s2,0(sp)
    80005fbc:	02010413          	addi	s0,sp,32
    80005fc0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005fc4:	02853503          	ld	a0,40(a0)
    80005fc8:	ffffc097          	auipc	ra,0xffffc
    80005fcc:	470080e7          	jalr	1136(ra) # 80002438 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005fd0:	0304b503          	ld	a0,48(s1)
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	464080e7          	jalr	1124(ra) # 80002438 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005fdc:	0144a783          	lw	a5,20(s1)
    80005fe0:	0104a903          	lw	s2,16(s1)
    80005fe4:	0327ce63          	blt	a5,s2,80006020 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005fe8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005fec:	0304b503          	ld	a0,48(s1)
    80005ff0:	ffffc097          	auipc	ra,0xffffc
    80005ff4:	474080e7          	jalr	1140(ra) # 80002464 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005ff8:	0284b503          	ld	a0,40(s1)
    80005ffc:	ffffc097          	auipc	ra,0xffffc
    80006000:	468080e7          	jalr	1128(ra) # 80002464 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006004:	00090513          	mv	a0,s2
    80006008:	01813083          	ld	ra,24(sp)
    8000600c:	01013403          	ld	s0,16(sp)
    80006010:	00813483          	ld	s1,8(sp)
    80006014:	00013903          	ld	s2,0(sp)
    80006018:	02010113          	addi	sp,sp,32
    8000601c:	00008067          	ret
        ret = cap - head + tail;
    80006020:	0004a703          	lw	a4,0(s1)
    80006024:	4127093b          	subw	s2,a4,s2
    80006028:	00f9093b          	addw	s2,s2,a5
    8000602c:	fc1ff06f          	j	80005fec <_ZN9BufferCPP6getCntEv+0x44>

0000000080006030 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006030:	fe010113          	addi	sp,sp,-32
    80006034:	00113c23          	sd	ra,24(sp)
    80006038:	00813823          	sd	s0,16(sp)
    8000603c:	00913423          	sd	s1,8(sp)
    80006040:	02010413          	addi	s0,sp,32
    80006044:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006048:	00a00513          	li	a0,10
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	46c080e7          	jalr	1132(ra) # 800024b8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006054:	00003517          	auipc	a0,0x3
    80006058:	33450513          	addi	a0,a0,820 # 80009388 <CONSOLE_STATUS+0x378>
    8000605c:	00000097          	auipc	ra,0x0
    80006060:	a0c080e7          	jalr	-1524(ra) # 80005a68 <_Z11printStringPKc>
    while (getCnt()) {
    80006064:	00048513          	mv	a0,s1
    80006068:	00000097          	auipc	ra,0x0
    8000606c:	f40080e7          	jalr	-192(ra) # 80005fa8 <_ZN9BufferCPP6getCntEv>
    80006070:	02050c63          	beqz	a0,800060a8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006074:	0084b783          	ld	a5,8(s1)
    80006078:	0104a703          	lw	a4,16(s1)
    8000607c:	00271713          	slli	a4,a4,0x2
    80006080:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006084:	0007c503          	lbu	a0,0(a5)
    80006088:	ffffc097          	auipc	ra,0xffffc
    8000608c:	430080e7          	jalr	1072(ra) # 800024b8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006090:	0104a783          	lw	a5,16(s1)
    80006094:	0017879b          	addiw	a5,a5,1
    80006098:	0004a703          	lw	a4,0(s1)
    8000609c:	02e7e7bb          	remw	a5,a5,a4
    800060a0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800060a4:	fc1ff06f          	j	80006064 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800060a8:	02100513          	li	a0,33
    800060ac:	ffffc097          	auipc	ra,0xffffc
    800060b0:	40c080e7          	jalr	1036(ra) # 800024b8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800060b4:	00a00513          	li	a0,10
    800060b8:	ffffc097          	auipc	ra,0xffffc
    800060bc:	400080e7          	jalr	1024(ra) # 800024b8 <_ZN7Console4putcEc>
    mem_free(buffer);
    800060c0:	0084b503          	ld	a0,8(s1)
    800060c4:	ffffb097          	auipc	ra,0xffffb
    800060c8:	240080e7          	jalr	576(ra) # 80001304 <_Z8mem_freePv>
    delete itemAvailable;
    800060cc:	0204b503          	ld	a0,32(s1)
    800060d0:	00050863          	beqz	a0,800060e0 <_ZN9BufferCPPD1Ev+0xb0>
    800060d4:	00053783          	ld	a5,0(a0)
    800060d8:	0087b783          	ld	a5,8(a5)
    800060dc:	000780e7          	jalr	a5
    delete spaceAvailable;
    800060e0:	0184b503          	ld	a0,24(s1)
    800060e4:	00050863          	beqz	a0,800060f4 <_ZN9BufferCPPD1Ev+0xc4>
    800060e8:	00053783          	ld	a5,0(a0)
    800060ec:	0087b783          	ld	a5,8(a5)
    800060f0:	000780e7          	jalr	a5
    delete mutexTail;
    800060f4:	0304b503          	ld	a0,48(s1)
    800060f8:	00050863          	beqz	a0,80006108 <_ZN9BufferCPPD1Ev+0xd8>
    800060fc:	00053783          	ld	a5,0(a0)
    80006100:	0087b783          	ld	a5,8(a5)
    80006104:	000780e7          	jalr	a5
    delete mutexHead;
    80006108:	0284b503          	ld	a0,40(s1)
    8000610c:	00050863          	beqz	a0,8000611c <_ZN9BufferCPPD1Ev+0xec>
    80006110:	00053783          	ld	a5,0(a0)
    80006114:	0087b783          	ld	a5,8(a5)
    80006118:	000780e7          	jalr	a5
}
    8000611c:	01813083          	ld	ra,24(sp)
    80006120:	01013403          	ld	s0,16(sp)
    80006124:	00813483          	ld	s1,8(sp)
    80006128:	02010113          	addi	sp,sp,32
    8000612c:	00008067          	ret

0000000080006130 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00813823          	sd	s0,16(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006144:	00003517          	auipc	a0,0x3
    80006148:	25c50513          	addi	a0,a0,604 # 800093a0 <CONSOLE_STATUS+0x390>
    8000614c:	00000097          	auipc	ra,0x0
    80006150:	91c080e7          	jalr	-1764(ra) # 80005a68 <_Z11printStringPKc>
    int test = getc() - '0';
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	404080e7          	jalr	1028(ra) # 80001558 <_Z4getcv>
    8000615c:	fd05049b          	addiw	s1,a0,-48
    getc();
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	3f8080e7          	jalr	1016(ra) # 80001558 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006168:	00700793          	li	a5,7
    8000616c:	1097e263          	bltu	a5,s1,80006270 <_Z8userMainv+0x140>
    80006170:	00249493          	slli	s1,s1,0x2
    80006174:	00003717          	auipc	a4,0x3
    80006178:	48470713          	addi	a4,a4,1156 # 800095f8 <CONSOLE_STATUS+0x5e8>
    8000617c:	00e484b3          	add	s1,s1,a4
    80006180:	0004a783          	lw	a5,0(s1)
    80006184:	00e787b3          	add	a5,a5,a4
    80006188:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    8000618c:	fffff097          	auipc	ra,0xfffff
    80006190:	f54080e7          	jalr	-172(ra) # 800050e0 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80006194:	00003517          	auipc	a0,0x3
    80006198:	22c50513          	addi	a0,a0,556 # 800093c0 <CONSOLE_STATUS+0x3b0>
    8000619c:	00000097          	auipc	ra,0x0
    800061a0:	8cc080e7          	jalr	-1844(ra) # 80005a68 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800061a4:	01813083          	ld	ra,24(sp)
    800061a8:	01013403          	ld	s0,16(sp)
    800061ac:	00813483          	ld	s1,8(sp)
    800061b0:	02010113          	addi	sp,sp,32
    800061b4:	00008067          	ret
            Threads_CPP_API_test();
    800061b8:	ffffe097          	auipc	ra,0xffffe
    800061bc:	e08080e7          	jalr	-504(ra) # 80003fc0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	24050513          	addi	a0,a0,576 # 80009400 <CONSOLE_STATUS+0x3f0>
    800061c8:	00000097          	auipc	ra,0x0
    800061cc:	8a0080e7          	jalr	-1888(ra) # 80005a68 <_Z11printStringPKc>
            break;
    800061d0:	fd5ff06f          	j	800061a4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800061d4:	ffffd097          	auipc	ra,0xffffd
    800061d8:	640080e7          	jalr	1600(ra) # 80003814 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800061dc:	00003517          	auipc	a0,0x3
    800061e0:	26450513          	addi	a0,a0,612 # 80009440 <CONSOLE_STATUS+0x430>
    800061e4:	00000097          	auipc	ra,0x0
    800061e8:	884080e7          	jalr	-1916(ra) # 80005a68 <_Z11printStringPKc>
            break;
    800061ec:	fb9ff06f          	j	800061a4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800061f0:	fffff097          	auipc	ra,0xfffff
    800061f4:	234080e7          	jalr	564(ra) # 80005424 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	29850513          	addi	a0,a0,664 # 80009490 <CONSOLE_STATUS+0x480>
    80006200:	00000097          	auipc	ra,0x0
    80006204:	868080e7          	jalr	-1944(ra) # 80005a68 <_Z11printStringPKc>
            break;
    80006208:	f9dff06f          	j	800061a4 <_Z8userMainv+0x74>
            testSleeping();
    8000620c:	00000097          	auipc	ra,0x0
    80006210:	11c080e7          	jalr	284(ra) # 80006328 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006214:	00003517          	auipc	a0,0x3
    80006218:	2d450513          	addi	a0,a0,724 # 800094e8 <CONSOLE_STATUS+0x4d8>
    8000621c:	00000097          	auipc	ra,0x0
    80006220:	84c080e7          	jalr	-1972(ra) # 80005a68 <_Z11printStringPKc>
            break;
    80006224:	f81ff06f          	j	800061a4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006228:	ffffe097          	auipc	ra,0xffffe
    8000622c:	258080e7          	jalr	600(ra) # 80004480 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006230:	00003517          	auipc	a0,0x3
    80006234:	2e850513          	addi	a0,a0,744 # 80009518 <CONSOLE_STATUS+0x508>
    80006238:	00000097          	auipc	ra,0x0
    8000623c:	830080e7          	jalr	-2000(ra) # 80005a68 <_Z11printStringPKc>
            break;
    80006240:	f65ff06f          	j	800061a4 <_Z8userMainv+0x74>
            System_Mode_test();
    80006244:	00000097          	auipc	ra,0x0
    80006248:	658080e7          	jalr	1624(ra) # 8000689c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000624c:	00003517          	auipc	a0,0x3
    80006250:	30c50513          	addi	a0,a0,780 # 80009558 <CONSOLE_STATUS+0x548>
    80006254:	00000097          	auipc	ra,0x0
    80006258:	814080e7          	jalr	-2028(ra) # 80005a68 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000625c:	00003517          	auipc	a0,0x3
    80006260:	31c50513          	addi	a0,a0,796 # 80009578 <CONSOLE_STATUS+0x568>
    80006264:	00000097          	auipc	ra,0x0
    80006268:	804080e7          	jalr	-2044(ra) # 80005a68 <_Z11printStringPKc>
            break;
    8000626c:	f39ff06f          	j	800061a4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006270:	00003517          	auipc	a0,0x3
    80006274:	36050513          	addi	a0,a0,864 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80006278:	fffff097          	auipc	ra,0xfffff
    8000627c:	7f0080e7          	jalr	2032(ra) # 80005a68 <_Z11printStringPKc>
    80006280:	f25ff06f          	j	800061a4 <_Z8userMainv+0x74>

0000000080006284 <_ZL9sleepyRunPv>:
#include "../h/syscall_c.h"
#include "printing.hpp"
static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006284:	fe010113          	addi	sp,sp,-32
    80006288:	00113c23          	sd	ra,24(sp)
    8000628c:	00813823          	sd	s0,16(sp)
    80006290:	00913423          	sd	s1,8(sp)
    80006294:	01213023          	sd	s2,0(sp)
    80006298:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000629c:	00053903          	ld	s2,0(a0)
    int i = 6;
    800062a0:	00600493          	li	s1,6
    while (--i > 0) {
    800062a4:	fff4849b          	addiw	s1,s1,-1
    800062a8:	04905463          	blez	s1,800062f0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800062ac:	00003517          	auipc	a0,0x3
    800062b0:	36c50513          	addi	a0,a0,876 # 80009618 <CONSOLE_STATUS+0x608>
    800062b4:	fffff097          	auipc	ra,0xfffff
    800062b8:	7b4080e7          	jalr	1972(ra) # 80005a68 <_Z11printStringPKc>
        printInt(sleep_time);
    800062bc:	00000613          	li	a2,0
    800062c0:	00a00593          	li	a1,10
    800062c4:	0009051b          	sext.w	a0,s2
    800062c8:	00000097          	auipc	ra,0x0
    800062cc:	950080e7          	jalr	-1712(ra) # 80005c18 <_Z8printIntiii>
        printString(" !\n");
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	35050513          	addi	a0,a0,848 # 80009620 <CONSOLE_STATUS+0x610>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	790080e7          	jalr	1936(ra) # 80005a68 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062e0:	00090513          	mv	a0,s2
    800062e4:	ffffb097          	auipc	ra,0xffffb
    800062e8:	244080e7          	jalr	580(ra) # 80001528 <_Z10time_sleepm>
    while (--i > 0) {
    800062ec:	fb9ff06f          	j	800062a4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800062f0:	00a00793          	li	a5,10
    800062f4:	02f95933          	divu	s2,s2,a5
    800062f8:	fff90913          	addi	s2,s2,-1
    800062fc:	00006797          	auipc	a5,0x6
    80006300:	b8c78793          	addi	a5,a5,-1140 # 8000be88 <_ZL8finished>
    80006304:	01278933          	add	s2,a5,s2
    80006308:	00100793          	li	a5,1
    8000630c:	00f90023          	sb	a5,0(s2)
}
    80006310:	01813083          	ld	ra,24(sp)
    80006314:	01013403          	ld	s0,16(sp)
    80006318:	00813483          	ld	s1,8(sp)
    8000631c:	00013903          	ld	s2,0(sp)
    80006320:	02010113          	addi	sp,sp,32
    80006324:	00008067          	ret

0000000080006328 <_Z12testSleepingv>:

void testSleeping() {
    80006328:	fc010113          	addi	sp,sp,-64
    8000632c:	02113c23          	sd	ra,56(sp)
    80006330:	02813823          	sd	s0,48(sp)
    80006334:	02913423          	sd	s1,40(sp)
    80006338:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000633c:	00a00793          	li	a5,10
    80006340:	fcf43823          	sd	a5,-48(s0)
    80006344:	01400793          	li	a5,20
    80006348:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000634c:	00000493          	li	s1,0
    80006350:	02c0006f          	j	8000637c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006354:	00349793          	slli	a5,s1,0x3
    80006358:	fd040613          	addi	a2,s0,-48
    8000635c:	00f60633          	add	a2,a2,a5
    80006360:	00000597          	auipc	a1,0x0
    80006364:	f2458593          	addi	a1,a1,-220 # 80006284 <_ZL9sleepyRunPv>
    80006368:	fc040513          	addi	a0,s0,-64
    8000636c:	00f50533          	add	a0,a0,a5
    80006370:	ffffb097          	auipc	ra,0xffffb
    80006374:	fc4080e7          	jalr	-60(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006378:	0014849b          	addiw	s1,s1,1
    8000637c:	00100793          	li	a5,1
    80006380:	fc97dae3          	bge	a5,s1,80006354 <_Z12testSleepingv+0x2c>
    }
    while (!(finished[0] && finished[1])) {}
    80006384:	00006797          	auipc	a5,0x6
    80006388:	b047c783          	lbu	a5,-1276(a5) # 8000be88 <_ZL8finished>
    8000638c:	fe078ce3          	beqz	a5,80006384 <_Z12testSleepingv+0x5c>
    80006390:	00006797          	auipc	a5,0x6
    80006394:	af97c783          	lbu	a5,-1287(a5) # 8000be89 <_ZL8finished+0x1>
    80006398:	fe0786e3          	beqz	a5,80006384 <_Z12testSleepingv+0x5c>
}
    8000639c:	03813083          	ld	ra,56(sp)
    800063a0:	03013403          	ld	s0,48(sp)
    800063a4:	02813483          	ld	s1,40(sp)
    800063a8:	04010113          	addi	sp,sp,64
    800063ac:	00008067          	ret

00000000800063b0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800063b0:	fe010113          	addi	sp,sp,-32
    800063b4:	00113c23          	sd	ra,24(sp)
    800063b8:	00813823          	sd	s0,16(sp)
    800063bc:	00913423          	sd	s1,8(sp)
    800063c0:	01213023          	sd	s2,0(sp)
    800063c4:	02010413          	addi	s0,sp,32
    800063c8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063cc:	00100793          	li	a5,1
    800063d0:	02a7f863          	bgeu	a5,a0,80006400 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063d4:	00a00793          	li	a5,10
    800063d8:	02f577b3          	remu	a5,a0,a5
    800063dc:	02078e63          	beqz	a5,80006418 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063e0:	fff48513          	addi	a0,s1,-1
    800063e4:	00000097          	auipc	ra,0x0
    800063e8:	fcc080e7          	jalr	-52(ra) # 800063b0 <_ZL9fibonaccim>
    800063ec:	00050913          	mv	s2,a0
    800063f0:	ffe48513          	addi	a0,s1,-2
    800063f4:	00000097          	auipc	ra,0x0
    800063f8:	fbc080e7          	jalr	-68(ra) # 800063b0 <_ZL9fibonaccim>
    800063fc:	00a90533          	add	a0,s2,a0
}
    80006400:	01813083          	ld	ra,24(sp)
    80006404:	01013403          	ld	s0,16(sp)
    80006408:	00813483          	ld	s1,8(sp)
    8000640c:	00013903          	ld	s2,0(sp)
    80006410:	02010113          	addi	sp,sp,32
    80006414:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006418:	ffffb097          	auipc	ra,0xffffb
    8000641c:	fb8080e7          	jalr	-72(ra) # 800013d0 <_Z15thread_dispatchv>
    80006420:	fc1ff06f          	j	800063e0 <_ZL9fibonaccim+0x30>

0000000080006424 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006424:	fe010113          	addi	sp,sp,-32
    80006428:	00113c23          	sd	ra,24(sp)
    8000642c:	00813823          	sd	s0,16(sp)
    80006430:	00913423          	sd	s1,8(sp)
    80006434:	01213023          	sd	s2,0(sp)
    80006438:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000643c:	00a00493          	li	s1,10
    80006440:	0400006f          	j	80006480 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006444:	00003517          	auipc	a0,0x3
    80006448:	eac50513          	addi	a0,a0,-340 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	61c080e7          	jalr	1564(ra) # 80005a68 <_Z11printStringPKc>
    80006454:	00000613          	li	a2,0
    80006458:	00a00593          	li	a1,10
    8000645c:	00048513          	mv	a0,s1
    80006460:	fffff097          	auipc	ra,0xfffff
    80006464:	7b8080e7          	jalr	1976(ra) # 80005c18 <_Z8printIntiii>
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	07850513          	addi	a0,a0,120 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006470:	fffff097          	auipc	ra,0xfffff
    80006474:	5f8080e7          	jalr	1528(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006478:	0014849b          	addiw	s1,s1,1
    8000647c:	0ff4f493          	andi	s1,s1,255
    80006480:	00c00793          	li	a5,12
    80006484:	fc97f0e3          	bgeu	a5,s1,80006444 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	e7050513          	addi	a0,a0,-400 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	5d8080e7          	jalr	1496(ra) # 80005a68 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006498:	00500313          	li	t1,5
    thread_dispatch();
    8000649c:	ffffb097          	auipc	ra,0xffffb
    800064a0:	f34080e7          	jalr	-204(ra) # 800013d0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800064a4:	01000513          	li	a0,16
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	f08080e7          	jalr	-248(ra) # 800063b0 <_ZL9fibonaccim>
    800064b0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064b4:	00003517          	auipc	a0,0x3
    800064b8:	e5450513          	addi	a0,a0,-428 # 80009308 <CONSOLE_STATUS+0x2f8>
    800064bc:	fffff097          	auipc	ra,0xfffff
    800064c0:	5ac080e7          	jalr	1452(ra) # 80005a68 <_Z11printStringPKc>
    800064c4:	00000613          	li	a2,0
    800064c8:	00a00593          	li	a1,10
    800064cc:	0009051b          	sext.w	a0,s2
    800064d0:	fffff097          	auipc	ra,0xfffff
    800064d4:	748080e7          	jalr	1864(ra) # 80005c18 <_Z8printIntiii>
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	00850513          	addi	a0,a0,8 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	588080e7          	jalr	1416(ra) # 80005a68 <_Z11printStringPKc>
    800064e8:	0400006f          	j	80006528 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800064ec:	00003517          	auipc	a0,0x3
    800064f0:	e0450513          	addi	a0,a0,-508 # 800092f0 <CONSOLE_STATUS+0x2e0>
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	574080e7          	jalr	1396(ra) # 80005a68 <_Z11printStringPKc>
    800064fc:	00000613          	li	a2,0
    80006500:	00a00593          	li	a1,10
    80006504:	00048513          	mv	a0,s1
    80006508:	fffff097          	auipc	ra,0xfffff
    8000650c:	710080e7          	jalr	1808(ra) # 80005c18 <_Z8printIntiii>
    80006510:	00003517          	auipc	a0,0x3
    80006514:	fd050513          	addi	a0,a0,-48 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006518:	fffff097          	auipc	ra,0xfffff
    8000651c:	550080e7          	jalr	1360(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006520:	0014849b          	addiw	s1,s1,1
    80006524:	0ff4f493          	andi	s1,s1,255
    80006528:	00f00793          	li	a5,15
    8000652c:	fc97f0e3          	bgeu	a5,s1,800064ec <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006530:	00003517          	auipc	a0,0x3
    80006534:	de850513          	addi	a0,a0,-536 # 80009318 <CONSOLE_STATUS+0x308>
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	530080e7          	jalr	1328(ra) # 80005a68 <_Z11printStringPKc>
    finishedD = true;
    80006540:	00100793          	li	a5,1
    80006544:	00006717          	auipc	a4,0x6
    80006548:	94f70323          	sb	a5,-1722(a4) # 8000be8a <_ZL9finishedD>
    thread_dispatch();
    8000654c:	ffffb097          	auipc	ra,0xffffb
    80006550:	e84080e7          	jalr	-380(ra) # 800013d0 <_Z15thread_dispatchv>
}
    80006554:	01813083          	ld	ra,24(sp)
    80006558:	01013403          	ld	s0,16(sp)
    8000655c:	00813483          	ld	s1,8(sp)
    80006560:	00013903          	ld	s2,0(sp)
    80006564:	02010113          	addi	sp,sp,32
    80006568:	00008067          	ret

000000008000656c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000656c:	fe010113          	addi	sp,sp,-32
    80006570:	00113c23          	sd	ra,24(sp)
    80006574:	00813823          	sd	s0,16(sp)
    80006578:	00913423          	sd	s1,8(sp)
    8000657c:	01213023          	sd	s2,0(sp)
    80006580:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006584:	00000493          	li	s1,0
    80006588:	0400006f          	j	800065c8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000658c:	00003517          	auipc	a0,0x3
    80006590:	d2450513          	addi	a0,a0,-732 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	4d4080e7          	jalr	1236(ra) # 80005a68 <_Z11printStringPKc>
    8000659c:	00000613          	li	a2,0
    800065a0:	00a00593          	li	a1,10
    800065a4:	00048513          	mv	a0,s1
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	670080e7          	jalr	1648(ra) # 80005c18 <_Z8printIntiii>
    800065b0:	00003517          	auipc	a0,0x3
    800065b4:	f3050513          	addi	a0,a0,-208 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800065b8:	fffff097          	auipc	ra,0xfffff
    800065bc:	4b0080e7          	jalr	1200(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800065c0:	0014849b          	addiw	s1,s1,1
    800065c4:	0ff4f493          	andi	s1,s1,255
    800065c8:	00200793          	li	a5,2
    800065cc:	fc97f0e3          	bgeu	a5,s1,8000658c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065d0:	00003517          	auipc	a0,0x3
    800065d4:	ce850513          	addi	a0,a0,-792 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800065d8:	fffff097          	auipc	ra,0xfffff
    800065dc:	490080e7          	jalr	1168(ra) # 80005a68 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065e0:	00700313          	li	t1,7
    thread_dispatch();
    800065e4:	ffffb097          	auipc	ra,0xffffb
    800065e8:	dec080e7          	jalr	-532(ra) # 800013d0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800065ec:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800065f0:	00003517          	auipc	a0,0x3
    800065f4:	cd850513          	addi	a0,a0,-808 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800065f8:	fffff097          	auipc	ra,0xfffff
    800065fc:	470080e7          	jalr	1136(ra) # 80005a68 <_Z11printStringPKc>
    80006600:	00000613          	li	a2,0
    80006604:	00a00593          	li	a1,10
    80006608:	0009051b          	sext.w	a0,s2
    8000660c:	fffff097          	auipc	ra,0xfffff
    80006610:	60c080e7          	jalr	1548(ra) # 80005c18 <_Z8printIntiii>
    80006614:	00003517          	auipc	a0,0x3
    80006618:	ecc50513          	addi	a0,a0,-308 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000661c:	fffff097          	auipc	ra,0xfffff
    80006620:	44c080e7          	jalr	1100(ra) # 80005a68 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006624:	00c00513          	li	a0,12
    80006628:	00000097          	auipc	ra,0x0
    8000662c:	d88080e7          	jalr	-632(ra) # 800063b0 <_ZL9fibonaccim>
    80006630:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006634:	00003517          	auipc	a0,0x3
    80006638:	c9c50513          	addi	a0,a0,-868 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000663c:	fffff097          	auipc	ra,0xfffff
    80006640:	42c080e7          	jalr	1068(ra) # 80005a68 <_Z11printStringPKc>
    80006644:	00000613          	li	a2,0
    80006648:	00a00593          	li	a1,10
    8000664c:	0009051b          	sext.w	a0,s2
    80006650:	fffff097          	auipc	ra,0xfffff
    80006654:	5c8080e7          	jalr	1480(ra) # 80005c18 <_Z8printIntiii>
    80006658:	00003517          	auipc	a0,0x3
    8000665c:	e8850513          	addi	a0,a0,-376 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	408080e7          	jalr	1032(ra) # 80005a68 <_Z11printStringPKc>
    80006668:	0400006f          	j	800066a8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000666c:	00003517          	auipc	a0,0x3
    80006670:	c4450513          	addi	a0,a0,-956 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	3f4080e7          	jalr	1012(ra) # 80005a68 <_Z11printStringPKc>
    8000667c:	00000613          	li	a2,0
    80006680:	00a00593          	li	a1,10
    80006684:	00048513          	mv	a0,s1
    80006688:	fffff097          	auipc	ra,0xfffff
    8000668c:	590080e7          	jalr	1424(ra) # 80005c18 <_Z8printIntiii>
    80006690:	00003517          	auipc	a0,0x3
    80006694:	e5050513          	addi	a0,a0,-432 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	3d0080e7          	jalr	976(ra) # 80005a68 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800066a0:	0014849b          	addiw	s1,s1,1
    800066a4:	0ff4f493          	andi	s1,s1,255
    800066a8:	00500793          	li	a5,5
    800066ac:	fc97f0e3          	bgeu	a5,s1,8000666c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800066b0:	00003517          	auipc	a0,0x3
    800066b4:	bd850513          	addi	a0,a0,-1064 # 80009288 <CONSOLE_STATUS+0x278>
    800066b8:	fffff097          	auipc	ra,0xfffff
    800066bc:	3b0080e7          	jalr	944(ra) # 80005a68 <_Z11printStringPKc>
    finishedC = true;
    800066c0:	00100793          	li	a5,1
    800066c4:	00005717          	auipc	a4,0x5
    800066c8:	7cf703a3          	sb	a5,1991(a4) # 8000be8b <_ZL9finishedC>
    thread_dispatch();
    800066cc:	ffffb097          	auipc	ra,0xffffb
    800066d0:	d04080e7          	jalr	-764(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800066d4:	01813083          	ld	ra,24(sp)
    800066d8:	01013403          	ld	s0,16(sp)
    800066dc:	00813483          	ld	s1,8(sp)
    800066e0:	00013903          	ld	s2,0(sp)
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00008067          	ret

00000000800066ec <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800066ec:	fe010113          	addi	sp,sp,-32
    800066f0:	00113c23          	sd	ra,24(sp)
    800066f4:	00813823          	sd	s0,16(sp)
    800066f8:	00913423          	sd	s1,8(sp)
    800066fc:	01213023          	sd	s2,0(sp)
    80006700:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006704:	00000913          	li	s2,0
    80006708:	0400006f          	j	80006748 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000670c:	ffffb097          	auipc	ra,0xffffb
    80006710:	cc4080e7          	jalr	-828(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006714:	00148493          	addi	s1,s1,1
    80006718:	000027b7          	lui	a5,0x2
    8000671c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006720:	0097ee63          	bltu	a5,s1,8000673c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006724:	00000713          	li	a4,0
    80006728:	000077b7          	lui	a5,0x7
    8000672c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006730:	fce7eee3          	bltu	a5,a4,8000670c <_ZL11workerBodyBPv+0x20>
    80006734:	00170713          	addi	a4,a4,1
    80006738:	ff1ff06f          	j	80006728 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000673c:	00a00793          	li	a5,10
    80006740:	04f90663          	beq	s2,a5,8000678c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006744:	00190913          	addi	s2,s2,1
    80006748:	00f00793          	li	a5,15
    8000674c:	0527e463          	bltu	a5,s2,80006794 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006750:	00003517          	auipc	a0,0x3
    80006754:	b4850513          	addi	a0,a0,-1208 # 80009298 <CONSOLE_STATUS+0x288>
    80006758:	fffff097          	auipc	ra,0xfffff
    8000675c:	310080e7          	jalr	784(ra) # 80005a68 <_Z11printStringPKc>
    80006760:	00000613          	li	a2,0
    80006764:	00a00593          	li	a1,10
    80006768:	0009051b          	sext.w	a0,s2
    8000676c:	fffff097          	auipc	ra,0xfffff
    80006770:	4ac080e7          	jalr	1196(ra) # 80005c18 <_Z8printIntiii>
    80006774:	00003517          	auipc	a0,0x3
    80006778:	d6c50513          	addi	a0,a0,-660 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000677c:	fffff097          	auipc	ra,0xfffff
    80006780:	2ec080e7          	jalr	748(ra) # 80005a68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006784:	00000493          	li	s1,0
    80006788:	f91ff06f          	j	80006718 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000678c:	14102ff3          	csrr	t6,sepc
    80006790:	fb5ff06f          	j	80006744 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006794:	00003517          	auipc	a0,0x3
    80006798:	b0c50513          	addi	a0,a0,-1268 # 800092a0 <CONSOLE_STATUS+0x290>
    8000679c:	fffff097          	auipc	ra,0xfffff
    800067a0:	2cc080e7          	jalr	716(ra) # 80005a68 <_Z11printStringPKc>
    finishedB = true;
    800067a4:	00100793          	li	a5,1
    800067a8:	00005717          	auipc	a4,0x5
    800067ac:	6ef70223          	sb	a5,1764(a4) # 8000be8c <_ZL9finishedB>
    thread_dispatch();
    800067b0:	ffffb097          	auipc	ra,0xffffb
    800067b4:	c20080e7          	jalr	-992(ra) # 800013d0 <_Z15thread_dispatchv>
}
    800067b8:	01813083          	ld	ra,24(sp)
    800067bc:	01013403          	ld	s0,16(sp)
    800067c0:	00813483          	ld	s1,8(sp)
    800067c4:	00013903          	ld	s2,0(sp)
    800067c8:	02010113          	addi	sp,sp,32
    800067cc:	00008067          	ret

00000000800067d0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067d0:	fe010113          	addi	sp,sp,-32
    800067d4:	00113c23          	sd	ra,24(sp)
    800067d8:	00813823          	sd	s0,16(sp)
    800067dc:	00913423          	sd	s1,8(sp)
    800067e0:	01213023          	sd	s2,0(sp)
    800067e4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800067e8:	00000913          	li	s2,0
    800067ec:	0380006f          	j	80006824 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800067f0:	ffffb097          	auipc	ra,0xffffb
    800067f4:	be0080e7          	jalr	-1056(ra) # 800013d0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800067f8:	00148493          	addi	s1,s1,1
    800067fc:	000027b7          	lui	a5,0x2
    80006800:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006804:	0097ee63          	bltu	a5,s1,80006820 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006808:	00000713          	li	a4,0
    8000680c:	000077b7          	lui	a5,0x7
    80006810:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006814:	fce7eee3          	bltu	a5,a4,800067f0 <_ZL11workerBodyAPv+0x20>
    80006818:	00170713          	addi	a4,a4,1
    8000681c:	ff1ff06f          	j	8000680c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006820:	00190913          	addi	s2,s2,1
    80006824:	00900793          	li	a5,9
    80006828:	0527e063          	bltu	a5,s2,80006868 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000682c:	00003517          	auipc	a0,0x3
    80006830:	a5450513          	addi	a0,a0,-1452 # 80009280 <CONSOLE_STATUS+0x270>
    80006834:	fffff097          	auipc	ra,0xfffff
    80006838:	234080e7          	jalr	564(ra) # 80005a68 <_Z11printStringPKc>
    8000683c:	00000613          	li	a2,0
    80006840:	00a00593          	li	a1,10
    80006844:	0009051b          	sext.w	a0,s2
    80006848:	fffff097          	auipc	ra,0xfffff
    8000684c:	3d0080e7          	jalr	976(ra) # 80005c18 <_Z8printIntiii>
    80006850:	00003517          	auipc	a0,0x3
    80006854:	c9050513          	addi	a0,a0,-880 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006858:	fffff097          	auipc	ra,0xfffff
    8000685c:	210080e7          	jalr	528(ra) # 80005a68 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006860:	00000493          	li	s1,0
    80006864:	f99ff06f          	j	800067fc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	a2050513          	addi	a0,a0,-1504 # 80009288 <CONSOLE_STATUS+0x278>
    80006870:	fffff097          	auipc	ra,0xfffff
    80006874:	1f8080e7          	jalr	504(ra) # 80005a68 <_Z11printStringPKc>
    finishedA = true;
    80006878:	00100793          	li	a5,1
    8000687c:	00005717          	auipc	a4,0x5
    80006880:	60f708a3          	sb	a5,1553(a4) # 8000be8d <_ZL9finishedA>
}
    80006884:	01813083          	ld	ra,24(sp)
    80006888:	01013403          	ld	s0,16(sp)
    8000688c:	00813483          	ld	s1,8(sp)
    80006890:	00013903          	ld	s2,0(sp)
    80006894:	02010113          	addi	sp,sp,32
    80006898:	00008067          	ret

000000008000689c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000689c:	fd010113          	addi	sp,sp,-48
    800068a0:	02113423          	sd	ra,40(sp)
    800068a4:	02813023          	sd	s0,32(sp)
    800068a8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800068ac:	00000613          	li	a2,0
    800068b0:	00000597          	auipc	a1,0x0
    800068b4:	f2058593          	addi	a1,a1,-224 # 800067d0 <_ZL11workerBodyAPv>
    800068b8:	fd040513          	addi	a0,s0,-48
    800068bc:	ffffb097          	auipc	ra,0xffffb
    800068c0:	a78080e7          	jalr	-1416(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800068c4:	00003517          	auipc	a0,0x3
    800068c8:	a6450513          	addi	a0,a0,-1436 # 80009328 <CONSOLE_STATUS+0x318>
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	19c080e7          	jalr	412(ra) # 80005a68 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068d4:	00000613          	li	a2,0
    800068d8:	00000597          	auipc	a1,0x0
    800068dc:	e1458593          	addi	a1,a1,-492 # 800066ec <_ZL11workerBodyBPv>
    800068e0:	fd840513          	addi	a0,s0,-40
    800068e4:	ffffb097          	auipc	ra,0xffffb
    800068e8:	a50080e7          	jalr	-1456(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800068ec:	00003517          	auipc	a0,0x3
    800068f0:	a5450513          	addi	a0,a0,-1452 # 80009340 <CONSOLE_STATUS+0x330>
    800068f4:	fffff097          	auipc	ra,0xfffff
    800068f8:	174080e7          	jalr	372(ra) # 80005a68 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800068fc:	00000613          	li	a2,0
    80006900:	00000597          	auipc	a1,0x0
    80006904:	c6c58593          	addi	a1,a1,-916 # 8000656c <_ZL11workerBodyCPv>
    80006908:	fe040513          	addi	a0,s0,-32
    8000690c:	ffffb097          	auipc	ra,0xffffb
    80006910:	a28080e7          	jalr	-1496(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006914:	00003517          	auipc	a0,0x3
    80006918:	a4450513          	addi	a0,a0,-1468 # 80009358 <CONSOLE_STATUS+0x348>
    8000691c:	fffff097          	auipc	ra,0xfffff
    80006920:	14c080e7          	jalr	332(ra) # 80005a68 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006924:	00000613          	li	a2,0
    80006928:	00000597          	auipc	a1,0x0
    8000692c:	afc58593          	addi	a1,a1,-1284 # 80006424 <_ZL11workerBodyDPv>
    80006930:	fe840513          	addi	a0,s0,-24
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	a00080e7          	jalr	-1536(ra) # 80001334 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000693c:	00003517          	auipc	a0,0x3
    80006940:	a3450513          	addi	a0,a0,-1484 # 80009370 <CONSOLE_STATUS+0x360>
    80006944:	fffff097          	auipc	ra,0xfffff
    80006948:	124080e7          	jalr	292(ra) # 80005a68 <_Z11printStringPKc>
    8000694c:	00c0006f          	j	80006958 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006950:	ffffb097          	auipc	ra,0xffffb
    80006954:	a80080e7          	jalr	-1408(ra) # 800013d0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006958:	00005797          	auipc	a5,0x5
    8000695c:	5357c783          	lbu	a5,1333(a5) # 8000be8d <_ZL9finishedA>
    80006960:	fe0788e3          	beqz	a5,80006950 <_Z16System_Mode_testv+0xb4>
    80006964:	00005797          	auipc	a5,0x5
    80006968:	5287c783          	lbu	a5,1320(a5) # 8000be8c <_ZL9finishedB>
    8000696c:	fe0782e3          	beqz	a5,80006950 <_Z16System_Mode_testv+0xb4>
    80006970:	00005797          	auipc	a5,0x5
    80006974:	51b7c783          	lbu	a5,1307(a5) # 8000be8b <_ZL9finishedC>
    80006978:	fc078ce3          	beqz	a5,80006950 <_Z16System_Mode_testv+0xb4>
    8000697c:	00005797          	auipc	a5,0x5
    80006980:	50e7c783          	lbu	a5,1294(a5) # 8000be8a <_ZL9finishedD>
    80006984:	fc0786e3          	beqz	a5,80006950 <_Z16System_Mode_testv+0xb4>
    }

}
    80006988:	02813083          	ld	ra,40(sp)
    8000698c:	02013403          	ld	s0,32(sp)
    80006990:	03010113          	addi	sp,sp,48
    80006994:	00008067          	ret

0000000080006998 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
int o=0;
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006998:	fe010113          	addi	sp,sp,-32
    8000699c:	00113c23          	sd	ra,24(sp)
    800069a0:	00813823          	sd	s0,16(sp)
    800069a4:	00913423          	sd	s1,8(sp)
    800069a8:	01213023          	sd	s2,0(sp)
    800069ac:	02010413          	addi	s0,sp,32
    800069b0:	00050493          	mv	s1,a0
    800069b4:	00058913          	mv	s2,a1
    800069b8:	0015879b          	addiw	a5,a1,1
    800069bc:	0007851b          	sext.w	a0,a5
    800069c0:	00f4a023          	sw	a5,0(s1)
    800069c4:	0004a823          	sw	zero,16(s1)
    800069c8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069cc:	00251513          	slli	a0,a0,0x2
    800069d0:	ffffb097          	auipc	ra,0xffffb
    800069d4:	900080e7          	jalr	-1792(ra) # 800012d0 <_Z9mem_allocm>
    800069d8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069dc:	00000593          	li	a1,0
    800069e0:	02048513          	addi	a0,s1,32
    800069e4:	ffffb097          	auipc	ra,0xffffb
    800069e8:	a0c080e7          	jalr	-1524(ra) # 800013f0 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800069ec:	00090593          	mv	a1,s2
    800069f0:	01848513          	addi	a0,s1,24
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	9fc080e7          	jalr	-1540(ra) # 800013f0 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800069fc:	00100593          	li	a1,1
    80006a00:	02848513          	addi	a0,s1,40
    80006a04:	ffffb097          	auipc	ra,0xffffb
    80006a08:	9ec080e7          	jalr	-1556(ra) # 800013f0 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006a0c:	00100593          	li	a1,1
    80006a10:	03048513          	addi	a0,s1,48
    80006a14:	ffffb097          	auipc	ra,0xffffb
    80006a18:	9dc080e7          	jalr	-1572(ra) # 800013f0 <_Z8sem_openPP4_semj>
}
    80006a1c:	01813083          	ld	ra,24(sp)
    80006a20:	01013403          	ld	s0,16(sp)
    80006a24:	00813483          	ld	s1,8(sp)
    80006a28:	00013903          	ld	s2,0(sp)
    80006a2c:	02010113          	addi	sp,sp,32
    80006a30:	00008067          	ret

0000000080006a34 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a34:	fe010113          	addi	sp,sp,-32
    80006a38:	00113c23          	sd	ra,24(sp)
    80006a3c:	00813823          	sd	s0,16(sp)
    80006a40:	00913423          	sd	s1,8(sp)
    80006a44:	01213023          	sd	s2,0(sp)
    80006a48:	02010413          	addi	s0,sp,32
    80006a4c:	00050493          	mv	s1,a0
    80006a50:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a54:	01853503          	ld	a0,24(a0)
    80006a58:	ffffb097          	auipc	ra,0xffffb
    80006a5c:	a00080e7          	jalr	-1536(ra) # 80001458 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006a60:	0304b503          	ld	a0,48(s1)
    80006a64:	ffffb097          	auipc	ra,0xffffb
    80006a68:	9f4080e7          	jalr	-1548(ra) # 80001458 <_Z8sem_waitP4_sem>

    buffer[tail] = val;
    80006a6c:	0084b783          	ld	a5,8(s1)
    80006a70:	0144a703          	lw	a4,20(s1)
    80006a74:	00271713          	slli	a4,a4,0x2
    80006a78:	00e787b3          	add	a5,a5,a4
    80006a7c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a80:	0144a783          	lw	a5,20(s1)
    80006a84:	0017879b          	addiw	a5,a5,1
    80006a88:	0004a703          	lw	a4,0(s1)
    80006a8c:	02e7e7bb          	remw	a5,a5,a4
    80006a90:	00f4aa23          	sw	a5,20(s1)

    sem_signal(mutexTail);
    80006a94:	0304b503          	ld	a0,48(s1)
    80006a98:	ffffb097          	auipc	ra,0xffffb
    80006a9c:	9f0080e7          	jalr	-1552(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006aa0:	0204b503          	ld	a0,32(s1)
    80006aa4:	ffffb097          	auipc	ra,0xffffb
    80006aa8:	9e4080e7          	jalr	-1564(ra) # 80001488 <_Z10sem_signalP4_sem>

}
    80006aac:	01813083          	ld	ra,24(sp)
    80006ab0:	01013403          	ld	s0,16(sp)
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	00013903          	ld	s2,0(sp)
    80006abc:	02010113          	addi	sp,sp,32
    80006ac0:	00008067          	ret

0000000080006ac4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006ac4:	fe010113          	addi	sp,sp,-32
    80006ac8:	00113c23          	sd	ra,24(sp)
    80006acc:	00813823          	sd	s0,16(sp)
    80006ad0:	00913423          	sd	s1,8(sp)
    80006ad4:	01213023          	sd	s2,0(sp)
    80006ad8:	02010413          	addi	s0,sp,32
    80006adc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006ae0:	02053503          	ld	a0,32(a0)
    80006ae4:	ffffb097          	auipc	ra,0xffffb
    80006ae8:	974080e7          	jalr	-1676(ra) # 80001458 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006aec:	0284b503          	ld	a0,40(s1)
    80006af0:	ffffb097          	auipc	ra,0xffffb
    80006af4:	968080e7          	jalr	-1688(ra) # 80001458 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006af8:	0084b703          	ld	a4,8(s1)
    80006afc:	0104a783          	lw	a5,16(s1)
    80006b00:	00279693          	slli	a3,a5,0x2
    80006b04:	00d70733          	add	a4,a4,a3
    80006b08:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b0c:	0017879b          	addiw	a5,a5,1
    80006b10:	0004a703          	lw	a4,0(s1)
    80006b14:	02e7e7bb          	remw	a5,a5,a4
    80006b18:	00f4a823          	sw	a5,16(s1)

    sem_signal(mutexHead);
    80006b1c:	0284b503          	ld	a0,40(s1)
    80006b20:	ffffb097          	auipc	ra,0xffffb
    80006b24:	968080e7          	jalr	-1688(ra) # 80001488 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006b28:	0184b503          	ld	a0,24(s1)
    80006b2c:	ffffb097          	auipc	ra,0xffffb
    80006b30:	95c080e7          	jalr	-1700(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b34:	00090513          	mv	a0,s2
    80006b38:	01813083          	ld	ra,24(sp)
    80006b3c:	01013403          	ld	s0,16(sp)
    80006b40:	00813483          	ld	s1,8(sp)
    80006b44:	00013903          	ld	s2,0(sp)
    80006b48:	02010113          	addi	sp,sp,32
    80006b4c:	00008067          	ret

0000000080006b50 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b50:	fe010113          	addi	sp,sp,-32
    80006b54:	00113c23          	sd	ra,24(sp)
    80006b58:	00813823          	sd	s0,16(sp)
    80006b5c:	00913423          	sd	s1,8(sp)
    80006b60:	01213023          	sd	s2,0(sp)
    80006b64:	02010413          	addi	s0,sp,32
    80006b68:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b6c:	02853503          	ld	a0,40(a0)
    80006b70:	ffffb097          	auipc	ra,0xffffb
    80006b74:	8e8080e7          	jalr	-1816(ra) # 80001458 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006b78:	0304b503          	ld	a0,48(s1)
    80006b7c:	ffffb097          	auipc	ra,0xffffb
    80006b80:	8dc080e7          	jalr	-1828(ra) # 80001458 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006b84:	0144a783          	lw	a5,20(s1)
    80006b88:	0104a903          	lw	s2,16(s1)
    80006b8c:	0327ce63          	blt	a5,s2,80006bc8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b90:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b94:	0304b503          	ld	a0,48(s1)
    80006b98:	ffffb097          	auipc	ra,0xffffb
    80006b9c:	8f0080e7          	jalr	-1808(ra) # 80001488 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006ba0:	0284b503          	ld	a0,40(s1)
    80006ba4:	ffffb097          	auipc	ra,0xffffb
    80006ba8:	8e4080e7          	jalr	-1820(ra) # 80001488 <_Z10sem_signalP4_sem>

    return ret;
}
    80006bac:	00090513          	mv	a0,s2
    80006bb0:	01813083          	ld	ra,24(sp)
    80006bb4:	01013403          	ld	s0,16(sp)
    80006bb8:	00813483          	ld	s1,8(sp)
    80006bbc:	00013903          	ld	s2,0(sp)
    80006bc0:	02010113          	addi	sp,sp,32
    80006bc4:	00008067          	ret
        ret = cap - head + tail;
    80006bc8:	0004a703          	lw	a4,0(s1)
    80006bcc:	4127093b          	subw	s2,a4,s2
    80006bd0:	00f9093b          	addw	s2,s2,a5
    80006bd4:	fc1ff06f          	j	80006b94 <_ZN6Buffer6getCntEv+0x44>

0000000080006bd8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bd8:	fe010113          	addi	sp,sp,-32
    80006bdc:	00113c23          	sd	ra,24(sp)
    80006be0:	00813823          	sd	s0,16(sp)
    80006be4:	00913423          	sd	s1,8(sp)
    80006be8:	02010413          	addi	s0,sp,32
    80006bec:	00050493          	mv	s1,a0
    putc('\n');
    80006bf0:	00a00513          	li	a0,10
    80006bf4:	ffffb097          	auipc	ra,0xffffb
    80006bf8:	98c080e7          	jalr	-1652(ra) # 80001580 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006bfc:	00002517          	auipc	a0,0x2
    80006c00:	78c50513          	addi	a0,a0,1932 # 80009388 <CONSOLE_STATUS+0x378>
    80006c04:	fffff097          	auipc	ra,0xfffff
    80006c08:	e64080e7          	jalr	-412(ra) # 80005a68 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c0c:	00048513          	mv	a0,s1
    80006c10:	00000097          	auipc	ra,0x0
    80006c14:	f40080e7          	jalr	-192(ra) # 80006b50 <_ZN6Buffer6getCntEv>
    80006c18:	02a05c63          	blez	a0,80006c50 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c1c:	0084b783          	ld	a5,8(s1)
    80006c20:	0104a703          	lw	a4,16(s1)
    80006c24:	00271713          	slli	a4,a4,0x2
    80006c28:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c2c:	0007c503          	lbu	a0,0(a5)
    80006c30:	ffffb097          	auipc	ra,0xffffb
    80006c34:	950080e7          	jalr	-1712(ra) # 80001580 <_Z4putcc>
        head = (head + 1) % cap;
    80006c38:	0104a783          	lw	a5,16(s1)
    80006c3c:	0017879b          	addiw	a5,a5,1
    80006c40:	0004a703          	lw	a4,0(s1)
    80006c44:	02e7e7bb          	remw	a5,a5,a4
    80006c48:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c4c:	fc1ff06f          	j	80006c0c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c50:	02100513          	li	a0,33
    80006c54:	ffffb097          	auipc	ra,0xffffb
    80006c58:	92c080e7          	jalr	-1748(ra) # 80001580 <_Z4putcc>
    putc('\n');
    80006c5c:	00a00513          	li	a0,10
    80006c60:	ffffb097          	auipc	ra,0xffffb
    80006c64:	920080e7          	jalr	-1760(ra) # 80001580 <_Z4putcc>
    mem_free(buffer);
    80006c68:	0084b503          	ld	a0,8(s1)
    80006c6c:	ffffa097          	auipc	ra,0xffffa
    80006c70:	698080e7          	jalr	1688(ra) # 80001304 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c74:	0204b503          	ld	a0,32(s1)
    80006c78:	ffffa097          	auipc	ra,0xffffa
    80006c7c:	7b0080e7          	jalr	1968(ra) # 80001428 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006c80:	0184b503          	ld	a0,24(s1)
    80006c84:	ffffa097          	auipc	ra,0xffffa
    80006c88:	7a4080e7          	jalr	1956(ra) # 80001428 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006c8c:	0304b503          	ld	a0,48(s1)
    80006c90:	ffffa097          	auipc	ra,0xffffa
    80006c94:	798080e7          	jalr	1944(ra) # 80001428 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006c98:	0284b503          	ld	a0,40(s1)
    80006c9c:	ffffa097          	auipc	ra,0xffffa
    80006ca0:	78c080e7          	jalr	1932(ra) # 80001428 <_Z9sem_closeP4_sem>
}
    80006ca4:	01813083          	ld	ra,24(sp)
    80006ca8:	01013403          	ld	s0,16(sp)
    80006cac:	00813483          	ld	s1,8(sp)
    80006cb0:	02010113          	addi	sp,sp,32
    80006cb4:	00008067          	ret

0000000080006cb8 <start>:
    80006cb8:	ff010113          	addi	sp,sp,-16
    80006cbc:	00813423          	sd	s0,8(sp)
    80006cc0:	01010413          	addi	s0,sp,16
    80006cc4:	300027f3          	csrr	a5,mstatus
    80006cc8:	ffffe737          	lui	a4,0xffffe
    80006ccc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff16ff>
    80006cd0:	00e7f7b3          	and	a5,a5,a4
    80006cd4:	00001737          	lui	a4,0x1
    80006cd8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cdc:	00e7e7b3          	or	a5,a5,a4
    80006ce0:	30079073          	csrw	mstatus,a5
    80006ce4:	00000797          	auipc	a5,0x0
    80006ce8:	16078793          	addi	a5,a5,352 # 80006e44 <system_main>
    80006cec:	34179073          	csrw	mepc,a5
    80006cf0:	00000793          	li	a5,0
    80006cf4:	18079073          	csrw	satp,a5
    80006cf8:	000107b7          	lui	a5,0x10
    80006cfc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006d00:	30279073          	csrw	medeleg,a5
    80006d04:	30379073          	csrw	mideleg,a5
    80006d08:	104027f3          	csrr	a5,sie
    80006d0c:	2227e793          	ori	a5,a5,546
    80006d10:	10479073          	csrw	sie,a5
    80006d14:	fff00793          	li	a5,-1
    80006d18:	00a7d793          	srli	a5,a5,0xa
    80006d1c:	3b079073          	csrw	pmpaddr0,a5
    80006d20:	00f00793          	li	a5,15
    80006d24:	3a079073          	csrw	pmpcfg0,a5
    80006d28:	f14027f3          	csrr	a5,mhartid
    80006d2c:	0200c737          	lui	a4,0x200c
    80006d30:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d34:	0007869b          	sext.w	a3,a5
    80006d38:	00269713          	slli	a4,a3,0x2
    80006d3c:	000f4637          	lui	a2,0xf4
    80006d40:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d44:	00d70733          	add	a4,a4,a3
    80006d48:	0037979b          	slliw	a5,a5,0x3
    80006d4c:	020046b7          	lui	a3,0x2004
    80006d50:	00d787b3          	add	a5,a5,a3
    80006d54:	00c585b3          	add	a1,a1,a2
    80006d58:	00371693          	slli	a3,a4,0x3
    80006d5c:	00005717          	auipc	a4,0x5
    80006d60:	14470713          	addi	a4,a4,324 # 8000bea0 <timer_scratch>
    80006d64:	00b7b023          	sd	a1,0(a5)
    80006d68:	00d70733          	add	a4,a4,a3
    80006d6c:	00f73c23          	sd	a5,24(a4)
    80006d70:	02c73023          	sd	a2,32(a4)
    80006d74:	34071073          	csrw	mscratch,a4
    80006d78:	00000797          	auipc	a5,0x0
    80006d7c:	6e878793          	addi	a5,a5,1768 # 80007460 <timervec>
    80006d80:	30579073          	csrw	mtvec,a5
    80006d84:	300027f3          	csrr	a5,mstatus
    80006d88:	0087e793          	ori	a5,a5,8
    80006d8c:	30079073          	csrw	mstatus,a5
    80006d90:	304027f3          	csrr	a5,mie
    80006d94:	0807e793          	ori	a5,a5,128
    80006d98:	30479073          	csrw	mie,a5
    80006d9c:	f14027f3          	csrr	a5,mhartid
    80006da0:	0007879b          	sext.w	a5,a5
    80006da4:	00078213          	mv	tp,a5
    80006da8:	30200073          	mret
    80006dac:	00813403          	ld	s0,8(sp)
    80006db0:	01010113          	addi	sp,sp,16
    80006db4:	00008067          	ret

0000000080006db8 <timerinit>:
    80006db8:	ff010113          	addi	sp,sp,-16
    80006dbc:	00813423          	sd	s0,8(sp)
    80006dc0:	01010413          	addi	s0,sp,16
    80006dc4:	f14027f3          	csrr	a5,mhartid
    80006dc8:	0200c737          	lui	a4,0x200c
    80006dcc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006dd0:	0007869b          	sext.w	a3,a5
    80006dd4:	00269713          	slli	a4,a3,0x2
    80006dd8:	000f4637          	lui	a2,0xf4
    80006ddc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006de0:	00d70733          	add	a4,a4,a3
    80006de4:	0037979b          	slliw	a5,a5,0x3
    80006de8:	020046b7          	lui	a3,0x2004
    80006dec:	00d787b3          	add	a5,a5,a3
    80006df0:	00c585b3          	add	a1,a1,a2
    80006df4:	00371693          	slli	a3,a4,0x3
    80006df8:	00005717          	auipc	a4,0x5
    80006dfc:	0a870713          	addi	a4,a4,168 # 8000bea0 <timer_scratch>
    80006e00:	00b7b023          	sd	a1,0(a5)
    80006e04:	00d70733          	add	a4,a4,a3
    80006e08:	00f73c23          	sd	a5,24(a4)
    80006e0c:	02c73023          	sd	a2,32(a4)
    80006e10:	34071073          	csrw	mscratch,a4
    80006e14:	00000797          	auipc	a5,0x0
    80006e18:	64c78793          	addi	a5,a5,1612 # 80007460 <timervec>
    80006e1c:	30579073          	csrw	mtvec,a5
    80006e20:	300027f3          	csrr	a5,mstatus
    80006e24:	0087e793          	ori	a5,a5,8
    80006e28:	30079073          	csrw	mstatus,a5
    80006e2c:	304027f3          	csrr	a5,mie
    80006e30:	0807e793          	ori	a5,a5,128
    80006e34:	30479073          	csrw	mie,a5
    80006e38:	00813403          	ld	s0,8(sp)
    80006e3c:	01010113          	addi	sp,sp,16
    80006e40:	00008067          	ret

0000000080006e44 <system_main>:
    80006e44:	fe010113          	addi	sp,sp,-32
    80006e48:	00813823          	sd	s0,16(sp)
    80006e4c:	00913423          	sd	s1,8(sp)
    80006e50:	00113c23          	sd	ra,24(sp)
    80006e54:	02010413          	addi	s0,sp,32
    80006e58:	00000097          	auipc	ra,0x0
    80006e5c:	0c4080e7          	jalr	196(ra) # 80006f1c <cpuid>
    80006e60:	00005497          	auipc	s1,0x5
    80006e64:	f0048493          	addi	s1,s1,-256 # 8000bd60 <started>
    80006e68:	02050263          	beqz	a0,80006e8c <system_main+0x48>
    80006e6c:	0004a783          	lw	a5,0(s1)
    80006e70:	0007879b          	sext.w	a5,a5
    80006e74:	fe078ce3          	beqz	a5,80006e6c <system_main+0x28>
    80006e78:	0ff0000f          	fence
    80006e7c:	00002517          	auipc	a0,0x2
    80006e80:	7dc50513          	addi	a0,a0,2012 # 80009658 <CONSOLE_STATUS+0x648>
    80006e84:	00001097          	auipc	ra,0x1
    80006e88:	a78080e7          	jalr	-1416(ra) # 800078fc <panic>
    80006e8c:	00001097          	auipc	ra,0x1
    80006e90:	9cc080e7          	jalr	-1588(ra) # 80007858 <consoleinit>
    80006e94:	00001097          	auipc	ra,0x1
    80006e98:	158080e7          	jalr	344(ra) # 80007fec <printfinit>
    80006e9c:	00002517          	auipc	a0,0x2
    80006ea0:	64450513          	addi	a0,a0,1604 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	ab4080e7          	jalr	-1356(ra) # 80007958 <__printf>
    80006eac:	00002517          	auipc	a0,0x2
    80006eb0:	77c50513          	addi	a0,a0,1916 # 80009628 <CONSOLE_STATUS+0x618>
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	aa4080e7          	jalr	-1372(ra) # 80007958 <__printf>
    80006ebc:	00002517          	auipc	a0,0x2
    80006ec0:	62450513          	addi	a0,a0,1572 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006ec4:	00001097          	auipc	ra,0x1
    80006ec8:	a94080e7          	jalr	-1388(ra) # 80007958 <__printf>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	4ac080e7          	jalr	1196(ra) # 80008378 <kinit>
    80006ed4:	00000097          	auipc	ra,0x0
    80006ed8:	148080e7          	jalr	328(ra) # 8000701c <trapinit>
    80006edc:	00000097          	auipc	ra,0x0
    80006ee0:	16c080e7          	jalr	364(ra) # 80007048 <trapinithart>
    80006ee4:	00000097          	auipc	ra,0x0
    80006ee8:	5bc080e7          	jalr	1468(ra) # 800074a0 <plicinit>
    80006eec:	00000097          	auipc	ra,0x0
    80006ef0:	5dc080e7          	jalr	1500(ra) # 800074c8 <plicinithart>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	078080e7          	jalr	120(ra) # 80006f6c <userinit>
    80006efc:	0ff0000f          	fence
    80006f00:	00100793          	li	a5,1
    80006f04:	00002517          	auipc	a0,0x2
    80006f08:	73c50513          	addi	a0,a0,1852 # 80009640 <CONSOLE_STATUS+0x630>
    80006f0c:	00f4a023          	sw	a5,0(s1)
    80006f10:	00001097          	auipc	ra,0x1
    80006f14:	a48080e7          	jalr	-1464(ra) # 80007958 <__printf>
    80006f18:	0000006f          	j	80006f18 <system_main+0xd4>

0000000080006f1c <cpuid>:
    80006f1c:	ff010113          	addi	sp,sp,-16
    80006f20:	00813423          	sd	s0,8(sp)
    80006f24:	01010413          	addi	s0,sp,16
    80006f28:	00020513          	mv	a0,tp
    80006f2c:	00813403          	ld	s0,8(sp)
    80006f30:	0005051b          	sext.w	a0,a0
    80006f34:	01010113          	addi	sp,sp,16
    80006f38:	00008067          	ret

0000000080006f3c <mycpu>:
    80006f3c:	ff010113          	addi	sp,sp,-16
    80006f40:	00813423          	sd	s0,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00020793          	mv	a5,tp
    80006f4c:	00813403          	ld	s0,8(sp)
    80006f50:	0007879b          	sext.w	a5,a5
    80006f54:	00779793          	slli	a5,a5,0x7
    80006f58:	00006517          	auipc	a0,0x6
    80006f5c:	f7850513          	addi	a0,a0,-136 # 8000ced0 <cpus>
    80006f60:	00f50533          	add	a0,a0,a5
    80006f64:	01010113          	addi	sp,sp,16
    80006f68:	00008067          	ret

0000000080006f6c <userinit>:
    80006f6c:	ff010113          	addi	sp,sp,-16
    80006f70:	00813423          	sd	s0,8(sp)
    80006f74:	01010413          	addi	s0,sp,16
    80006f78:	00813403          	ld	s0,8(sp)
    80006f7c:	01010113          	addi	sp,sp,16
    80006f80:	ffffb317          	auipc	t1,0xffffb
    80006f84:	13030067          	jr	304(t1) # 800020b0 <main>

0000000080006f88 <either_copyout>:
    80006f88:	ff010113          	addi	sp,sp,-16
    80006f8c:	00813023          	sd	s0,0(sp)
    80006f90:	00113423          	sd	ra,8(sp)
    80006f94:	01010413          	addi	s0,sp,16
    80006f98:	02051663          	bnez	a0,80006fc4 <either_copyout+0x3c>
    80006f9c:	00058513          	mv	a0,a1
    80006fa0:	00060593          	mv	a1,a2
    80006fa4:	0006861b          	sext.w	a2,a3
    80006fa8:	00002097          	auipc	ra,0x2
    80006fac:	c5c080e7          	jalr	-932(ra) # 80008c04 <__memmove>
    80006fb0:	00813083          	ld	ra,8(sp)
    80006fb4:	00013403          	ld	s0,0(sp)
    80006fb8:	00000513          	li	a0,0
    80006fbc:	01010113          	addi	sp,sp,16
    80006fc0:	00008067          	ret
    80006fc4:	00002517          	auipc	a0,0x2
    80006fc8:	6bc50513          	addi	a0,a0,1724 # 80009680 <CONSOLE_STATUS+0x670>
    80006fcc:	00001097          	auipc	ra,0x1
    80006fd0:	930080e7          	jalr	-1744(ra) # 800078fc <panic>

0000000080006fd4 <either_copyin>:
    80006fd4:	ff010113          	addi	sp,sp,-16
    80006fd8:	00813023          	sd	s0,0(sp)
    80006fdc:	00113423          	sd	ra,8(sp)
    80006fe0:	01010413          	addi	s0,sp,16
    80006fe4:	02059463          	bnez	a1,8000700c <either_copyin+0x38>
    80006fe8:	00060593          	mv	a1,a2
    80006fec:	0006861b          	sext.w	a2,a3
    80006ff0:	00002097          	auipc	ra,0x2
    80006ff4:	c14080e7          	jalr	-1004(ra) # 80008c04 <__memmove>
    80006ff8:	00813083          	ld	ra,8(sp)
    80006ffc:	00013403          	ld	s0,0(sp)
    80007000:	00000513          	li	a0,0
    80007004:	01010113          	addi	sp,sp,16
    80007008:	00008067          	ret
    8000700c:	00002517          	auipc	a0,0x2
    80007010:	69c50513          	addi	a0,a0,1692 # 800096a8 <CONSOLE_STATUS+0x698>
    80007014:	00001097          	auipc	ra,0x1
    80007018:	8e8080e7          	jalr	-1816(ra) # 800078fc <panic>

000000008000701c <trapinit>:
    8000701c:	ff010113          	addi	sp,sp,-16
    80007020:	00813423          	sd	s0,8(sp)
    80007024:	01010413          	addi	s0,sp,16
    80007028:	00813403          	ld	s0,8(sp)
    8000702c:	00002597          	auipc	a1,0x2
    80007030:	6a458593          	addi	a1,a1,1700 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80007034:	00006517          	auipc	a0,0x6
    80007038:	f1c50513          	addi	a0,a0,-228 # 8000cf50 <tickslock>
    8000703c:	01010113          	addi	sp,sp,16
    80007040:	00001317          	auipc	t1,0x1
    80007044:	5c830067          	jr	1480(t1) # 80008608 <initlock>

0000000080007048 <trapinithart>:
    80007048:	ff010113          	addi	sp,sp,-16
    8000704c:	00813423          	sd	s0,8(sp)
    80007050:	01010413          	addi	s0,sp,16
    80007054:	00000797          	auipc	a5,0x0
    80007058:	2fc78793          	addi	a5,a5,764 # 80007350 <kernelvec>
    8000705c:	10579073          	csrw	stvec,a5
    80007060:	00813403          	ld	s0,8(sp)
    80007064:	01010113          	addi	sp,sp,16
    80007068:	00008067          	ret

000000008000706c <usertrap>:
    8000706c:	ff010113          	addi	sp,sp,-16
    80007070:	00813423          	sd	s0,8(sp)
    80007074:	01010413          	addi	s0,sp,16
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	01010113          	addi	sp,sp,16
    80007080:	00008067          	ret

0000000080007084 <usertrapret>:
    80007084:	ff010113          	addi	sp,sp,-16
    80007088:	00813423          	sd	s0,8(sp)
    8000708c:	01010413          	addi	s0,sp,16
    80007090:	00813403          	ld	s0,8(sp)
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00008067          	ret

000000008000709c <kerneltrap>:
    8000709c:	fe010113          	addi	sp,sp,-32
    800070a0:	00813823          	sd	s0,16(sp)
    800070a4:	00113c23          	sd	ra,24(sp)
    800070a8:	00913423          	sd	s1,8(sp)
    800070ac:	02010413          	addi	s0,sp,32
    800070b0:	142025f3          	csrr	a1,scause
    800070b4:	100027f3          	csrr	a5,sstatus
    800070b8:	0027f793          	andi	a5,a5,2
    800070bc:	10079c63          	bnez	a5,800071d4 <kerneltrap+0x138>
    800070c0:	142027f3          	csrr	a5,scause
    800070c4:	0207ce63          	bltz	a5,80007100 <kerneltrap+0x64>
    800070c8:	00002517          	auipc	a0,0x2
    800070cc:	65050513          	addi	a0,a0,1616 # 80009718 <CONSOLE_STATUS+0x708>
    800070d0:	00001097          	auipc	ra,0x1
    800070d4:	888080e7          	jalr	-1912(ra) # 80007958 <__printf>
    800070d8:	141025f3          	csrr	a1,sepc
    800070dc:	14302673          	csrr	a2,stval
    800070e0:	00002517          	auipc	a0,0x2
    800070e4:	64850513          	addi	a0,a0,1608 # 80009728 <CONSOLE_STATUS+0x718>
    800070e8:	00001097          	auipc	ra,0x1
    800070ec:	870080e7          	jalr	-1936(ra) # 80007958 <__printf>
    800070f0:	00002517          	auipc	a0,0x2
    800070f4:	65050513          	addi	a0,a0,1616 # 80009740 <CONSOLE_STATUS+0x730>
    800070f8:	00001097          	auipc	ra,0x1
    800070fc:	804080e7          	jalr	-2044(ra) # 800078fc <panic>
    80007100:	0ff7f713          	andi	a4,a5,255
    80007104:	00900693          	li	a3,9
    80007108:	04d70063          	beq	a4,a3,80007148 <kerneltrap+0xac>
    8000710c:	fff00713          	li	a4,-1
    80007110:	03f71713          	slli	a4,a4,0x3f
    80007114:	00170713          	addi	a4,a4,1
    80007118:	fae798e3          	bne	a5,a4,800070c8 <kerneltrap+0x2c>
    8000711c:	00000097          	auipc	ra,0x0
    80007120:	e00080e7          	jalr	-512(ra) # 80006f1c <cpuid>
    80007124:	06050663          	beqz	a0,80007190 <kerneltrap+0xf4>
    80007128:	144027f3          	csrr	a5,sip
    8000712c:	ffd7f793          	andi	a5,a5,-3
    80007130:	14479073          	csrw	sip,a5
    80007134:	01813083          	ld	ra,24(sp)
    80007138:	01013403          	ld	s0,16(sp)
    8000713c:	00813483          	ld	s1,8(sp)
    80007140:	02010113          	addi	sp,sp,32
    80007144:	00008067          	ret
    80007148:	00000097          	auipc	ra,0x0
    8000714c:	3cc080e7          	jalr	972(ra) # 80007514 <plic_claim>
    80007150:	00a00793          	li	a5,10
    80007154:	00050493          	mv	s1,a0
    80007158:	06f50863          	beq	a0,a5,800071c8 <kerneltrap+0x12c>
    8000715c:	fc050ce3          	beqz	a0,80007134 <kerneltrap+0x98>
    80007160:	00050593          	mv	a1,a0
    80007164:	00002517          	auipc	a0,0x2
    80007168:	59450513          	addi	a0,a0,1428 # 800096f8 <CONSOLE_STATUS+0x6e8>
    8000716c:	00000097          	auipc	ra,0x0
    80007170:	7ec080e7          	jalr	2028(ra) # 80007958 <__printf>
    80007174:	01013403          	ld	s0,16(sp)
    80007178:	01813083          	ld	ra,24(sp)
    8000717c:	00048513          	mv	a0,s1
    80007180:	00813483          	ld	s1,8(sp)
    80007184:	02010113          	addi	sp,sp,32
    80007188:	00000317          	auipc	t1,0x0
    8000718c:	3c430067          	jr	964(t1) # 8000754c <plic_complete>
    80007190:	00006517          	auipc	a0,0x6
    80007194:	dc050513          	addi	a0,a0,-576 # 8000cf50 <tickslock>
    80007198:	00001097          	auipc	ra,0x1
    8000719c:	494080e7          	jalr	1172(ra) # 8000862c <acquire>
    800071a0:	00005717          	auipc	a4,0x5
    800071a4:	bc470713          	addi	a4,a4,-1084 # 8000bd64 <ticks>
    800071a8:	00072783          	lw	a5,0(a4)
    800071ac:	00006517          	auipc	a0,0x6
    800071b0:	da450513          	addi	a0,a0,-604 # 8000cf50 <tickslock>
    800071b4:	0017879b          	addiw	a5,a5,1
    800071b8:	00f72023          	sw	a5,0(a4)
    800071bc:	00001097          	auipc	ra,0x1
    800071c0:	53c080e7          	jalr	1340(ra) # 800086f8 <release>
    800071c4:	f65ff06f          	j	80007128 <kerneltrap+0x8c>
    800071c8:	00001097          	auipc	ra,0x1
    800071cc:	098080e7          	jalr	152(ra) # 80008260 <uartintr>
    800071d0:	fa5ff06f          	j	80007174 <kerneltrap+0xd8>
    800071d4:	00002517          	auipc	a0,0x2
    800071d8:	50450513          	addi	a0,a0,1284 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800071dc:	00000097          	auipc	ra,0x0
    800071e0:	720080e7          	jalr	1824(ra) # 800078fc <panic>

00000000800071e4 <clockintr>:
    800071e4:	fe010113          	addi	sp,sp,-32
    800071e8:	00813823          	sd	s0,16(sp)
    800071ec:	00913423          	sd	s1,8(sp)
    800071f0:	00113c23          	sd	ra,24(sp)
    800071f4:	02010413          	addi	s0,sp,32
    800071f8:	00006497          	auipc	s1,0x6
    800071fc:	d5848493          	addi	s1,s1,-680 # 8000cf50 <tickslock>
    80007200:	00048513          	mv	a0,s1
    80007204:	00001097          	auipc	ra,0x1
    80007208:	428080e7          	jalr	1064(ra) # 8000862c <acquire>
    8000720c:	00005717          	auipc	a4,0x5
    80007210:	b5870713          	addi	a4,a4,-1192 # 8000bd64 <ticks>
    80007214:	00072783          	lw	a5,0(a4)
    80007218:	01013403          	ld	s0,16(sp)
    8000721c:	01813083          	ld	ra,24(sp)
    80007220:	00048513          	mv	a0,s1
    80007224:	0017879b          	addiw	a5,a5,1
    80007228:	00813483          	ld	s1,8(sp)
    8000722c:	00f72023          	sw	a5,0(a4)
    80007230:	02010113          	addi	sp,sp,32
    80007234:	00001317          	auipc	t1,0x1
    80007238:	4c430067          	jr	1220(t1) # 800086f8 <release>

000000008000723c <devintr>:
    8000723c:	142027f3          	csrr	a5,scause
    80007240:	00000513          	li	a0,0
    80007244:	0007c463          	bltz	a5,8000724c <devintr+0x10>
    80007248:	00008067          	ret
    8000724c:	fe010113          	addi	sp,sp,-32
    80007250:	00813823          	sd	s0,16(sp)
    80007254:	00113c23          	sd	ra,24(sp)
    80007258:	00913423          	sd	s1,8(sp)
    8000725c:	02010413          	addi	s0,sp,32
    80007260:	0ff7f713          	andi	a4,a5,255
    80007264:	00900693          	li	a3,9
    80007268:	04d70c63          	beq	a4,a3,800072c0 <devintr+0x84>
    8000726c:	fff00713          	li	a4,-1
    80007270:	03f71713          	slli	a4,a4,0x3f
    80007274:	00170713          	addi	a4,a4,1
    80007278:	00e78c63          	beq	a5,a4,80007290 <devintr+0x54>
    8000727c:	01813083          	ld	ra,24(sp)
    80007280:	01013403          	ld	s0,16(sp)
    80007284:	00813483          	ld	s1,8(sp)
    80007288:	02010113          	addi	sp,sp,32
    8000728c:	00008067          	ret
    80007290:	00000097          	auipc	ra,0x0
    80007294:	c8c080e7          	jalr	-884(ra) # 80006f1c <cpuid>
    80007298:	06050663          	beqz	a0,80007304 <devintr+0xc8>
    8000729c:	144027f3          	csrr	a5,sip
    800072a0:	ffd7f793          	andi	a5,a5,-3
    800072a4:	14479073          	csrw	sip,a5
    800072a8:	01813083          	ld	ra,24(sp)
    800072ac:	01013403          	ld	s0,16(sp)
    800072b0:	00813483          	ld	s1,8(sp)
    800072b4:	00200513          	li	a0,2
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00008067          	ret
    800072c0:	00000097          	auipc	ra,0x0
    800072c4:	254080e7          	jalr	596(ra) # 80007514 <plic_claim>
    800072c8:	00a00793          	li	a5,10
    800072cc:	00050493          	mv	s1,a0
    800072d0:	06f50663          	beq	a0,a5,8000733c <devintr+0x100>
    800072d4:	00100513          	li	a0,1
    800072d8:	fa0482e3          	beqz	s1,8000727c <devintr+0x40>
    800072dc:	00048593          	mv	a1,s1
    800072e0:	00002517          	auipc	a0,0x2
    800072e4:	41850513          	addi	a0,a0,1048 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800072e8:	00000097          	auipc	ra,0x0
    800072ec:	670080e7          	jalr	1648(ra) # 80007958 <__printf>
    800072f0:	00048513          	mv	a0,s1
    800072f4:	00000097          	auipc	ra,0x0
    800072f8:	258080e7          	jalr	600(ra) # 8000754c <plic_complete>
    800072fc:	00100513          	li	a0,1
    80007300:	f7dff06f          	j	8000727c <devintr+0x40>
    80007304:	00006517          	auipc	a0,0x6
    80007308:	c4c50513          	addi	a0,a0,-948 # 8000cf50 <tickslock>
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	320080e7          	jalr	800(ra) # 8000862c <acquire>
    80007314:	00005717          	auipc	a4,0x5
    80007318:	a5070713          	addi	a4,a4,-1456 # 8000bd64 <ticks>
    8000731c:	00072783          	lw	a5,0(a4)
    80007320:	00006517          	auipc	a0,0x6
    80007324:	c3050513          	addi	a0,a0,-976 # 8000cf50 <tickslock>
    80007328:	0017879b          	addiw	a5,a5,1
    8000732c:	00f72023          	sw	a5,0(a4)
    80007330:	00001097          	auipc	ra,0x1
    80007334:	3c8080e7          	jalr	968(ra) # 800086f8 <release>
    80007338:	f65ff06f          	j	8000729c <devintr+0x60>
    8000733c:	00001097          	auipc	ra,0x1
    80007340:	f24080e7          	jalr	-220(ra) # 80008260 <uartintr>
    80007344:	fadff06f          	j	800072f0 <devintr+0xb4>
	...

0000000080007350 <kernelvec>:
    80007350:	f0010113          	addi	sp,sp,-256
    80007354:	00113023          	sd	ra,0(sp)
    80007358:	00213423          	sd	sp,8(sp)
    8000735c:	00313823          	sd	gp,16(sp)
    80007360:	00413c23          	sd	tp,24(sp)
    80007364:	02513023          	sd	t0,32(sp)
    80007368:	02613423          	sd	t1,40(sp)
    8000736c:	02713823          	sd	t2,48(sp)
    80007370:	02813c23          	sd	s0,56(sp)
    80007374:	04913023          	sd	s1,64(sp)
    80007378:	04a13423          	sd	a0,72(sp)
    8000737c:	04b13823          	sd	a1,80(sp)
    80007380:	04c13c23          	sd	a2,88(sp)
    80007384:	06d13023          	sd	a3,96(sp)
    80007388:	06e13423          	sd	a4,104(sp)
    8000738c:	06f13823          	sd	a5,112(sp)
    80007390:	07013c23          	sd	a6,120(sp)
    80007394:	09113023          	sd	a7,128(sp)
    80007398:	09213423          	sd	s2,136(sp)
    8000739c:	09313823          	sd	s3,144(sp)
    800073a0:	09413c23          	sd	s4,152(sp)
    800073a4:	0b513023          	sd	s5,160(sp)
    800073a8:	0b613423          	sd	s6,168(sp)
    800073ac:	0b713823          	sd	s7,176(sp)
    800073b0:	0b813c23          	sd	s8,184(sp)
    800073b4:	0d913023          	sd	s9,192(sp)
    800073b8:	0da13423          	sd	s10,200(sp)
    800073bc:	0db13823          	sd	s11,208(sp)
    800073c0:	0dc13c23          	sd	t3,216(sp)
    800073c4:	0fd13023          	sd	t4,224(sp)
    800073c8:	0fe13423          	sd	t5,232(sp)
    800073cc:	0ff13823          	sd	t6,240(sp)
    800073d0:	ccdff0ef          	jal	ra,8000709c <kerneltrap>
    800073d4:	00013083          	ld	ra,0(sp)
    800073d8:	00813103          	ld	sp,8(sp)
    800073dc:	01013183          	ld	gp,16(sp)
    800073e0:	02013283          	ld	t0,32(sp)
    800073e4:	02813303          	ld	t1,40(sp)
    800073e8:	03013383          	ld	t2,48(sp)
    800073ec:	03813403          	ld	s0,56(sp)
    800073f0:	04013483          	ld	s1,64(sp)
    800073f4:	04813503          	ld	a0,72(sp)
    800073f8:	05013583          	ld	a1,80(sp)
    800073fc:	05813603          	ld	a2,88(sp)
    80007400:	06013683          	ld	a3,96(sp)
    80007404:	06813703          	ld	a4,104(sp)
    80007408:	07013783          	ld	a5,112(sp)
    8000740c:	07813803          	ld	a6,120(sp)
    80007410:	08013883          	ld	a7,128(sp)
    80007414:	08813903          	ld	s2,136(sp)
    80007418:	09013983          	ld	s3,144(sp)
    8000741c:	09813a03          	ld	s4,152(sp)
    80007420:	0a013a83          	ld	s5,160(sp)
    80007424:	0a813b03          	ld	s6,168(sp)
    80007428:	0b013b83          	ld	s7,176(sp)
    8000742c:	0b813c03          	ld	s8,184(sp)
    80007430:	0c013c83          	ld	s9,192(sp)
    80007434:	0c813d03          	ld	s10,200(sp)
    80007438:	0d013d83          	ld	s11,208(sp)
    8000743c:	0d813e03          	ld	t3,216(sp)
    80007440:	0e013e83          	ld	t4,224(sp)
    80007444:	0e813f03          	ld	t5,232(sp)
    80007448:	0f013f83          	ld	t6,240(sp)
    8000744c:	10010113          	addi	sp,sp,256
    80007450:	10200073          	sret
    80007454:	00000013          	nop
    80007458:	00000013          	nop
    8000745c:	00000013          	nop

0000000080007460 <timervec>:
    80007460:	34051573          	csrrw	a0,mscratch,a0
    80007464:	00b53023          	sd	a1,0(a0)
    80007468:	00c53423          	sd	a2,8(a0)
    8000746c:	00d53823          	sd	a3,16(a0)
    80007470:	01853583          	ld	a1,24(a0)
    80007474:	02053603          	ld	a2,32(a0)
    80007478:	0005b683          	ld	a3,0(a1)
    8000747c:	00c686b3          	add	a3,a3,a2
    80007480:	00d5b023          	sd	a3,0(a1)
    80007484:	00200593          	li	a1,2
    80007488:	14459073          	csrw	sip,a1
    8000748c:	01053683          	ld	a3,16(a0)
    80007490:	00853603          	ld	a2,8(a0)
    80007494:	00053583          	ld	a1,0(a0)
    80007498:	34051573          	csrrw	a0,mscratch,a0
    8000749c:	30200073          	mret

00000000800074a0 <plicinit>:
    800074a0:	ff010113          	addi	sp,sp,-16
    800074a4:	00813423          	sd	s0,8(sp)
    800074a8:	01010413          	addi	s0,sp,16
    800074ac:	00813403          	ld	s0,8(sp)
    800074b0:	0c0007b7          	lui	a5,0xc000
    800074b4:	00100713          	li	a4,1
    800074b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800074bc:	00e7a223          	sw	a4,4(a5)
    800074c0:	01010113          	addi	sp,sp,16
    800074c4:	00008067          	ret

00000000800074c8 <plicinithart>:
    800074c8:	ff010113          	addi	sp,sp,-16
    800074cc:	00813023          	sd	s0,0(sp)
    800074d0:	00113423          	sd	ra,8(sp)
    800074d4:	01010413          	addi	s0,sp,16
    800074d8:	00000097          	auipc	ra,0x0
    800074dc:	a44080e7          	jalr	-1468(ra) # 80006f1c <cpuid>
    800074e0:	0085171b          	slliw	a4,a0,0x8
    800074e4:	0c0027b7          	lui	a5,0xc002
    800074e8:	00e787b3          	add	a5,a5,a4
    800074ec:	40200713          	li	a4,1026
    800074f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800074f4:	00813083          	ld	ra,8(sp)
    800074f8:	00013403          	ld	s0,0(sp)
    800074fc:	00d5151b          	slliw	a0,a0,0xd
    80007500:	0c2017b7          	lui	a5,0xc201
    80007504:	00a78533          	add	a0,a5,a0
    80007508:	00052023          	sw	zero,0(a0)
    8000750c:	01010113          	addi	sp,sp,16
    80007510:	00008067          	ret

0000000080007514 <plic_claim>:
    80007514:	ff010113          	addi	sp,sp,-16
    80007518:	00813023          	sd	s0,0(sp)
    8000751c:	00113423          	sd	ra,8(sp)
    80007520:	01010413          	addi	s0,sp,16
    80007524:	00000097          	auipc	ra,0x0
    80007528:	9f8080e7          	jalr	-1544(ra) # 80006f1c <cpuid>
    8000752c:	00813083          	ld	ra,8(sp)
    80007530:	00013403          	ld	s0,0(sp)
    80007534:	00d5151b          	slliw	a0,a0,0xd
    80007538:	0c2017b7          	lui	a5,0xc201
    8000753c:	00a78533          	add	a0,a5,a0
    80007540:	00452503          	lw	a0,4(a0)
    80007544:	01010113          	addi	sp,sp,16
    80007548:	00008067          	ret

000000008000754c <plic_complete>:
    8000754c:	fe010113          	addi	sp,sp,-32
    80007550:	00813823          	sd	s0,16(sp)
    80007554:	00913423          	sd	s1,8(sp)
    80007558:	00113c23          	sd	ra,24(sp)
    8000755c:	02010413          	addi	s0,sp,32
    80007560:	00050493          	mv	s1,a0
    80007564:	00000097          	auipc	ra,0x0
    80007568:	9b8080e7          	jalr	-1608(ra) # 80006f1c <cpuid>
    8000756c:	01813083          	ld	ra,24(sp)
    80007570:	01013403          	ld	s0,16(sp)
    80007574:	00d5179b          	slliw	a5,a0,0xd
    80007578:	0c201737          	lui	a4,0xc201
    8000757c:	00f707b3          	add	a5,a4,a5
    80007580:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007584:	00813483          	ld	s1,8(sp)
    80007588:	02010113          	addi	sp,sp,32
    8000758c:	00008067          	ret

0000000080007590 <consolewrite>:
    80007590:	fb010113          	addi	sp,sp,-80
    80007594:	04813023          	sd	s0,64(sp)
    80007598:	04113423          	sd	ra,72(sp)
    8000759c:	02913c23          	sd	s1,56(sp)
    800075a0:	03213823          	sd	s2,48(sp)
    800075a4:	03313423          	sd	s3,40(sp)
    800075a8:	03413023          	sd	s4,32(sp)
    800075ac:	01513c23          	sd	s5,24(sp)
    800075b0:	05010413          	addi	s0,sp,80
    800075b4:	06c05c63          	blez	a2,8000762c <consolewrite+0x9c>
    800075b8:	00060993          	mv	s3,a2
    800075bc:	00050a13          	mv	s4,a0
    800075c0:	00058493          	mv	s1,a1
    800075c4:	00000913          	li	s2,0
    800075c8:	fff00a93          	li	s5,-1
    800075cc:	01c0006f          	j	800075e8 <consolewrite+0x58>
    800075d0:	fbf44503          	lbu	a0,-65(s0)
    800075d4:	0019091b          	addiw	s2,s2,1
    800075d8:	00148493          	addi	s1,s1,1
    800075dc:	00001097          	auipc	ra,0x1
    800075e0:	a9c080e7          	jalr	-1380(ra) # 80008078 <uartputc>
    800075e4:	03298063          	beq	s3,s2,80007604 <consolewrite+0x74>
    800075e8:	00048613          	mv	a2,s1
    800075ec:	00100693          	li	a3,1
    800075f0:	000a0593          	mv	a1,s4
    800075f4:	fbf40513          	addi	a0,s0,-65
    800075f8:	00000097          	auipc	ra,0x0
    800075fc:	9dc080e7          	jalr	-1572(ra) # 80006fd4 <either_copyin>
    80007600:	fd5518e3          	bne	a0,s5,800075d0 <consolewrite+0x40>
    80007604:	04813083          	ld	ra,72(sp)
    80007608:	04013403          	ld	s0,64(sp)
    8000760c:	03813483          	ld	s1,56(sp)
    80007610:	02813983          	ld	s3,40(sp)
    80007614:	02013a03          	ld	s4,32(sp)
    80007618:	01813a83          	ld	s5,24(sp)
    8000761c:	00090513          	mv	a0,s2
    80007620:	03013903          	ld	s2,48(sp)
    80007624:	05010113          	addi	sp,sp,80
    80007628:	00008067          	ret
    8000762c:	00000913          	li	s2,0
    80007630:	fd5ff06f          	j	80007604 <consolewrite+0x74>

0000000080007634 <consoleread>:
    80007634:	f9010113          	addi	sp,sp,-112
    80007638:	06813023          	sd	s0,96(sp)
    8000763c:	04913c23          	sd	s1,88(sp)
    80007640:	05213823          	sd	s2,80(sp)
    80007644:	05313423          	sd	s3,72(sp)
    80007648:	05413023          	sd	s4,64(sp)
    8000764c:	03513c23          	sd	s5,56(sp)
    80007650:	03613823          	sd	s6,48(sp)
    80007654:	03713423          	sd	s7,40(sp)
    80007658:	03813023          	sd	s8,32(sp)
    8000765c:	06113423          	sd	ra,104(sp)
    80007660:	01913c23          	sd	s9,24(sp)
    80007664:	07010413          	addi	s0,sp,112
    80007668:	00060b93          	mv	s7,a2
    8000766c:	00050913          	mv	s2,a0
    80007670:	00058c13          	mv	s8,a1
    80007674:	00060b1b          	sext.w	s6,a2
    80007678:	00006497          	auipc	s1,0x6
    8000767c:	90048493          	addi	s1,s1,-1792 # 8000cf78 <cons>
    80007680:	00400993          	li	s3,4
    80007684:	fff00a13          	li	s4,-1
    80007688:	00a00a93          	li	s5,10
    8000768c:	05705e63          	blez	s7,800076e8 <consoleread+0xb4>
    80007690:	09c4a703          	lw	a4,156(s1)
    80007694:	0984a783          	lw	a5,152(s1)
    80007698:	0007071b          	sext.w	a4,a4
    8000769c:	08e78463          	beq	a5,a4,80007724 <consoleread+0xf0>
    800076a0:	07f7f713          	andi	a4,a5,127
    800076a4:	00e48733          	add	a4,s1,a4
    800076a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800076ac:	0017869b          	addiw	a3,a5,1
    800076b0:	08d4ac23          	sw	a3,152(s1)
    800076b4:	00070c9b          	sext.w	s9,a4
    800076b8:	0b370663          	beq	a4,s3,80007764 <consoleread+0x130>
    800076bc:	00100693          	li	a3,1
    800076c0:	f9f40613          	addi	a2,s0,-97
    800076c4:	000c0593          	mv	a1,s8
    800076c8:	00090513          	mv	a0,s2
    800076cc:	f8e40fa3          	sb	a4,-97(s0)
    800076d0:	00000097          	auipc	ra,0x0
    800076d4:	8b8080e7          	jalr	-1864(ra) # 80006f88 <either_copyout>
    800076d8:	01450863          	beq	a0,s4,800076e8 <consoleread+0xb4>
    800076dc:	001c0c13          	addi	s8,s8,1
    800076e0:	fffb8b9b          	addiw	s7,s7,-1
    800076e4:	fb5c94e3          	bne	s9,s5,8000768c <consoleread+0x58>
    800076e8:	000b851b          	sext.w	a0,s7
    800076ec:	06813083          	ld	ra,104(sp)
    800076f0:	06013403          	ld	s0,96(sp)
    800076f4:	05813483          	ld	s1,88(sp)
    800076f8:	05013903          	ld	s2,80(sp)
    800076fc:	04813983          	ld	s3,72(sp)
    80007700:	04013a03          	ld	s4,64(sp)
    80007704:	03813a83          	ld	s5,56(sp)
    80007708:	02813b83          	ld	s7,40(sp)
    8000770c:	02013c03          	ld	s8,32(sp)
    80007710:	01813c83          	ld	s9,24(sp)
    80007714:	40ab053b          	subw	a0,s6,a0
    80007718:	03013b03          	ld	s6,48(sp)
    8000771c:	07010113          	addi	sp,sp,112
    80007720:	00008067          	ret
    80007724:	00001097          	auipc	ra,0x1
    80007728:	1d8080e7          	jalr	472(ra) # 800088fc <push_on>
    8000772c:	0984a703          	lw	a4,152(s1)
    80007730:	09c4a783          	lw	a5,156(s1)
    80007734:	0007879b          	sext.w	a5,a5
    80007738:	fef70ce3          	beq	a4,a5,80007730 <consoleread+0xfc>
    8000773c:	00001097          	auipc	ra,0x1
    80007740:	234080e7          	jalr	564(ra) # 80008970 <pop_on>
    80007744:	0984a783          	lw	a5,152(s1)
    80007748:	07f7f713          	andi	a4,a5,127
    8000774c:	00e48733          	add	a4,s1,a4
    80007750:	01874703          	lbu	a4,24(a4)
    80007754:	0017869b          	addiw	a3,a5,1
    80007758:	08d4ac23          	sw	a3,152(s1)
    8000775c:	00070c9b          	sext.w	s9,a4
    80007760:	f5371ee3          	bne	a4,s3,800076bc <consoleread+0x88>
    80007764:	000b851b          	sext.w	a0,s7
    80007768:	f96bf2e3          	bgeu	s7,s6,800076ec <consoleread+0xb8>
    8000776c:	08f4ac23          	sw	a5,152(s1)
    80007770:	f7dff06f          	j	800076ec <consoleread+0xb8>

0000000080007774 <consputc>:
    80007774:	10000793          	li	a5,256
    80007778:	00f50663          	beq	a0,a5,80007784 <consputc+0x10>
    8000777c:	00001317          	auipc	t1,0x1
    80007780:	9f430067          	jr	-1548(t1) # 80008170 <uartputc_sync>
    80007784:	ff010113          	addi	sp,sp,-16
    80007788:	00113423          	sd	ra,8(sp)
    8000778c:	00813023          	sd	s0,0(sp)
    80007790:	01010413          	addi	s0,sp,16
    80007794:	00800513          	li	a0,8
    80007798:	00001097          	auipc	ra,0x1
    8000779c:	9d8080e7          	jalr	-1576(ra) # 80008170 <uartputc_sync>
    800077a0:	02000513          	li	a0,32
    800077a4:	00001097          	auipc	ra,0x1
    800077a8:	9cc080e7          	jalr	-1588(ra) # 80008170 <uartputc_sync>
    800077ac:	00013403          	ld	s0,0(sp)
    800077b0:	00813083          	ld	ra,8(sp)
    800077b4:	00800513          	li	a0,8
    800077b8:	01010113          	addi	sp,sp,16
    800077bc:	00001317          	auipc	t1,0x1
    800077c0:	9b430067          	jr	-1612(t1) # 80008170 <uartputc_sync>

00000000800077c4 <consoleintr>:
    800077c4:	fe010113          	addi	sp,sp,-32
    800077c8:	00813823          	sd	s0,16(sp)
    800077cc:	00913423          	sd	s1,8(sp)
    800077d0:	01213023          	sd	s2,0(sp)
    800077d4:	00113c23          	sd	ra,24(sp)
    800077d8:	02010413          	addi	s0,sp,32
    800077dc:	00005917          	auipc	s2,0x5
    800077e0:	79c90913          	addi	s2,s2,1948 # 8000cf78 <cons>
    800077e4:	00050493          	mv	s1,a0
    800077e8:	00090513          	mv	a0,s2
    800077ec:	00001097          	auipc	ra,0x1
    800077f0:	e40080e7          	jalr	-448(ra) # 8000862c <acquire>
    800077f4:	02048c63          	beqz	s1,8000782c <consoleintr+0x68>
    800077f8:	0a092783          	lw	a5,160(s2)
    800077fc:	09892703          	lw	a4,152(s2)
    80007800:	07f00693          	li	a3,127
    80007804:	40e7873b          	subw	a4,a5,a4
    80007808:	02e6e263          	bltu	a3,a4,8000782c <consoleintr+0x68>
    8000780c:	00d00713          	li	a4,13
    80007810:	04e48063          	beq	s1,a4,80007850 <consoleintr+0x8c>
    80007814:	07f7f713          	andi	a4,a5,127
    80007818:	00e90733          	add	a4,s2,a4
    8000781c:	0017879b          	addiw	a5,a5,1
    80007820:	0af92023          	sw	a5,160(s2)
    80007824:	00970c23          	sb	s1,24(a4)
    80007828:	08f92e23          	sw	a5,156(s2)
    8000782c:	01013403          	ld	s0,16(sp)
    80007830:	01813083          	ld	ra,24(sp)
    80007834:	00813483          	ld	s1,8(sp)
    80007838:	00013903          	ld	s2,0(sp)
    8000783c:	00005517          	auipc	a0,0x5
    80007840:	73c50513          	addi	a0,a0,1852 # 8000cf78 <cons>
    80007844:	02010113          	addi	sp,sp,32
    80007848:	00001317          	auipc	t1,0x1
    8000784c:	eb030067          	jr	-336(t1) # 800086f8 <release>
    80007850:	00a00493          	li	s1,10
    80007854:	fc1ff06f          	j	80007814 <consoleintr+0x50>

0000000080007858 <consoleinit>:
    80007858:	fe010113          	addi	sp,sp,-32
    8000785c:	00113c23          	sd	ra,24(sp)
    80007860:	00813823          	sd	s0,16(sp)
    80007864:	00913423          	sd	s1,8(sp)
    80007868:	02010413          	addi	s0,sp,32
    8000786c:	00005497          	auipc	s1,0x5
    80007870:	70c48493          	addi	s1,s1,1804 # 8000cf78 <cons>
    80007874:	00048513          	mv	a0,s1
    80007878:	00002597          	auipc	a1,0x2
    8000787c:	ed858593          	addi	a1,a1,-296 # 80009750 <CONSOLE_STATUS+0x740>
    80007880:	00001097          	auipc	ra,0x1
    80007884:	d88080e7          	jalr	-632(ra) # 80008608 <initlock>
    80007888:	00000097          	auipc	ra,0x0
    8000788c:	7ac080e7          	jalr	1964(ra) # 80008034 <uartinit>
    80007890:	01813083          	ld	ra,24(sp)
    80007894:	01013403          	ld	s0,16(sp)
    80007898:	00000797          	auipc	a5,0x0
    8000789c:	d9c78793          	addi	a5,a5,-612 # 80007634 <consoleread>
    800078a0:	0af4bc23          	sd	a5,184(s1)
    800078a4:	00000797          	auipc	a5,0x0
    800078a8:	cec78793          	addi	a5,a5,-788 # 80007590 <consolewrite>
    800078ac:	0cf4b023          	sd	a5,192(s1)
    800078b0:	00813483          	ld	s1,8(sp)
    800078b4:	02010113          	addi	sp,sp,32
    800078b8:	00008067          	ret

00000000800078bc <console_read>:
    800078bc:	ff010113          	addi	sp,sp,-16
    800078c0:	00813423          	sd	s0,8(sp)
    800078c4:	01010413          	addi	s0,sp,16
    800078c8:	00813403          	ld	s0,8(sp)
    800078cc:	00005317          	auipc	t1,0x5
    800078d0:	76433303          	ld	t1,1892(t1) # 8000d030 <devsw+0x10>
    800078d4:	01010113          	addi	sp,sp,16
    800078d8:	00030067          	jr	t1

00000000800078dc <console_write>:
    800078dc:	ff010113          	addi	sp,sp,-16
    800078e0:	00813423          	sd	s0,8(sp)
    800078e4:	01010413          	addi	s0,sp,16
    800078e8:	00813403          	ld	s0,8(sp)
    800078ec:	00005317          	auipc	t1,0x5
    800078f0:	74c33303          	ld	t1,1868(t1) # 8000d038 <devsw+0x18>
    800078f4:	01010113          	addi	sp,sp,16
    800078f8:	00030067          	jr	t1

00000000800078fc <panic>:
    800078fc:	fe010113          	addi	sp,sp,-32
    80007900:	00113c23          	sd	ra,24(sp)
    80007904:	00813823          	sd	s0,16(sp)
    80007908:	00913423          	sd	s1,8(sp)
    8000790c:	02010413          	addi	s0,sp,32
    80007910:	00050493          	mv	s1,a0
    80007914:	00002517          	auipc	a0,0x2
    80007918:	e4450513          	addi	a0,a0,-444 # 80009758 <CONSOLE_STATUS+0x748>
    8000791c:	00005797          	auipc	a5,0x5
    80007920:	7a07ae23          	sw	zero,1980(a5) # 8000d0d8 <pr+0x18>
    80007924:	00000097          	auipc	ra,0x0
    80007928:	034080e7          	jalr	52(ra) # 80007958 <__printf>
    8000792c:	00048513          	mv	a0,s1
    80007930:	00000097          	auipc	ra,0x0
    80007934:	028080e7          	jalr	40(ra) # 80007958 <__printf>
    80007938:	00002517          	auipc	a0,0x2
    8000793c:	ba850513          	addi	a0,a0,-1112 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80007940:	00000097          	auipc	ra,0x0
    80007944:	018080e7          	jalr	24(ra) # 80007958 <__printf>
    80007948:	00100793          	li	a5,1
    8000794c:	00004717          	auipc	a4,0x4
    80007950:	40f72e23          	sw	a5,1052(a4) # 8000bd68 <panicked>
    80007954:	0000006f          	j	80007954 <panic+0x58>

0000000080007958 <__printf>:
    80007958:	f3010113          	addi	sp,sp,-208
    8000795c:	08813023          	sd	s0,128(sp)
    80007960:	07313423          	sd	s3,104(sp)
    80007964:	09010413          	addi	s0,sp,144
    80007968:	05813023          	sd	s8,64(sp)
    8000796c:	08113423          	sd	ra,136(sp)
    80007970:	06913c23          	sd	s1,120(sp)
    80007974:	07213823          	sd	s2,112(sp)
    80007978:	07413023          	sd	s4,96(sp)
    8000797c:	05513c23          	sd	s5,88(sp)
    80007980:	05613823          	sd	s6,80(sp)
    80007984:	05713423          	sd	s7,72(sp)
    80007988:	03913c23          	sd	s9,56(sp)
    8000798c:	03a13823          	sd	s10,48(sp)
    80007990:	03b13423          	sd	s11,40(sp)
    80007994:	00005317          	auipc	t1,0x5
    80007998:	72c30313          	addi	t1,t1,1836 # 8000d0c0 <pr>
    8000799c:	01832c03          	lw	s8,24(t1)
    800079a0:	00b43423          	sd	a1,8(s0)
    800079a4:	00c43823          	sd	a2,16(s0)
    800079a8:	00d43c23          	sd	a3,24(s0)
    800079ac:	02e43023          	sd	a4,32(s0)
    800079b0:	02f43423          	sd	a5,40(s0)
    800079b4:	03043823          	sd	a6,48(s0)
    800079b8:	03143c23          	sd	a7,56(s0)
    800079bc:	00050993          	mv	s3,a0
    800079c0:	4a0c1663          	bnez	s8,80007e6c <__printf+0x514>
    800079c4:	60098c63          	beqz	s3,80007fdc <__printf+0x684>
    800079c8:	0009c503          	lbu	a0,0(s3)
    800079cc:	00840793          	addi	a5,s0,8
    800079d0:	f6f43c23          	sd	a5,-136(s0)
    800079d4:	00000493          	li	s1,0
    800079d8:	22050063          	beqz	a0,80007bf8 <__printf+0x2a0>
    800079dc:	00002a37          	lui	s4,0x2
    800079e0:	00018ab7          	lui	s5,0x18
    800079e4:	000f4b37          	lui	s6,0xf4
    800079e8:	00989bb7          	lui	s7,0x989
    800079ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800079f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800079f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800079f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800079fc:	00148c9b          	addiw	s9,s1,1
    80007a00:	02500793          	li	a5,37
    80007a04:	01998933          	add	s2,s3,s9
    80007a08:	38f51263          	bne	a0,a5,80007d8c <__printf+0x434>
    80007a0c:	00094783          	lbu	a5,0(s2)
    80007a10:	00078c9b          	sext.w	s9,a5
    80007a14:	1e078263          	beqz	a5,80007bf8 <__printf+0x2a0>
    80007a18:	0024849b          	addiw	s1,s1,2
    80007a1c:	07000713          	li	a4,112
    80007a20:	00998933          	add	s2,s3,s1
    80007a24:	38e78a63          	beq	a5,a4,80007db8 <__printf+0x460>
    80007a28:	20f76863          	bltu	a4,a5,80007c38 <__printf+0x2e0>
    80007a2c:	42a78863          	beq	a5,a0,80007e5c <__printf+0x504>
    80007a30:	06400713          	li	a4,100
    80007a34:	40e79663          	bne	a5,a4,80007e40 <__printf+0x4e8>
    80007a38:	f7843783          	ld	a5,-136(s0)
    80007a3c:	0007a603          	lw	a2,0(a5)
    80007a40:	00878793          	addi	a5,a5,8
    80007a44:	f6f43c23          	sd	a5,-136(s0)
    80007a48:	42064a63          	bltz	a2,80007e7c <__printf+0x524>
    80007a4c:	00a00713          	li	a4,10
    80007a50:	02e677bb          	remuw	a5,a2,a4
    80007a54:	00002d97          	auipc	s11,0x2
    80007a58:	d2cd8d93          	addi	s11,s11,-724 # 80009780 <digits>
    80007a5c:	00900593          	li	a1,9
    80007a60:	0006051b          	sext.w	a0,a2
    80007a64:	00000c93          	li	s9,0
    80007a68:	02079793          	slli	a5,a5,0x20
    80007a6c:	0207d793          	srli	a5,a5,0x20
    80007a70:	00fd87b3          	add	a5,s11,a5
    80007a74:	0007c783          	lbu	a5,0(a5)
    80007a78:	02e656bb          	divuw	a3,a2,a4
    80007a7c:	f8f40023          	sb	a5,-128(s0)
    80007a80:	14c5d863          	bge	a1,a2,80007bd0 <__printf+0x278>
    80007a84:	06300593          	li	a1,99
    80007a88:	00100c93          	li	s9,1
    80007a8c:	02e6f7bb          	remuw	a5,a3,a4
    80007a90:	02079793          	slli	a5,a5,0x20
    80007a94:	0207d793          	srli	a5,a5,0x20
    80007a98:	00fd87b3          	add	a5,s11,a5
    80007a9c:	0007c783          	lbu	a5,0(a5)
    80007aa0:	02e6d73b          	divuw	a4,a3,a4
    80007aa4:	f8f400a3          	sb	a5,-127(s0)
    80007aa8:	12a5f463          	bgeu	a1,a0,80007bd0 <__printf+0x278>
    80007aac:	00a00693          	li	a3,10
    80007ab0:	00900593          	li	a1,9
    80007ab4:	02d777bb          	remuw	a5,a4,a3
    80007ab8:	02079793          	slli	a5,a5,0x20
    80007abc:	0207d793          	srli	a5,a5,0x20
    80007ac0:	00fd87b3          	add	a5,s11,a5
    80007ac4:	0007c503          	lbu	a0,0(a5)
    80007ac8:	02d757bb          	divuw	a5,a4,a3
    80007acc:	f8a40123          	sb	a0,-126(s0)
    80007ad0:	48e5f263          	bgeu	a1,a4,80007f54 <__printf+0x5fc>
    80007ad4:	06300513          	li	a0,99
    80007ad8:	02d7f5bb          	remuw	a1,a5,a3
    80007adc:	02059593          	slli	a1,a1,0x20
    80007ae0:	0205d593          	srli	a1,a1,0x20
    80007ae4:	00bd85b3          	add	a1,s11,a1
    80007ae8:	0005c583          	lbu	a1,0(a1)
    80007aec:	02d7d7bb          	divuw	a5,a5,a3
    80007af0:	f8b401a3          	sb	a1,-125(s0)
    80007af4:	48e57263          	bgeu	a0,a4,80007f78 <__printf+0x620>
    80007af8:	3e700513          	li	a0,999
    80007afc:	02d7f5bb          	remuw	a1,a5,a3
    80007b00:	02059593          	slli	a1,a1,0x20
    80007b04:	0205d593          	srli	a1,a1,0x20
    80007b08:	00bd85b3          	add	a1,s11,a1
    80007b0c:	0005c583          	lbu	a1,0(a1)
    80007b10:	02d7d7bb          	divuw	a5,a5,a3
    80007b14:	f8b40223          	sb	a1,-124(s0)
    80007b18:	46e57663          	bgeu	a0,a4,80007f84 <__printf+0x62c>
    80007b1c:	02d7f5bb          	remuw	a1,a5,a3
    80007b20:	02059593          	slli	a1,a1,0x20
    80007b24:	0205d593          	srli	a1,a1,0x20
    80007b28:	00bd85b3          	add	a1,s11,a1
    80007b2c:	0005c583          	lbu	a1,0(a1)
    80007b30:	02d7d7bb          	divuw	a5,a5,a3
    80007b34:	f8b402a3          	sb	a1,-123(s0)
    80007b38:	46ea7863          	bgeu	s4,a4,80007fa8 <__printf+0x650>
    80007b3c:	02d7f5bb          	remuw	a1,a5,a3
    80007b40:	02059593          	slli	a1,a1,0x20
    80007b44:	0205d593          	srli	a1,a1,0x20
    80007b48:	00bd85b3          	add	a1,s11,a1
    80007b4c:	0005c583          	lbu	a1,0(a1)
    80007b50:	02d7d7bb          	divuw	a5,a5,a3
    80007b54:	f8b40323          	sb	a1,-122(s0)
    80007b58:	3eeaf863          	bgeu	s5,a4,80007f48 <__printf+0x5f0>
    80007b5c:	02d7f5bb          	remuw	a1,a5,a3
    80007b60:	02059593          	slli	a1,a1,0x20
    80007b64:	0205d593          	srli	a1,a1,0x20
    80007b68:	00bd85b3          	add	a1,s11,a1
    80007b6c:	0005c583          	lbu	a1,0(a1)
    80007b70:	02d7d7bb          	divuw	a5,a5,a3
    80007b74:	f8b403a3          	sb	a1,-121(s0)
    80007b78:	42eb7e63          	bgeu	s6,a4,80007fb4 <__printf+0x65c>
    80007b7c:	02d7f5bb          	remuw	a1,a5,a3
    80007b80:	02059593          	slli	a1,a1,0x20
    80007b84:	0205d593          	srli	a1,a1,0x20
    80007b88:	00bd85b3          	add	a1,s11,a1
    80007b8c:	0005c583          	lbu	a1,0(a1)
    80007b90:	02d7d7bb          	divuw	a5,a5,a3
    80007b94:	f8b40423          	sb	a1,-120(s0)
    80007b98:	42ebfc63          	bgeu	s7,a4,80007fd0 <__printf+0x678>
    80007b9c:	02079793          	slli	a5,a5,0x20
    80007ba0:	0207d793          	srli	a5,a5,0x20
    80007ba4:	00fd8db3          	add	s11,s11,a5
    80007ba8:	000dc703          	lbu	a4,0(s11)
    80007bac:	00a00793          	li	a5,10
    80007bb0:	00900c93          	li	s9,9
    80007bb4:	f8e404a3          	sb	a4,-119(s0)
    80007bb8:	00065c63          	bgez	a2,80007bd0 <__printf+0x278>
    80007bbc:	f9040713          	addi	a4,s0,-112
    80007bc0:	00f70733          	add	a4,a4,a5
    80007bc4:	02d00693          	li	a3,45
    80007bc8:	fed70823          	sb	a3,-16(a4)
    80007bcc:	00078c93          	mv	s9,a5
    80007bd0:	f8040793          	addi	a5,s0,-128
    80007bd4:	01978cb3          	add	s9,a5,s9
    80007bd8:	f7f40d13          	addi	s10,s0,-129
    80007bdc:	000cc503          	lbu	a0,0(s9)
    80007be0:	fffc8c93          	addi	s9,s9,-1
    80007be4:	00000097          	auipc	ra,0x0
    80007be8:	b90080e7          	jalr	-1136(ra) # 80007774 <consputc>
    80007bec:	ffac98e3          	bne	s9,s10,80007bdc <__printf+0x284>
    80007bf0:	00094503          	lbu	a0,0(s2)
    80007bf4:	e00514e3          	bnez	a0,800079fc <__printf+0xa4>
    80007bf8:	1a0c1663          	bnez	s8,80007da4 <__printf+0x44c>
    80007bfc:	08813083          	ld	ra,136(sp)
    80007c00:	08013403          	ld	s0,128(sp)
    80007c04:	07813483          	ld	s1,120(sp)
    80007c08:	07013903          	ld	s2,112(sp)
    80007c0c:	06813983          	ld	s3,104(sp)
    80007c10:	06013a03          	ld	s4,96(sp)
    80007c14:	05813a83          	ld	s5,88(sp)
    80007c18:	05013b03          	ld	s6,80(sp)
    80007c1c:	04813b83          	ld	s7,72(sp)
    80007c20:	04013c03          	ld	s8,64(sp)
    80007c24:	03813c83          	ld	s9,56(sp)
    80007c28:	03013d03          	ld	s10,48(sp)
    80007c2c:	02813d83          	ld	s11,40(sp)
    80007c30:	0d010113          	addi	sp,sp,208
    80007c34:	00008067          	ret
    80007c38:	07300713          	li	a4,115
    80007c3c:	1ce78a63          	beq	a5,a4,80007e10 <__printf+0x4b8>
    80007c40:	07800713          	li	a4,120
    80007c44:	1ee79e63          	bne	a5,a4,80007e40 <__printf+0x4e8>
    80007c48:	f7843783          	ld	a5,-136(s0)
    80007c4c:	0007a703          	lw	a4,0(a5)
    80007c50:	00878793          	addi	a5,a5,8
    80007c54:	f6f43c23          	sd	a5,-136(s0)
    80007c58:	28074263          	bltz	a4,80007edc <__printf+0x584>
    80007c5c:	00002d97          	auipc	s11,0x2
    80007c60:	b24d8d93          	addi	s11,s11,-1244 # 80009780 <digits>
    80007c64:	00f77793          	andi	a5,a4,15
    80007c68:	00fd87b3          	add	a5,s11,a5
    80007c6c:	0007c683          	lbu	a3,0(a5)
    80007c70:	00f00613          	li	a2,15
    80007c74:	0007079b          	sext.w	a5,a4
    80007c78:	f8d40023          	sb	a3,-128(s0)
    80007c7c:	0047559b          	srliw	a1,a4,0x4
    80007c80:	0047569b          	srliw	a3,a4,0x4
    80007c84:	00000c93          	li	s9,0
    80007c88:	0ee65063          	bge	a2,a4,80007d68 <__printf+0x410>
    80007c8c:	00f6f693          	andi	a3,a3,15
    80007c90:	00dd86b3          	add	a3,s11,a3
    80007c94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c98:	0087d79b          	srliw	a5,a5,0x8
    80007c9c:	00100c93          	li	s9,1
    80007ca0:	f8d400a3          	sb	a3,-127(s0)
    80007ca4:	0cb67263          	bgeu	a2,a1,80007d68 <__printf+0x410>
    80007ca8:	00f7f693          	andi	a3,a5,15
    80007cac:	00dd86b3          	add	a3,s11,a3
    80007cb0:	0006c583          	lbu	a1,0(a3)
    80007cb4:	00f00613          	li	a2,15
    80007cb8:	0047d69b          	srliw	a3,a5,0x4
    80007cbc:	f8b40123          	sb	a1,-126(s0)
    80007cc0:	0047d593          	srli	a1,a5,0x4
    80007cc4:	28f67e63          	bgeu	a2,a5,80007f60 <__printf+0x608>
    80007cc8:	00f6f693          	andi	a3,a3,15
    80007ccc:	00dd86b3          	add	a3,s11,a3
    80007cd0:	0006c503          	lbu	a0,0(a3)
    80007cd4:	0087d813          	srli	a6,a5,0x8
    80007cd8:	0087d69b          	srliw	a3,a5,0x8
    80007cdc:	f8a401a3          	sb	a0,-125(s0)
    80007ce0:	28b67663          	bgeu	a2,a1,80007f6c <__printf+0x614>
    80007ce4:	00f6f693          	andi	a3,a3,15
    80007ce8:	00dd86b3          	add	a3,s11,a3
    80007cec:	0006c583          	lbu	a1,0(a3)
    80007cf0:	00c7d513          	srli	a0,a5,0xc
    80007cf4:	00c7d69b          	srliw	a3,a5,0xc
    80007cf8:	f8b40223          	sb	a1,-124(s0)
    80007cfc:	29067a63          	bgeu	a2,a6,80007f90 <__printf+0x638>
    80007d00:	00f6f693          	andi	a3,a3,15
    80007d04:	00dd86b3          	add	a3,s11,a3
    80007d08:	0006c583          	lbu	a1,0(a3)
    80007d0c:	0107d813          	srli	a6,a5,0x10
    80007d10:	0107d69b          	srliw	a3,a5,0x10
    80007d14:	f8b402a3          	sb	a1,-123(s0)
    80007d18:	28a67263          	bgeu	a2,a0,80007f9c <__printf+0x644>
    80007d1c:	00f6f693          	andi	a3,a3,15
    80007d20:	00dd86b3          	add	a3,s11,a3
    80007d24:	0006c683          	lbu	a3,0(a3)
    80007d28:	0147d79b          	srliw	a5,a5,0x14
    80007d2c:	f8d40323          	sb	a3,-122(s0)
    80007d30:	21067663          	bgeu	a2,a6,80007f3c <__printf+0x5e4>
    80007d34:	02079793          	slli	a5,a5,0x20
    80007d38:	0207d793          	srli	a5,a5,0x20
    80007d3c:	00fd8db3          	add	s11,s11,a5
    80007d40:	000dc683          	lbu	a3,0(s11)
    80007d44:	00800793          	li	a5,8
    80007d48:	00700c93          	li	s9,7
    80007d4c:	f8d403a3          	sb	a3,-121(s0)
    80007d50:	00075c63          	bgez	a4,80007d68 <__printf+0x410>
    80007d54:	f9040713          	addi	a4,s0,-112
    80007d58:	00f70733          	add	a4,a4,a5
    80007d5c:	02d00693          	li	a3,45
    80007d60:	fed70823          	sb	a3,-16(a4)
    80007d64:	00078c93          	mv	s9,a5
    80007d68:	f8040793          	addi	a5,s0,-128
    80007d6c:	01978cb3          	add	s9,a5,s9
    80007d70:	f7f40d13          	addi	s10,s0,-129
    80007d74:	000cc503          	lbu	a0,0(s9)
    80007d78:	fffc8c93          	addi	s9,s9,-1
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	9f8080e7          	jalr	-1544(ra) # 80007774 <consputc>
    80007d84:	ff9d18e3          	bne	s10,s9,80007d74 <__printf+0x41c>
    80007d88:	0100006f          	j	80007d98 <__printf+0x440>
    80007d8c:	00000097          	auipc	ra,0x0
    80007d90:	9e8080e7          	jalr	-1560(ra) # 80007774 <consputc>
    80007d94:	000c8493          	mv	s1,s9
    80007d98:	00094503          	lbu	a0,0(s2)
    80007d9c:	c60510e3          	bnez	a0,800079fc <__printf+0xa4>
    80007da0:	e40c0ee3          	beqz	s8,80007bfc <__printf+0x2a4>
    80007da4:	00005517          	auipc	a0,0x5
    80007da8:	31c50513          	addi	a0,a0,796 # 8000d0c0 <pr>
    80007dac:	00001097          	auipc	ra,0x1
    80007db0:	94c080e7          	jalr	-1716(ra) # 800086f8 <release>
    80007db4:	e49ff06f          	j	80007bfc <__printf+0x2a4>
    80007db8:	f7843783          	ld	a5,-136(s0)
    80007dbc:	03000513          	li	a0,48
    80007dc0:	01000d13          	li	s10,16
    80007dc4:	00878713          	addi	a4,a5,8
    80007dc8:	0007bc83          	ld	s9,0(a5)
    80007dcc:	f6e43c23          	sd	a4,-136(s0)
    80007dd0:	00000097          	auipc	ra,0x0
    80007dd4:	9a4080e7          	jalr	-1628(ra) # 80007774 <consputc>
    80007dd8:	07800513          	li	a0,120
    80007ddc:	00000097          	auipc	ra,0x0
    80007de0:	998080e7          	jalr	-1640(ra) # 80007774 <consputc>
    80007de4:	00002d97          	auipc	s11,0x2
    80007de8:	99cd8d93          	addi	s11,s11,-1636 # 80009780 <digits>
    80007dec:	03ccd793          	srli	a5,s9,0x3c
    80007df0:	00fd87b3          	add	a5,s11,a5
    80007df4:	0007c503          	lbu	a0,0(a5)
    80007df8:	fffd0d1b          	addiw	s10,s10,-1
    80007dfc:	004c9c93          	slli	s9,s9,0x4
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	974080e7          	jalr	-1676(ra) # 80007774 <consputc>
    80007e08:	fe0d12e3          	bnez	s10,80007dec <__printf+0x494>
    80007e0c:	f8dff06f          	j	80007d98 <__printf+0x440>
    80007e10:	f7843783          	ld	a5,-136(s0)
    80007e14:	0007bc83          	ld	s9,0(a5)
    80007e18:	00878793          	addi	a5,a5,8
    80007e1c:	f6f43c23          	sd	a5,-136(s0)
    80007e20:	000c9a63          	bnez	s9,80007e34 <__printf+0x4dc>
    80007e24:	1080006f          	j	80007f2c <__printf+0x5d4>
    80007e28:	001c8c93          	addi	s9,s9,1
    80007e2c:	00000097          	auipc	ra,0x0
    80007e30:	948080e7          	jalr	-1720(ra) # 80007774 <consputc>
    80007e34:	000cc503          	lbu	a0,0(s9)
    80007e38:	fe0518e3          	bnez	a0,80007e28 <__printf+0x4d0>
    80007e3c:	f5dff06f          	j	80007d98 <__printf+0x440>
    80007e40:	02500513          	li	a0,37
    80007e44:	00000097          	auipc	ra,0x0
    80007e48:	930080e7          	jalr	-1744(ra) # 80007774 <consputc>
    80007e4c:	000c8513          	mv	a0,s9
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	924080e7          	jalr	-1756(ra) # 80007774 <consputc>
    80007e58:	f41ff06f          	j	80007d98 <__printf+0x440>
    80007e5c:	02500513          	li	a0,37
    80007e60:	00000097          	auipc	ra,0x0
    80007e64:	914080e7          	jalr	-1772(ra) # 80007774 <consputc>
    80007e68:	f31ff06f          	j	80007d98 <__printf+0x440>
    80007e6c:	00030513          	mv	a0,t1
    80007e70:	00000097          	auipc	ra,0x0
    80007e74:	7bc080e7          	jalr	1980(ra) # 8000862c <acquire>
    80007e78:	b4dff06f          	j	800079c4 <__printf+0x6c>
    80007e7c:	40c0053b          	negw	a0,a2
    80007e80:	00a00713          	li	a4,10
    80007e84:	02e576bb          	remuw	a3,a0,a4
    80007e88:	00002d97          	auipc	s11,0x2
    80007e8c:	8f8d8d93          	addi	s11,s11,-1800 # 80009780 <digits>
    80007e90:	ff700593          	li	a1,-9
    80007e94:	02069693          	slli	a3,a3,0x20
    80007e98:	0206d693          	srli	a3,a3,0x20
    80007e9c:	00dd86b3          	add	a3,s11,a3
    80007ea0:	0006c683          	lbu	a3,0(a3)
    80007ea4:	02e557bb          	divuw	a5,a0,a4
    80007ea8:	f8d40023          	sb	a3,-128(s0)
    80007eac:	10b65e63          	bge	a2,a1,80007fc8 <__printf+0x670>
    80007eb0:	06300593          	li	a1,99
    80007eb4:	02e7f6bb          	remuw	a3,a5,a4
    80007eb8:	02069693          	slli	a3,a3,0x20
    80007ebc:	0206d693          	srli	a3,a3,0x20
    80007ec0:	00dd86b3          	add	a3,s11,a3
    80007ec4:	0006c683          	lbu	a3,0(a3)
    80007ec8:	02e7d73b          	divuw	a4,a5,a4
    80007ecc:	00200793          	li	a5,2
    80007ed0:	f8d400a3          	sb	a3,-127(s0)
    80007ed4:	bca5ece3          	bltu	a1,a0,80007aac <__printf+0x154>
    80007ed8:	ce5ff06f          	j	80007bbc <__printf+0x264>
    80007edc:	40e007bb          	negw	a5,a4
    80007ee0:	00002d97          	auipc	s11,0x2
    80007ee4:	8a0d8d93          	addi	s11,s11,-1888 # 80009780 <digits>
    80007ee8:	00f7f693          	andi	a3,a5,15
    80007eec:	00dd86b3          	add	a3,s11,a3
    80007ef0:	0006c583          	lbu	a1,0(a3)
    80007ef4:	ff100613          	li	a2,-15
    80007ef8:	0047d69b          	srliw	a3,a5,0x4
    80007efc:	f8b40023          	sb	a1,-128(s0)
    80007f00:	0047d59b          	srliw	a1,a5,0x4
    80007f04:	0ac75e63          	bge	a4,a2,80007fc0 <__printf+0x668>
    80007f08:	00f6f693          	andi	a3,a3,15
    80007f0c:	00dd86b3          	add	a3,s11,a3
    80007f10:	0006c603          	lbu	a2,0(a3)
    80007f14:	00f00693          	li	a3,15
    80007f18:	0087d79b          	srliw	a5,a5,0x8
    80007f1c:	f8c400a3          	sb	a2,-127(s0)
    80007f20:	d8b6e4e3          	bltu	a3,a1,80007ca8 <__printf+0x350>
    80007f24:	00200793          	li	a5,2
    80007f28:	e2dff06f          	j	80007d54 <__printf+0x3fc>
    80007f2c:	00002c97          	auipc	s9,0x2
    80007f30:	834c8c93          	addi	s9,s9,-1996 # 80009760 <CONSOLE_STATUS+0x750>
    80007f34:	02800513          	li	a0,40
    80007f38:	ef1ff06f          	j	80007e28 <__printf+0x4d0>
    80007f3c:	00700793          	li	a5,7
    80007f40:	00600c93          	li	s9,6
    80007f44:	e0dff06f          	j	80007d50 <__printf+0x3f8>
    80007f48:	00700793          	li	a5,7
    80007f4c:	00600c93          	li	s9,6
    80007f50:	c69ff06f          	j	80007bb8 <__printf+0x260>
    80007f54:	00300793          	li	a5,3
    80007f58:	00200c93          	li	s9,2
    80007f5c:	c5dff06f          	j	80007bb8 <__printf+0x260>
    80007f60:	00300793          	li	a5,3
    80007f64:	00200c93          	li	s9,2
    80007f68:	de9ff06f          	j	80007d50 <__printf+0x3f8>
    80007f6c:	00400793          	li	a5,4
    80007f70:	00300c93          	li	s9,3
    80007f74:	dddff06f          	j	80007d50 <__printf+0x3f8>
    80007f78:	00400793          	li	a5,4
    80007f7c:	00300c93          	li	s9,3
    80007f80:	c39ff06f          	j	80007bb8 <__printf+0x260>
    80007f84:	00500793          	li	a5,5
    80007f88:	00400c93          	li	s9,4
    80007f8c:	c2dff06f          	j	80007bb8 <__printf+0x260>
    80007f90:	00500793          	li	a5,5
    80007f94:	00400c93          	li	s9,4
    80007f98:	db9ff06f          	j	80007d50 <__printf+0x3f8>
    80007f9c:	00600793          	li	a5,6
    80007fa0:	00500c93          	li	s9,5
    80007fa4:	dadff06f          	j	80007d50 <__printf+0x3f8>
    80007fa8:	00600793          	li	a5,6
    80007fac:	00500c93          	li	s9,5
    80007fb0:	c09ff06f          	j	80007bb8 <__printf+0x260>
    80007fb4:	00800793          	li	a5,8
    80007fb8:	00700c93          	li	s9,7
    80007fbc:	bfdff06f          	j	80007bb8 <__printf+0x260>
    80007fc0:	00100793          	li	a5,1
    80007fc4:	d91ff06f          	j	80007d54 <__printf+0x3fc>
    80007fc8:	00100793          	li	a5,1
    80007fcc:	bf1ff06f          	j	80007bbc <__printf+0x264>
    80007fd0:	00900793          	li	a5,9
    80007fd4:	00800c93          	li	s9,8
    80007fd8:	be1ff06f          	j	80007bb8 <__printf+0x260>
    80007fdc:	00001517          	auipc	a0,0x1
    80007fe0:	78c50513          	addi	a0,a0,1932 # 80009768 <CONSOLE_STATUS+0x758>
    80007fe4:	00000097          	auipc	ra,0x0
    80007fe8:	918080e7          	jalr	-1768(ra) # 800078fc <panic>

0000000080007fec <printfinit>:
    80007fec:	fe010113          	addi	sp,sp,-32
    80007ff0:	00813823          	sd	s0,16(sp)
    80007ff4:	00913423          	sd	s1,8(sp)
    80007ff8:	00113c23          	sd	ra,24(sp)
    80007ffc:	02010413          	addi	s0,sp,32
    80008000:	00005497          	auipc	s1,0x5
    80008004:	0c048493          	addi	s1,s1,192 # 8000d0c0 <pr>
    80008008:	00048513          	mv	a0,s1
    8000800c:	00001597          	auipc	a1,0x1
    80008010:	76c58593          	addi	a1,a1,1900 # 80009778 <CONSOLE_STATUS+0x768>
    80008014:	00000097          	auipc	ra,0x0
    80008018:	5f4080e7          	jalr	1524(ra) # 80008608 <initlock>
    8000801c:	01813083          	ld	ra,24(sp)
    80008020:	01013403          	ld	s0,16(sp)
    80008024:	0004ac23          	sw	zero,24(s1)
    80008028:	00813483          	ld	s1,8(sp)
    8000802c:	02010113          	addi	sp,sp,32
    80008030:	00008067          	ret

0000000080008034 <uartinit>:
    80008034:	ff010113          	addi	sp,sp,-16
    80008038:	00813423          	sd	s0,8(sp)
    8000803c:	01010413          	addi	s0,sp,16
    80008040:	100007b7          	lui	a5,0x10000
    80008044:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008048:	f8000713          	li	a4,-128
    8000804c:	00e781a3          	sb	a4,3(a5)
    80008050:	00300713          	li	a4,3
    80008054:	00e78023          	sb	a4,0(a5)
    80008058:	000780a3          	sb	zero,1(a5)
    8000805c:	00e781a3          	sb	a4,3(a5)
    80008060:	00700693          	li	a3,7
    80008064:	00d78123          	sb	a3,2(a5)
    80008068:	00e780a3          	sb	a4,1(a5)
    8000806c:	00813403          	ld	s0,8(sp)
    80008070:	01010113          	addi	sp,sp,16
    80008074:	00008067          	ret

0000000080008078 <uartputc>:
    80008078:	00004797          	auipc	a5,0x4
    8000807c:	cf07a783          	lw	a5,-784(a5) # 8000bd68 <panicked>
    80008080:	00078463          	beqz	a5,80008088 <uartputc+0x10>
    80008084:	0000006f          	j	80008084 <uartputc+0xc>
    80008088:	fd010113          	addi	sp,sp,-48
    8000808c:	02813023          	sd	s0,32(sp)
    80008090:	00913c23          	sd	s1,24(sp)
    80008094:	01213823          	sd	s2,16(sp)
    80008098:	01313423          	sd	s3,8(sp)
    8000809c:	02113423          	sd	ra,40(sp)
    800080a0:	03010413          	addi	s0,sp,48
    800080a4:	00004917          	auipc	s2,0x4
    800080a8:	ccc90913          	addi	s2,s2,-820 # 8000bd70 <uart_tx_r>
    800080ac:	00093783          	ld	a5,0(s2)
    800080b0:	00004497          	auipc	s1,0x4
    800080b4:	cc848493          	addi	s1,s1,-824 # 8000bd78 <uart_tx_w>
    800080b8:	0004b703          	ld	a4,0(s1)
    800080bc:	02078693          	addi	a3,a5,32
    800080c0:	00050993          	mv	s3,a0
    800080c4:	02e69c63          	bne	a3,a4,800080fc <uartputc+0x84>
    800080c8:	00001097          	auipc	ra,0x1
    800080cc:	834080e7          	jalr	-1996(ra) # 800088fc <push_on>
    800080d0:	00093783          	ld	a5,0(s2)
    800080d4:	0004b703          	ld	a4,0(s1)
    800080d8:	02078793          	addi	a5,a5,32
    800080dc:	00e79463          	bne	a5,a4,800080e4 <uartputc+0x6c>
    800080e0:	0000006f          	j	800080e0 <uartputc+0x68>
    800080e4:	00001097          	auipc	ra,0x1
    800080e8:	88c080e7          	jalr	-1908(ra) # 80008970 <pop_on>
    800080ec:	00093783          	ld	a5,0(s2)
    800080f0:	0004b703          	ld	a4,0(s1)
    800080f4:	02078693          	addi	a3,a5,32
    800080f8:	fce688e3          	beq	a3,a4,800080c8 <uartputc+0x50>
    800080fc:	01f77693          	andi	a3,a4,31
    80008100:	00005597          	auipc	a1,0x5
    80008104:	fe058593          	addi	a1,a1,-32 # 8000d0e0 <uart_tx_buf>
    80008108:	00d586b3          	add	a3,a1,a3
    8000810c:	00170713          	addi	a4,a4,1
    80008110:	01368023          	sb	s3,0(a3)
    80008114:	00e4b023          	sd	a4,0(s1)
    80008118:	10000637          	lui	a2,0x10000
    8000811c:	02f71063          	bne	a4,a5,8000813c <uartputc+0xc4>
    80008120:	0340006f          	j	80008154 <uartputc+0xdc>
    80008124:	00074703          	lbu	a4,0(a4)
    80008128:	00f93023          	sd	a5,0(s2)
    8000812c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008130:	00093783          	ld	a5,0(s2)
    80008134:	0004b703          	ld	a4,0(s1)
    80008138:	00f70e63          	beq	a4,a5,80008154 <uartputc+0xdc>
    8000813c:	00564683          	lbu	a3,5(a2)
    80008140:	01f7f713          	andi	a4,a5,31
    80008144:	00e58733          	add	a4,a1,a4
    80008148:	0206f693          	andi	a3,a3,32
    8000814c:	00178793          	addi	a5,a5,1
    80008150:	fc069ae3          	bnez	a3,80008124 <uartputc+0xac>
    80008154:	02813083          	ld	ra,40(sp)
    80008158:	02013403          	ld	s0,32(sp)
    8000815c:	01813483          	ld	s1,24(sp)
    80008160:	01013903          	ld	s2,16(sp)
    80008164:	00813983          	ld	s3,8(sp)
    80008168:	03010113          	addi	sp,sp,48
    8000816c:	00008067          	ret

0000000080008170 <uartputc_sync>:
    80008170:	ff010113          	addi	sp,sp,-16
    80008174:	00813423          	sd	s0,8(sp)
    80008178:	01010413          	addi	s0,sp,16
    8000817c:	00004717          	auipc	a4,0x4
    80008180:	bec72703          	lw	a4,-1044(a4) # 8000bd68 <panicked>
    80008184:	02071663          	bnez	a4,800081b0 <uartputc_sync+0x40>
    80008188:	00050793          	mv	a5,a0
    8000818c:	100006b7          	lui	a3,0x10000
    80008190:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008194:	02077713          	andi	a4,a4,32
    80008198:	fe070ce3          	beqz	a4,80008190 <uartputc_sync+0x20>
    8000819c:	0ff7f793          	andi	a5,a5,255
    800081a0:	00f68023          	sb	a5,0(a3)
    800081a4:	00813403          	ld	s0,8(sp)
    800081a8:	01010113          	addi	sp,sp,16
    800081ac:	00008067          	ret
    800081b0:	0000006f          	j	800081b0 <uartputc_sync+0x40>

00000000800081b4 <uartstart>:
    800081b4:	ff010113          	addi	sp,sp,-16
    800081b8:	00813423          	sd	s0,8(sp)
    800081bc:	01010413          	addi	s0,sp,16
    800081c0:	00004617          	auipc	a2,0x4
    800081c4:	bb060613          	addi	a2,a2,-1104 # 8000bd70 <uart_tx_r>
    800081c8:	00004517          	auipc	a0,0x4
    800081cc:	bb050513          	addi	a0,a0,-1104 # 8000bd78 <uart_tx_w>
    800081d0:	00063783          	ld	a5,0(a2)
    800081d4:	00053703          	ld	a4,0(a0)
    800081d8:	04f70263          	beq	a4,a5,8000821c <uartstart+0x68>
    800081dc:	100005b7          	lui	a1,0x10000
    800081e0:	00005817          	auipc	a6,0x5
    800081e4:	f0080813          	addi	a6,a6,-256 # 8000d0e0 <uart_tx_buf>
    800081e8:	01c0006f          	j	80008204 <uartstart+0x50>
    800081ec:	0006c703          	lbu	a4,0(a3)
    800081f0:	00f63023          	sd	a5,0(a2)
    800081f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081f8:	00063783          	ld	a5,0(a2)
    800081fc:	00053703          	ld	a4,0(a0)
    80008200:	00f70e63          	beq	a4,a5,8000821c <uartstart+0x68>
    80008204:	01f7f713          	andi	a4,a5,31
    80008208:	00e806b3          	add	a3,a6,a4
    8000820c:	0055c703          	lbu	a4,5(a1)
    80008210:	00178793          	addi	a5,a5,1
    80008214:	02077713          	andi	a4,a4,32
    80008218:	fc071ae3          	bnez	a4,800081ec <uartstart+0x38>
    8000821c:	00813403          	ld	s0,8(sp)
    80008220:	01010113          	addi	sp,sp,16
    80008224:	00008067          	ret

0000000080008228 <uartgetc>:
    80008228:	ff010113          	addi	sp,sp,-16
    8000822c:	00813423          	sd	s0,8(sp)
    80008230:	01010413          	addi	s0,sp,16
    80008234:	10000737          	lui	a4,0x10000
    80008238:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000823c:	0017f793          	andi	a5,a5,1
    80008240:	00078c63          	beqz	a5,80008258 <uartgetc+0x30>
    80008244:	00074503          	lbu	a0,0(a4)
    80008248:	0ff57513          	andi	a0,a0,255
    8000824c:	00813403          	ld	s0,8(sp)
    80008250:	01010113          	addi	sp,sp,16
    80008254:	00008067          	ret
    80008258:	fff00513          	li	a0,-1
    8000825c:	ff1ff06f          	j	8000824c <uartgetc+0x24>

0000000080008260 <uartintr>:
    80008260:	100007b7          	lui	a5,0x10000
    80008264:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008268:	0017f793          	andi	a5,a5,1
    8000826c:	0a078463          	beqz	a5,80008314 <uartintr+0xb4>
    80008270:	fe010113          	addi	sp,sp,-32
    80008274:	00813823          	sd	s0,16(sp)
    80008278:	00913423          	sd	s1,8(sp)
    8000827c:	00113c23          	sd	ra,24(sp)
    80008280:	02010413          	addi	s0,sp,32
    80008284:	100004b7          	lui	s1,0x10000
    80008288:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000828c:	0ff57513          	andi	a0,a0,255
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	534080e7          	jalr	1332(ra) # 800077c4 <consoleintr>
    80008298:	0054c783          	lbu	a5,5(s1)
    8000829c:	0017f793          	andi	a5,a5,1
    800082a0:	fe0794e3          	bnez	a5,80008288 <uartintr+0x28>
    800082a4:	00004617          	auipc	a2,0x4
    800082a8:	acc60613          	addi	a2,a2,-1332 # 8000bd70 <uart_tx_r>
    800082ac:	00004517          	auipc	a0,0x4
    800082b0:	acc50513          	addi	a0,a0,-1332 # 8000bd78 <uart_tx_w>
    800082b4:	00063783          	ld	a5,0(a2)
    800082b8:	00053703          	ld	a4,0(a0)
    800082bc:	04f70263          	beq	a4,a5,80008300 <uartintr+0xa0>
    800082c0:	100005b7          	lui	a1,0x10000
    800082c4:	00005817          	auipc	a6,0x5
    800082c8:	e1c80813          	addi	a6,a6,-484 # 8000d0e0 <uart_tx_buf>
    800082cc:	01c0006f          	j	800082e8 <uartintr+0x88>
    800082d0:	0006c703          	lbu	a4,0(a3)
    800082d4:	00f63023          	sd	a5,0(a2)
    800082d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082dc:	00063783          	ld	a5,0(a2)
    800082e0:	00053703          	ld	a4,0(a0)
    800082e4:	00f70e63          	beq	a4,a5,80008300 <uartintr+0xa0>
    800082e8:	01f7f713          	andi	a4,a5,31
    800082ec:	00e806b3          	add	a3,a6,a4
    800082f0:	0055c703          	lbu	a4,5(a1)
    800082f4:	00178793          	addi	a5,a5,1
    800082f8:	02077713          	andi	a4,a4,32
    800082fc:	fc071ae3          	bnez	a4,800082d0 <uartintr+0x70>
    80008300:	01813083          	ld	ra,24(sp)
    80008304:	01013403          	ld	s0,16(sp)
    80008308:	00813483          	ld	s1,8(sp)
    8000830c:	02010113          	addi	sp,sp,32
    80008310:	00008067          	ret
    80008314:	00004617          	auipc	a2,0x4
    80008318:	a5c60613          	addi	a2,a2,-1444 # 8000bd70 <uart_tx_r>
    8000831c:	00004517          	auipc	a0,0x4
    80008320:	a5c50513          	addi	a0,a0,-1444 # 8000bd78 <uart_tx_w>
    80008324:	00063783          	ld	a5,0(a2)
    80008328:	00053703          	ld	a4,0(a0)
    8000832c:	04f70263          	beq	a4,a5,80008370 <uartintr+0x110>
    80008330:	100005b7          	lui	a1,0x10000
    80008334:	00005817          	auipc	a6,0x5
    80008338:	dac80813          	addi	a6,a6,-596 # 8000d0e0 <uart_tx_buf>
    8000833c:	01c0006f          	j	80008358 <uartintr+0xf8>
    80008340:	0006c703          	lbu	a4,0(a3)
    80008344:	00f63023          	sd	a5,0(a2)
    80008348:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000834c:	00063783          	ld	a5,0(a2)
    80008350:	00053703          	ld	a4,0(a0)
    80008354:	02f70063          	beq	a4,a5,80008374 <uartintr+0x114>
    80008358:	01f7f713          	andi	a4,a5,31
    8000835c:	00e806b3          	add	a3,a6,a4
    80008360:	0055c703          	lbu	a4,5(a1)
    80008364:	00178793          	addi	a5,a5,1
    80008368:	02077713          	andi	a4,a4,32
    8000836c:	fc071ae3          	bnez	a4,80008340 <uartintr+0xe0>
    80008370:	00008067          	ret
    80008374:	00008067          	ret

0000000080008378 <kinit>:
    80008378:	fc010113          	addi	sp,sp,-64
    8000837c:	02913423          	sd	s1,40(sp)
    80008380:	fffff7b7          	lui	a5,0xfffff
    80008384:	00006497          	auipc	s1,0x6
    80008388:	d7b48493          	addi	s1,s1,-645 # 8000e0ff <end+0xfff>
    8000838c:	02813823          	sd	s0,48(sp)
    80008390:	01313c23          	sd	s3,24(sp)
    80008394:	00f4f4b3          	and	s1,s1,a5
    80008398:	02113c23          	sd	ra,56(sp)
    8000839c:	03213023          	sd	s2,32(sp)
    800083a0:	01413823          	sd	s4,16(sp)
    800083a4:	01513423          	sd	s5,8(sp)
    800083a8:	04010413          	addi	s0,sp,64
    800083ac:	000017b7          	lui	a5,0x1
    800083b0:	01100993          	li	s3,17
    800083b4:	00f487b3          	add	a5,s1,a5
    800083b8:	01b99993          	slli	s3,s3,0x1b
    800083bc:	06f9e063          	bltu	s3,a5,8000841c <kinit+0xa4>
    800083c0:	00005a97          	auipc	s5,0x5
    800083c4:	d40a8a93          	addi	s5,s5,-704 # 8000d100 <end>
    800083c8:	0754ec63          	bltu	s1,s5,80008440 <kinit+0xc8>
    800083cc:	0734fa63          	bgeu	s1,s3,80008440 <kinit+0xc8>
    800083d0:	00088a37          	lui	s4,0x88
    800083d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083d8:	00004917          	auipc	s2,0x4
    800083dc:	9a890913          	addi	s2,s2,-1624 # 8000bd80 <kmem>
    800083e0:	00ca1a13          	slli	s4,s4,0xc
    800083e4:	0140006f          	j	800083f8 <kinit+0x80>
    800083e8:	000017b7          	lui	a5,0x1
    800083ec:	00f484b3          	add	s1,s1,a5
    800083f0:	0554e863          	bltu	s1,s5,80008440 <kinit+0xc8>
    800083f4:	0534f663          	bgeu	s1,s3,80008440 <kinit+0xc8>
    800083f8:	00001637          	lui	a2,0x1
    800083fc:	00100593          	li	a1,1
    80008400:	00048513          	mv	a0,s1
    80008404:	00000097          	auipc	ra,0x0
    80008408:	5e4080e7          	jalr	1508(ra) # 800089e8 <__memset>
    8000840c:	00093783          	ld	a5,0(s2)
    80008410:	00f4b023          	sd	a5,0(s1)
    80008414:	00993023          	sd	s1,0(s2)
    80008418:	fd4498e3          	bne	s1,s4,800083e8 <kinit+0x70>
    8000841c:	03813083          	ld	ra,56(sp)
    80008420:	03013403          	ld	s0,48(sp)
    80008424:	02813483          	ld	s1,40(sp)
    80008428:	02013903          	ld	s2,32(sp)
    8000842c:	01813983          	ld	s3,24(sp)
    80008430:	01013a03          	ld	s4,16(sp)
    80008434:	00813a83          	ld	s5,8(sp)
    80008438:	04010113          	addi	sp,sp,64
    8000843c:	00008067          	ret
    80008440:	00001517          	auipc	a0,0x1
    80008444:	35850513          	addi	a0,a0,856 # 80009798 <digits+0x18>
    80008448:	fffff097          	auipc	ra,0xfffff
    8000844c:	4b4080e7          	jalr	1204(ra) # 800078fc <panic>

0000000080008450 <freerange>:
    80008450:	fc010113          	addi	sp,sp,-64
    80008454:	000017b7          	lui	a5,0x1
    80008458:	02913423          	sd	s1,40(sp)
    8000845c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008460:	009504b3          	add	s1,a0,s1
    80008464:	fffff537          	lui	a0,0xfffff
    80008468:	02813823          	sd	s0,48(sp)
    8000846c:	02113c23          	sd	ra,56(sp)
    80008470:	03213023          	sd	s2,32(sp)
    80008474:	01313c23          	sd	s3,24(sp)
    80008478:	01413823          	sd	s4,16(sp)
    8000847c:	01513423          	sd	s5,8(sp)
    80008480:	01613023          	sd	s6,0(sp)
    80008484:	04010413          	addi	s0,sp,64
    80008488:	00a4f4b3          	and	s1,s1,a0
    8000848c:	00f487b3          	add	a5,s1,a5
    80008490:	06f5e463          	bltu	a1,a5,800084f8 <freerange+0xa8>
    80008494:	00005a97          	auipc	s5,0x5
    80008498:	c6ca8a93          	addi	s5,s5,-916 # 8000d100 <end>
    8000849c:	0954e263          	bltu	s1,s5,80008520 <freerange+0xd0>
    800084a0:	01100993          	li	s3,17
    800084a4:	01b99993          	slli	s3,s3,0x1b
    800084a8:	0734fc63          	bgeu	s1,s3,80008520 <freerange+0xd0>
    800084ac:	00058a13          	mv	s4,a1
    800084b0:	00004917          	auipc	s2,0x4
    800084b4:	8d090913          	addi	s2,s2,-1840 # 8000bd80 <kmem>
    800084b8:	00002b37          	lui	s6,0x2
    800084bc:	0140006f          	j	800084d0 <freerange+0x80>
    800084c0:	000017b7          	lui	a5,0x1
    800084c4:	00f484b3          	add	s1,s1,a5
    800084c8:	0554ec63          	bltu	s1,s5,80008520 <freerange+0xd0>
    800084cc:	0534fa63          	bgeu	s1,s3,80008520 <freerange+0xd0>
    800084d0:	00001637          	lui	a2,0x1
    800084d4:	00100593          	li	a1,1
    800084d8:	00048513          	mv	a0,s1
    800084dc:	00000097          	auipc	ra,0x0
    800084e0:	50c080e7          	jalr	1292(ra) # 800089e8 <__memset>
    800084e4:	00093703          	ld	a4,0(s2)
    800084e8:	016487b3          	add	a5,s1,s6
    800084ec:	00e4b023          	sd	a4,0(s1)
    800084f0:	00993023          	sd	s1,0(s2)
    800084f4:	fcfa76e3          	bgeu	s4,a5,800084c0 <freerange+0x70>
    800084f8:	03813083          	ld	ra,56(sp)
    800084fc:	03013403          	ld	s0,48(sp)
    80008500:	02813483          	ld	s1,40(sp)
    80008504:	02013903          	ld	s2,32(sp)
    80008508:	01813983          	ld	s3,24(sp)
    8000850c:	01013a03          	ld	s4,16(sp)
    80008510:	00813a83          	ld	s5,8(sp)
    80008514:	00013b03          	ld	s6,0(sp)
    80008518:	04010113          	addi	sp,sp,64
    8000851c:	00008067          	ret
    80008520:	00001517          	auipc	a0,0x1
    80008524:	27850513          	addi	a0,a0,632 # 80009798 <digits+0x18>
    80008528:	fffff097          	auipc	ra,0xfffff
    8000852c:	3d4080e7          	jalr	980(ra) # 800078fc <panic>

0000000080008530 <kfree>:
    80008530:	fe010113          	addi	sp,sp,-32
    80008534:	00813823          	sd	s0,16(sp)
    80008538:	00113c23          	sd	ra,24(sp)
    8000853c:	00913423          	sd	s1,8(sp)
    80008540:	02010413          	addi	s0,sp,32
    80008544:	03451793          	slli	a5,a0,0x34
    80008548:	04079c63          	bnez	a5,800085a0 <kfree+0x70>
    8000854c:	00005797          	auipc	a5,0x5
    80008550:	bb478793          	addi	a5,a5,-1100 # 8000d100 <end>
    80008554:	00050493          	mv	s1,a0
    80008558:	04f56463          	bltu	a0,a5,800085a0 <kfree+0x70>
    8000855c:	01100793          	li	a5,17
    80008560:	01b79793          	slli	a5,a5,0x1b
    80008564:	02f57e63          	bgeu	a0,a5,800085a0 <kfree+0x70>
    80008568:	00001637          	lui	a2,0x1
    8000856c:	00100593          	li	a1,1
    80008570:	00000097          	auipc	ra,0x0
    80008574:	478080e7          	jalr	1144(ra) # 800089e8 <__memset>
    80008578:	00004797          	auipc	a5,0x4
    8000857c:	80878793          	addi	a5,a5,-2040 # 8000bd80 <kmem>
    80008580:	0007b703          	ld	a4,0(a5)
    80008584:	01813083          	ld	ra,24(sp)
    80008588:	01013403          	ld	s0,16(sp)
    8000858c:	00e4b023          	sd	a4,0(s1)
    80008590:	0097b023          	sd	s1,0(a5)
    80008594:	00813483          	ld	s1,8(sp)
    80008598:	02010113          	addi	sp,sp,32
    8000859c:	00008067          	ret
    800085a0:	00001517          	auipc	a0,0x1
    800085a4:	1f850513          	addi	a0,a0,504 # 80009798 <digits+0x18>
    800085a8:	fffff097          	auipc	ra,0xfffff
    800085ac:	354080e7          	jalr	852(ra) # 800078fc <panic>

00000000800085b0 <kalloc>:
    800085b0:	fe010113          	addi	sp,sp,-32
    800085b4:	00813823          	sd	s0,16(sp)
    800085b8:	00913423          	sd	s1,8(sp)
    800085bc:	00113c23          	sd	ra,24(sp)
    800085c0:	02010413          	addi	s0,sp,32
    800085c4:	00003797          	auipc	a5,0x3
    800085c8:	7bc78793          	addi	a5,a5,1980 # 8000bd80 <kmem>
    800085cc:	0007b483          	ld	s1,0(a5)
    800085d0:	02048063          	beqz	s1,800085f0 <kalloc+0x40>
    800085d4:	0004b703          	ld	a4,0(s1)
    800085d8:	00001637          	lui	a2,0x1
    800085dc:	00500593          	li	a1,5
    800085e0:	00048513          	mv	a0,s1
    800085e4:	00e7b023          	sd	a4,0(a5)
    800085e8:	00000097          	auipc	ra,0x0
    800085ec:	400080e7          	jalr	1024(ra) # 800089e8 <__memset>
    800085f0:	01813083          	ld	ra,24(sp)
    800085f4:	01013403          	ld	s0,16(sp)
    800085f8:	00048513          	mv	a0,s1
    800085fc:	00813483          	ld	s1,8(sp)
    80008600:	02010113          	addi	sp,sp,32
    80008604:	00008067          	ret

0000000080008608 <initlock>:
    80008608:	ff010113          	addi	sp,sp,-16
    8000860c:	00813423          	sd	s0,8(sp)
    80008610:	01010413          	addi	s0,sp,16
    80008614:	00813403          	ld	s0,8(sp)
    80008618:	00b53423          	sd	a1,8(a0)
    8000861c:	00052023          	sw	zero,0(a0)
    80008620:	00053823          	sd	zero,16(a0)
    80008624:	01010113          	addi	sp,sp,16
    80008628:	00008067          	ret

000000008000862c <acquire>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00913423          	sd	s1,8(sp)
    80008638:	00113c23          	sd	ra,24(sp)
    8000863c:	01213023          	sd	s2,0(sp)
    80008640:	02010413          	addi	s0,sp,32
    80008644:	00050493          	mv	s1,a0
    80008648:	10002973          	csrr	s2,sstatus
    8000864c:	100027f3          	csrr	a5,sstatus
    80008650:	ffd7f793          	andi	a5,a5,-3
    80008654:	10079073          	csrw	sstatus,a5
    80008658:	fffff097          	auipc	ra,0xfffff
    8000865c:	8e4080e7          	jalr	-1820(ra) # 80006f3c <mycpu>
    80008660:	07852783          	lw	a5,120(a0)
    80008664:	06078e63          	beqz	a5,800086e0 <acquire+0xb4>
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	8d4080e7          	jalr	-1836(ra) # 80006f3c <mycpu>
    80008670:	07852783          	lw	a5,120(a0)
    80008674:	0004a703          	lw	a4,0(s1)
    80008678:	0017879b          	addiw	a5,a5,1
    8000867c:	06f52c23          	sw	a5,120(a0)
    80008680:	04071063          	bnez	a4,800086c0 <acquire+0x94>
    80008684:	00100713          	li	a4,1
    80008688:	00070793          	mv	a5,a4
    8000868c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008690:	0007879b          	sext.w	a5,a5
    80008694:	fe079ae3          	bnez	a5,80008688 <acquire+0x5c>
    80008698:	0ff0000f          	fence
    8000869c:	fffff097          	auipc	ra,0xfffff
    800086a0:	8a0080e7          	jalr	-1888(ra) # 80006f3c <mycpu>
    800086a4:	01813083          	ld	ra,24(sp)
    800086a8:	01013403          	ld	s0,16(sp)
    800086ac:	00a4b823          	sd	a0,16(s1)
    800086b0:	00013903          	ld	s2,0(sp)
    800086b4:	00813483          	ld	s1,8(sp)
    800086b8:	02010113          	addi	sp,sp,32
    800086bc:	00008067          	ret
    800086c0:	0104b903          	ld	s2,16(s1)
    800086c4:	fffff097          	auipc	ra,0xfffff
    800086c8:	878080e7          	jalr	-1928(ra) # 80006f3c <mycpu>
    800086cc:	faa91ce3          	bne	s2,a0,80008684 <acquire+0x58>
    800086d0:	00001517          	auipc	a0,0x1
    800086d4:	0d050513          	addi	a0,a0,208 # 800097a0 <digits+0x20>
    800086d8:	fffff097          	auipc	ra,0xfffff
    800086dc:	224080e7          	jalr	548(ra) # 800078fc <panic>
    800086e0:	00195913          	srli	s2,s2,0x1
    800086e4:	fffff097          	auipc	ra,0xfffff
    800086e8:	858080e7          	jalr	-1960(ra) # 80006f3c <mycpu>
    800086ec:	00197913          	andi	s2,s2,1
    800086f0:	07252e23          	sw	s2,124(a0)
    800086f4:	f75ff06f          	j	80008668 <acquire+0x3c>

00000000800086f8 <release>:
    800086f8:	fe010113          	addi	sp,sp,-32
    800086fc:	00813823          	sd	s0,16(sp)
    80008700:	00113c23          	sd	ra,24(sp)
    80008704:	00913423          	sd	s1,8(sp)
    80008708:	01213023          	sd	s2,0(sp)
    8000870c:	02010413          	addi	s0,sp,32
    80008710:	00052783          	lw	a5,0(a0)
    80008714:	00079a63          	bnez	a5,80008728 <release+0x30>
    80008718:	00001517          	auipc	a0,0x1
    8000871c:	09050513          	addi	a0,a0,144 # 800097a8 <digits+0x28>
    80008720:	fffff097          	auipc	ra,0xfffff
    80008724:	1dc080e7          	jalr	476(ra) # 800078fc <panic>
    80008728:	01053903          	ld	s2,16(a0)
    8000872c:	00050493          	mv	s1,a0
    80008730:	fffff097          	auipc	ra,0xfffff
    80008734:	80c080e7          	jalr	-2036(ra) # 80006f3c <mycpu>
    80008738:	fea910e3          	bne	s2,a0,80008718 <release+0x20>
    8000873c:	0004b823          	sd	zero,16(s1)
    80008740:	0ff0000f          	fence
    80008744:	0f50000f          	fence	iorw,ow
    80008748:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000874c:	ffffe097          	auipc	ra,0xffffe
    80008750:	7f0080e7          	jalr	2032(ra) # 80006f3c <mycpu>
    80008754:	100027f3          	csrr	a5,sstatus
    80008758:	0027f793          	andi	a5,a5,2
    8000875c:	04079a63          	bnez	a5,800087b0 <release+0xb8>
    80008760:	07852783          	lw	a5,120(a0)
    80008764:	02f05e63          	blez	a5,800087a0 <release+0xa8>
    80008768:	fff7871b          	addiw	a4,a5,-1
    8000876c:	06e52c23          	sw	a4,120(a0)
    80008770:	00071c63          	bnez	a4,80008788 <release+0x90>
    80008774:	07c52783          	lw	a5,124(a0)
    80008778:	00078863          	beqz	a5,80008788 <release+0x90>
    8000877c:	100027f3          	csrr	a5,sstatus
    80008780:	0027e793          	ori	a5,a5,2
    80008784:	10079073          	csrw	sstatus,a5
    80008788:	01813083          	ld	ra,24(sp)
    8000878c:	01013403          	ld	s0,16(sp)
    80008790:	00813483          	ld	s1,8(sp)
    80008794:	00013903          	ld	s2,0(sp)
    80008798:	02010113          	addi	sp,sp,32
    8000879c:	00008067          	ret
    800087a0:	00001517          	auipc	a0,0x1
    800087a4:	02850513          	addi	a0,a0,40 # 800097c8 <digits+0x48>
    800087a8:	fffff097          	auipc	ra,0xfffff
    800087ac:	154080e7          	jalr	340(ra) # 800078fc <panic>
    800087b0:	00001517          	auipc	a0,0x1
    800087b4:	00050513          	mv	a0,a0
    800087b8:	fffff097          	auipc	ra,0xfffff
    800087bc:	144080e7          	jalr	324(ra) # 800078fc <panic>

00000000800087c0 <holding>:
    800087c0:	00052783          	lw	a5,0(a0) # 800097b0 <digits+0x30>
    800087c4:	00079663          	bnez	a5,800087d0 <holding+0x10>
    800087c8:	00000513          	li	a0,0
    800087cc:	00008067          	ret
    800087d0:	fe010113          	addi	sp,sp,-32
    800087d4:	00813823          	sd	s0,16(sp)
    800087d8:	00913423          	sd	s1,8(sp)
    800087dc:	00113c23          	sd	ra,24(sp)
    800087e0:	02010413          	addi	s0,sp,32
    800087e4:	01053483          	ld	s1,16(a0)
    800087e8:	ffffe097          	auipc	ra,0xffffe
    800087ec:	754080e7          	jalr	1876(ra) # 80006f3c <mycpu>
    800087f0:	01813083          	ld	ra,24(sp)
    800087f4:	01013403          	ld	s0,16(sp)
    800087f8:	40a48533          	sub	a0,s1,a0
    800087fc:	00153513          	seqz	a0,a0
    80008800:	00813483          	ld	s1,8(sp)
    80008804:	02010113          	addi	sp,sp,32
    80008808:	00008067          	ret

000000008000880c <push_off>:
    8000880c:	fe010113          	addi	sp,sp,-32
    80008810:	00813823          	sd	s0,16(sp)
    80008814:	00113c23          	sd	ra,24(sp)
    80008818:	00913423          	sd	s1,8(sp)
    8000881c:	02010413          	addi	s0,sp,32
    80008820:	100024f3          	csrr	s1,sstatus
    80008824:	100027f3          	csrr	a5,sstatus
    80008828:	ffd7f793          	andi	a5,a5,-3
    8000882c:	10079073          	csrw	sstatus,a5
    80008830:	ffffe097          	auipc	ra,0xffffe
    80008834:	70c080e7          	jalr	1804(ra) # 80006f3c <mycpu>
    80008838:	07852783          	lw	a5,120(a0)
    8000883c:	02078663          	beqz	a5,80008868 <push_off+0x5c>
    80008840:	ffffe097          	auipc	ra,0xffffe
    80008844:	6fc080e7          	jalr	1788(ra) # 80006f3c <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	01813083          	ld	ra,24(sp)
    80008850:	01013403          	ld	s0,16(sp)
    80008854:	0017879b          	addiw	a5,a5,1
    80008858:	06f52c23          	sw	a5,120(a0)
    8000885c:	00813483          	ld	s1,8(sp)
    80008860:	02010113          	addi	sp,sp,32
    80008864:	00008067          	ret
    80008868:	0014d493          	srli	s1,s1,0x1
    8000886c:	ffffe097          	auipc	ra,0xffffe
    80008870:	6d0080e7          	jalr	1744(ra) # 80006f3c <mycpu>
    80008874:	0014f493          	andi	s1,s1,1
    80008878:	06952e23          	sw	s1,124(a0)
    8000887c:	fc5ff06f          	j	80008840 <push_off+0x34>

0000000080008880 <pop_off>:
    80008880:	ff010113          	addi	sp,sp,-16
    80008884:	00813023          	sd	s0,0(sp)
    80008888:	00113423          	sd	ra,8(sp)
    8000888c:	01010413          	addi	s0,sp,16
    80008890:	ffffe097          	auipc	ra,0xffffe
    80008894:	6ac080e7          	jalr	1708(ra) # 80006f3c <mycpu>
    80008898:	100027f3          	csrr	a5,sstatus
    8000889c:	0027f793          	andi	a5,a5,2
    800088a0:	04079663          	bnez	a5,800088ec <pop_off+0x6c>
    800088a4:	07852783          	lw	a5,120(a0)
    800088a8:	02f05a63          	blez	a5,800088dc <pop_off+0x5c>
    800088ac:	fff7871b          	addiw	a4,a5,-1
    800088b0:	06e52c23          	sw	a4,120(a0)
    800088b4:	00071c63          	bnez	a4,800088cc <pop_off+0x4c>
    800088b8:	07c52783          	lw	a5,124(a0)
    800088bc:	00078863          	beqz	a5,800088cc <pop_off+0x4c>
    800088c0:	100027f3          	csrr	a5,sstatus
    800088c4:	0027e793          	ori	a5,a5,2
    800088c8:	10079073          	csrw	sstatus,a5
    800088cc:	00813083          	ld	ra,8(sp)
    800088d0:	00013403          	ld	s0,0(sp)
    800088d4:	01010113          	addi	sp,sp,16
    800088d8:	00008067          	ret
    800088dc:	00001517          	auipc	a0,0x1
    800088e0:	eec50513          	addi	a0,a0,-276 # 800097c8 <digits+0x48>
    800088e4:	fffff097          	auipc	ra,0xfffff
    800088e8:	018080e7          	jalr	24(ra) # 800078fc <panic>
    800088ec:	00001517          	auipc	a0,0x1
    800088f0:	ec450513          	addi	a0,a0,-316 # 800097b0 <digits+0x30>
    800088f4:	fffff097          	auipc	ra,0xfffff
    800088f8:	008080e7          	jalr	8(ra) # 800078fc <panic>

00000000800088fc <push_on>:
    800088fc:	fe010113          	addi	sp,sp,-32
    80008900:	00813823          	sd	s0,16(sp)
    80008904:	00113c23          	sd	ra,24(sp)
    80008908:	00913423          	sd	s1,8(sp)
    8000890c:	02010413          	addi	s0,sp,32
    80008910:	100024f3          	csrr	s1,sstatus
    80008914:	100027f3          	csrr	a5,sstatus
    80008918:	0027e793          	ori	a5,a5,2
    8000891c:	10079073          	csrw	sstatus,a5
    80008920:	ffffe097          	auipc	ra,0xffffe
    80008924:	61c080e7          	jalr	1564(ra) # 80006f3c <mycpu>
    80008928:	07852783          	lw	a5,120(a0)
    8000892c:	02078663          	beqz	a5,80008958 <push_on+0x5c>
    80008930:	ffffe097          	auipc	ra,0xffffe
    80008934:	60c080e7          	jalr	1548(ra) # 80006f3c <mycpu>
    80008938:	07852783          	lw	a5,120(a0)
    8000893c:	01813083          	ld	ra,24(sp)
    80008940:	01013403          	ld	s0,16(sp)
    80008944:	0017879b          	addiw	a5,a5,1
    80008948:	06f52c23          	sw	a5,120(a0)
    8000894c:	00813483          	ld	s1,8(sp)
    80008950:	02010113          	addi	sp,sp,32
    80008954:	00008067          	ret
    80008958:	0014d493          	srli	s1,s1,0x1
    8000895c:	ffffe097          	auipc	ra,0xffffe
    80008960:	5e0080e7          	jalr	1504(ra) # 80006f3c <mycpu>
    80008964:	0014f493          	andi	s1,s1,1
    80008968:	06952e23          	sw	s1,124(a0)
    8000896c:	fc5ff06f          	j	80008930 <push_on+0x34>

0000000080008970 <pop_on>:
    80008970:	ff010113          	addi	sp,sp,-16
    80008974:	00813023          	sd	s0,0(sp)
    80008978:	00113423          	sd	ra,8(sp)
    8000897c:	01010413          	addi	s0,sp,16
    80008980:	ffffe097          	auipc	ra,0xffffe
    80008984:	5bc080e7          	jalr	1468(ra) # 80006f3c <mycpu>
    80008988:	100027f3          	csrr	a5,sstatus
    8000898c:	0027f793          	andi	a5,a5,2
    80008990:	04078463          	beqz	a5,800089d8 <pop_on+0x68>
    80008994:	07852783          	lw	a5,120(a0)
    80008998:	02f05863          	blez	a5,800089c8 <pop_on+0x58>
    8000899c:	fff7879b          	addiw	a5,a5,-1
    800089a0:	06f52c23          	sw	a5,120(a0)
    800089a4:	07853783          	ld	a5,120(a0)
    800089a8:	00079863          	bnez	a5,800089b8 <pop_on+0x48>
    800089ac:	100027f3          	csrr	a5,sstatus
    800089b0:	ffd7f793          	andi	a5,a5,-3
    800089b4:	10079073          	csrw	sstatus,a5
    800089b8:	00813083          	ld	ra,8(sp)
    800089bc:	00013403          	ld	s0,0(sp)
    800089c0:	01010113          	addi	sp,sp,16
    800089c4:	00008067          	ret
    800089c8:	00001517          	auipc	a0,0x1
    800089cc:	e2850513          	addi	a0,a0,-472 # 800097f0 <digits+0x70>
    800089d0:	fffff097          	auipc	ra,0xfffff
    800089d4:	f2c080e7          	jalr	-212(ra) # 800078fc <panic>
    800089d8:	00001517          	auipc	a0,0x1
    800089dc:	df850513          	addi	a0,a0,-520 # 800097d0 <digits+0x50>
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	f1c080e7          	jalr	-228(ra) # 800078fc <panic>

00000000800089e8 <__memset>:
    800089e8:	ff010113          	addi	sp,sp,-16
    800089ec:	00813423          	sd	s0,8(sp)
    800089f0:	01010413          	addi	s0,sp,16
    800089f4:	1a060e63          	beqz	a2,80008bb0 <__memset+0x1c8>
    800089f8:	40a007b3          	neg	a5,a0
    800089fc:	0077f793          	andi	a5,a5,7
    80008a00:	00778693          	addi	a3,a5,7
    80008a04:	00b00813          	li	a6,11
    80008a08:	0ff5f593          	andi	a1,a1,255
    80008a0c:	fff6071b          	addiw	a4,a2,-1
    80008a10:	1b06e663          	bltu	a3,a6,80008bbc <__memset+0x1d4>
    80008a14:	1cd76463          	bltu	a4,a3,80008bdc <__memset+0x1f4>
    80008a18:	1a078e63          	beqz	a5,80008bd4 <__memset+0x1ec>
    80008a1c:	00b50023          	sb	a1,0(a0)
    80008a20:	00100713          	li	a4,1
    80008a24:	1ae78463          	beq	a5,a4,80008bcc <__memset+0x1e4>
    80008a28:	00b500a3          	sb	a1,1(a0)
    80008a2c:	00200713          	li	a4,2
    80008a30:	1ae78a63          	beq	a5,a4,80008be4 <__memset+0x1fc>
    80008a34:	00b50123          	sb	a1,2(a0)
    80008a38:	00300713          	li	a4,3
    80008a3c:	18e78463          	beq	a5,a4,80008bc4 <__memset+0x1dc>
    80008a40:	00b501a3          	sb	a1,3(a0)
    80008a44:	00400713          	li	a4,4
    80008a48:	1ae78263          	beq	a5,a4,80008bec <__memset+0x204>
    80008a4c:	00b50223          	sb	a1,4(a0)
    80008a50:	00500713          	li	a4,5
    80008a54:	1ae78063          	beq	a5,a4,80008bf4 <__memset+0x20c>
    80008a58:	00b502a3          	sb	a1,5(a0)
    80008a5c:	00700713          	li	a4,7
    80008a60:	18e79e63          	bne	a5,a4,80008bfc <__memset+0x214>
    80008a64:	00b50323          	sb	a1,6(a0)
    80008a68:	00700e93          	li	t4,7
    80008a6c:	00859713          	slli	a4,a1,0x8
    80008a70:	00e5e733          	or	a4,a1,a4
    80008a74:	01059e13          	slli	t3,a1,0x10
    80008a78:	01c76e33          	or	t3,a4,t3
    80008a7c:	01859313          	slli	t1,a1,0x18
    80008a80:	006e6333          	or	t1,t3,t1
    80008a84:	02059893          	slli	a7,a1,0x20
    80008a88:	40f60e3b          	subw	t3,a2,a5
    80008a8c:	011368b3          	or	a7,t1,a7
    80008a90:	02859813          	slli	a6,a1,0x28
    80008a94:	0108e833          	or	a6,a7,a6
    80008a98:	03059693          	slli	a3,a1,0x30
    80008a9c:	003e589b          	srliw	a7,t3,0x3
    80008aa0:	00d866b3          	or	a3,a6,a3
    80008aa4:	03859713          	slli	a4,a1,0x38
    80008aa8:	00389813          	slli	a6,a7,0x3
    80008aac:	00f507b3          	add	a5,a0,a5
    80008ab0:	00e6e733          	or	a4,a3,a4
    80008ab4:	000e089b          	sext.w	a7,t3
    80008ab8:	00f806b3          	add	a3,a6,a5
    80008abc:	00e7b023          	sd	a4,0(a5)
    80008ac0:	00878793          	addi	a5,a5,8
    80008ac4:	fed79ce3          	bne	a5,a3,80008abc <__memset+0xd4>
    80008ac8:	ff8e7793          	andi	a5,t3,-8
    80008acc:	0007871b          	sext.w	a4,a5
    80008ad0:	01d787bb          	addw	a5,a5,t4
    80008ad4:	0ce88e63          	beq	a7,a4,80008bb0 <__memset+0x1c8>
    80008ad8:	00f50733          	add	a4,a0,a5
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0017871b          	addiw	a4,a5,1
    80008ae4:	0cc77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0027871b          	addiw	a4,a5,2
    80008af4:	0ac77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0037871b          	addiw	a4,a5,3
    80008b04:	0ac77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0047871b          	addiw	a4,a5,4
    80008b14:	08c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0057871b          	addiw	a4,a5,5
    80008b24:	08c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0067871b          	addiw	a4,a5,6
    80008b34:	06c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0077871b          	addiw	a4,a5,7
    80008b44:	06c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0087871b          	addiw	a4,a5,8
    80008b54:	04c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	0097871b          	addiw	a4,a5,9
    80008b64:	04c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	00a7871b          	addiw	a4,a5,10
    80008b74:	02c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	00b7871b          	addiw	a4,a5,11
    80008b84:	02c77663          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	00c7871b          	addiw	a4,a5,12
    80008b94:	00c77e63          	bgeu	a4,a2,80008bb0 <__memset+0x1c8>
    80008b98:	00e50733          	add	a4,a0,a4
    80008b9c:	00b70023          	sb	a1,0(a4)
    80008ba0:	00d7879b          	addiw	a5,a5,13
    80008ba4:	00c7f663          	bgeu	a5,a2,80008bb0 <__memset+0x1c8>
    80008ba8:	00f507b3          	add	a5,a0,a5
    80008bac:	00b78023          	sb	a1,0(a5)
    80008bb0:	00813403          	ld	s0,8(sp)
    80008bb4:	01010113          	addi	sp,sp,16
    80008bb8:	00008067          	ret
    80008bbc:	00b00693          	li	a3,11
    80008bc0:	e55ff06f          	j	80008a14 <__memset+0x2c>
    80008bc4:	00300e93          	li	t4,3
    80008bc8:	ea5ff06f          	j	80008a6c <__memset+0x84>
    80008bcc:	00100e93          	li	t4,1
    80008bd0:	e9dff06f          	j	80008a6c <__memset+0x84>
    80008bd4:	00000e93          	li	t4,0
    80008bd8:	e95ff06f          	j	80008a6c <__memset+0x84>
    80008bdc:	00000793          	li	a5,0
    80008be0:	ef9ff06f          	j	80008ad8 <__memset+0xf0>
    80008be4:	00200e93          	li	t4,2
    80008be8:	e85ff06f          	j	80008a6c <__memset+0x84>
    80008bec:	00400e93          	li	t4,4
    80008bf0:	e7dff06f          	j	80008a6c <__memset+0x84>
    80008bf4:	00500e93          	li	t4,5
    80008bf8:	e75ff06f          	j	80008a6c <__memset+0x84>
    80008bfc:	00600e93          	li	t4,6
    80008c00:	e6dff06f          	j	80008a6c <__memset+0x84>

0000000080008c04 <__memmove>:
    80008c04:	ff010113          	addi	sp,sp,-16
    80008c08:	00813423          	sd	s0,8(sp)
    80008c0c:	01010413          	addi	s0,sp,16
    80008c10:	0e060863          	beqz	a2,80008d00 <__memmove+0xfc>
    80008c14:	fff6069b          	addiw	a3,a2,-1
    80008c18:	0006881b          	sext.w	a6,a3
    80008c1c:	0ea5e863          	bltu	a1,a0,80008d0c <__memmove+0x108>
    80008c20:	00758713          	addi	a4,a1,7
    80008c24:	00a5e7b3          	or	a5,a1,a0
    80008c28:	40a70733          	sub	a4,a4,a0
    80008c2c:	0077f793          	andi	a5,a5,7
    80008c30:	00f73713          	sltiu	a4,a4,15
    80008c34:	00174713          	xori	a4,a4,1
    80008c38:	0017b793          	seqz	a5,a5
    80008c3c:	00e7f7b3          	and	a5,a5,a4
    80008c40:	10078863          	beqz	a5,80008d50 <__memmove+0x14c>
    80008c44:	00900793          	li	a5,9
    80008c48:	1107f463          	bgeu	a5,a6,80008d50 <__memmove+0x14c>
    80008c4c:	0036581b          	srliw	a6,a2,0x3
    80008c50:	fff8081b          	addiw	a6,a6,-1
    80008c54:	02081813          	slli	a6,a6,0x20
    80008c58:	01d85893          	srli	a7,a6,0x1d
    80008c5c:	00858813          	addi	a6,a1,8
    80008c60:	00058793          	mv	a5,a1
    80008c64:	00050713          	mv	a4,a0
    80008c68:	01088833          	add	a6,a7,a6
    80008c6c:	0007b883          	ld	a7,0(a5)
    80008c70:	00878793          	addi	a5,a5,8
    80008c74:	00870713          	addi	a4,a4,8
    80008c78:	ff173c23          	sd	a7,-8(a4)
    80008c7c:	ff0798e3          	bne	a5,a6,80008c6c <__memmove+0x68>
    80008c80:	ff867713          	andi	a4,a2,-8
    80008c84:	02071793          	slli	a5,a4,0x20
    80008c88:	0207d793          	srli	a5,a5,0x20
    80008c8c:	00f585b3          	add	a1,a1,a5
    80008c90:	40e686bb          	subw	a3,a3,a4
    80008c94:	00f507b3          	add	a5,a0,a5
    80008c98:	06e60463          	beq	a2,a4,80008d00 <__memmove+0xfc>
    80008c9c:	0005c703          	lbu	a4,0(a1)
    80008ca0:	00e78023          	sb	a4,0(a5)
    80008ca4:	04068e63          	beqz	a3,80008d00 <__memmove+0xfc>
    80008ca8:	0015c603          	lbu	a2,1(a1)
    80008cac:	00100713          	li	a4,1
    80008cb0:	00c780a3          	sb	a2,1(a5)
    80008cb4:	04e68663          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cb8:	0025c603          	lbu	a2,2(a1)
    80008cbc:	00200713          	li	a4,2
    80008cc0:	00c78123          	sb	a2,2(a5)
    80008cc4:	02e68e63          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cc8:	0035c603          	lbu	a2,3(a1)
    80008ccc:	00300713          	li	a4,3
    80008cd0:	00c781a3          	sb	a2,3(a5)
    80008cd4:	02e68663          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cd8:	0045c603          	lbu	a2,4(a1)
    80008cdc:	00400713          	li	a4,4
    80008ce0:	00c78223          	sb	a2,4(a5)
    80008ce4:	00e68e63          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008ce8:	0055c603          	lbu	a2,5(a1)
    80008cec:	00500713          	li	a4,5
    80008cf0:	00c782a3          	sb	a2,5(a5)
    80008cf4:	00e68663          	beq	a3,a4,80008d00 <__memmove+0xfc>
    80008cf8:	0065c703          	lbu	a4,6(a1)
    80008cfc:	00e78323          	sb	a4,6(a5)
    80008d00:	00813403          	ld	s0,8(sp)
    80008d04:	01010113          	addi	sp,sp,16
    80008d08:	00008067          	ret
    80008d0c:	02061713          	slli	a4,a2,0x20
    80008d10:	02075713          	srli	a4,a4,0x20
    80008d14:	00e587b3          	add	a5,a1,a4
    80008d18:	f0f574e3          	bgeu	a0,a5,80008c20 <__memmove+0x1c>
    80008d1c:	02069613          	slli	a2,a3,0x20
    80008d20:	02065613          	srli	a2,a2,0x20
    80008d24:	fff64613          	not	a2,a2
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00c78633          	add	a2,a5,a2
    80008d30:	fff7c683          	lbu	a3,-1(a5)
    80008d34:	fff78793          	addi	a5,a5,-1
    80008d38:	fff70713          	addi	a4,a4,-1
    80008d3c:	00d70023          	sb	a3,0(a4)
    80008d40:	fec798e3          	bne	a5,a2,80008d30 <__memmove+0x12c>
    80008d44:	00813403          	ld	s0,8(sp)
    80008d48:	01010113          	addi	sp,sp,16
    80008d4c:	00008067          	ret
    80008d50:	02069713          	slli	a4,a3,0x20
    80008d54:	02075713          	srli	a4,a4,0x20
    80008d58:	00170713          	addi	a4,a4,1
    80008d5c:	00e50733          	add	a4,a0,a4
    80008d60:	00050793          	mv	a5,a0
    80008d64:	0005c683          	lbu	a3,0(a1)
    80008d68:	00178793          	addi	a5,a5,1
    80008d6c:	00158593          	addi	a1,a1,1
    80008d70:	fed78fa3          	sb	a3,-1(a5)
    80008d74:	fee798e3          	bne	a5,a4,80008d64 <__memmove+0x160>
    80008d78:	f89ff06f          	j	80008d00 <__memmove+0xfc>
	...
