#include <8051.h>
#include "preemptive.h"
#define BUFF_SIZE 3
#define CH_NUM 26
__data __at(0x30) char in;
__data __at(0x31) char out;
__data __at(0x32) char idx;
__data __at(0x33) char i;
__data __at(0x34) char imm;
// semaphores
__data __at(0x35) char mutex;
__data __at(0x36) char full;
__data __at(0x37) char empty;
// bounded buffer
__data __at(0x38) char buff[BUFF_SIZE];


void Producer(void);
void Consumer(void);
void timer0_ISR(void) __interrupt(1)
{
    __asm
        ljmp _myTimer0Handler
    __endasm;
}

void main(void)
{
    TMOD |= 0x20; // preserve modification in bootstrap
    TH1 = -6; // baud rate
    SCON = 0x50; // 8-bit 1 stop REN
    TR1 = 1; // start timer 1

    // init
    for(i = 0; i < BUFF_SIZE; i++)
        buff[i] = 0;
    in = out = 0;

    // init semaphore
    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(full, 0);
    SemaphoreCreate(empty, BUFF_SIZE);

    // spawn threads
    ThreadCreate(&Producer);
    Consumer();
    // ThreadCreate(&Consumer);
    // Producer();
}
void _sdcc_gsinit_startup(void)
{
    __asm
        ljmp _Bootstrap
    __endasm;
}
void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}
void Producer(void)
{
    idx = 0;
    in = 0;
    while(1){
        imm = 'A';
        imm += idx % CH_NUM;
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
        buff[in] = imm;
        idx = (idx + 1) % CH_NUM;
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
        in = (in + 1) % BUFF_SIZE;
    }
}
void Consumer(void)
{
    TI = 1;
    out = 0;
    while(1){
        SemaphoreWait(full);
        SemaphoreWait(mutex);
        SBUF = buff[out];
        SemaphoreSignal(mutex);
        SemaphoreSignal(empty);
        while(!TI){} // not ready
        out = (out + 1) % BUFF_SIZE;
        TI = 0;
    }
}