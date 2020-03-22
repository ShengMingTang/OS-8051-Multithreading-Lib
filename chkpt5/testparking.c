#include <8051.h>
#include "preemptive.h"
#define A_DELAY 3
#define B_DELAY 2
#define C_DELAY 2
#define D_DELAY 3
#define E_DELAY 1

extern char i;
__data __at(0x33) char spot;
__data __at(0x34) char in;
__data __at(0x35) char out;
// semaphores
__data __at(0x36) char slot;
__data __at(0x37) char mutex;
__data __at(0x38) char empty;

// bounded buffer
__data __at(0x39) char buff[BUFF_SIZE];

void CarA(void);
void CarB(void);
void CarC(void);
void CarD(void);
void CarE(void);
void timer0_ISR(void) __interrupt(1)
{
    __asm
        ljmp _myTimer0Handler
    __endasm;
}

void main(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    TMOD |= 0x20; // preserve modification in bootstrap
    TH1 = -6; // baud rate
    SCON = 0x50; // 8-bit 1 stop REN
    TR1 = 1; // start timer 1

    // init
    for(i = 0; i < BUFF_SIZE; i++)
        buff[i] = 0;
    in = out = 0;
    spot = 0;
    TI = 1;
    // init semaphore
    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(empty, BUFF_SIZE);
    SemaphoreCreate(slot, 2);
    __asm
        MOV _EA, #1
    __endasm;
    ThreadCreate(&CarA);
    ThreadCreate(&CarB);
    ThreadCreate(&CarC);
    ThreadCreate(&CarD);
    ThreadCreate(&CarE);
    // CarE();
    while(1) {}
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

void CarA(void)
{
    SemaphoreWait(slot);
    if(!(spot & 0x0F)){
        LOG('A');
        spot |= 1;
        delay(A_DELAY);
        LOG('A');
        spot &= (~0x0F);
        SemaphoreSignal(slot);
    }
    else{
        LOG('a');
        spot |= (1 << 4);
        delay(A_DELAY);
        LOG('a');
        spot &= (~0xF0);
        SemaphoreSignal(slot);
    }
}
void CarB(void)
{
    SemaphoreWait(slot);
    if(!(spot & 0x0F)){
        LOG('B');
        spot |= 2;
        delay(B_DELAY);
        LOG('B');
        spot &= (~0x0F);
        SemaphoreSignal(slot);
    }
    else{
        LOG('b');
        spot |= (2 << 4);
        delay(B_DELAY);
        LOG('b');
        spot &= (~0xF0);
        SemaphoreSignal(slot);
    }
}
void CarC(void)
{
    SemaphoreWait(slot);
    if(!(spot & 0x0F)){
        LOG('C');
        spot |= 3;
        delay(C_DELAY);
        LOG('C');
        spot &= (~0x0F);
        SemaphoreSignal(slot);
    }
    else{
        LOG('c');
        spot |= (3 << 4);
        delay(C_DELAY);
        LOG('c');
        spot &= (~0xF0);
        SemaphoreSignal(slot);
    }
}
void CarD(void)
{
    SemaphoreWait(slot);
    if(!(spot & 0x0F)){
        LOG('D');
        spot |= 4;
        delay(D_DELAY);
        LOG('D');
        spot &= (~0x0F);
        SemaphoreSignal(slot);
    }
    else{
        LOG('d');
        spot |= (4 << 4);
        delay(D_DELAY);
        LOG('d');
        spot &= (~0xF0);
        SemaphoreSignal(slot);
    }
}
void CarE(void)
{
    SemaphoreWait(slot);
    if(!(spot & 0x0F)){
        LOG('E');
        spot |= 5;
        delay(E_DELAY);
        LOG('E');
        spot &= (~0x0F);
        SemaphoreSignal(slot);
    }
    else{
        LOG('e');
        spot |= (5 << 4);
        delay(E_DELAY);
        LOG('e');
        spot &= (~0xF0);
        SemaphoreSignal(slot);
    }
}