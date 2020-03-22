// fair version
#include <8051.h>
#include "preemptive.h"
static __data __at(0x20) char SP_saved[4];
static __data __at(0x24) char thread_id;
static __data __at(0x25) char thread_bm;
static __data __at(0x26) char thread_ct;
__data __at(0x27) char i;
static __data __at(0x28) char tmp;
static __data __at(0x2a) char last_thread;
// for delay
static __data __at(0x2b) unsigned char time_elapsed;
static __data __at(0x2c) char time_quatum;
static __data __at(0x2d) char time_delay_record; // aa-bb-cc-dd, each group denotes the time_quatum of each thread
static __data __at(0x2f) char time_sem;
static __data __at(0x30) char time_remain[3];

extern char in;
extern char out;
extern char buff[BUFF_SIZE];
extern char mutex;
extern char empty;
// save state
#define SAVESTATE \
{\
    __asm\
        PUSH ACC\
        PUSH B\
        PUSH DPL\
        PUSH DPH\
        PUSH PSW\
    __endasm;\
    SP_saved[thread_id] = SP;\
}
// restore state
#define RESTORESTATE \
{\
    SP = SP_saved[thread_id];\
    __asm\
        POP PSW\
        POP DPH\
        POP DPL\
        POP B\
        POP ACC\
    __endasm;\
}
/* PSW layout
    [7:0] = {CY, AC, F0, RS1, RS0, OV, --, P}
*/
extern void main(void);

void Bootstrap(void)
{
    __asm
        MOV _EA, #0
    __endasm;

    thread_bm = 0;
    SemaphoreCreate(thread_ct, MAXTHREADS);
    SemaphoreCreate(time_sem, 1);

    TMOD = 0;
    IE = 0x82;
    TR0 = 1;
    PSW = 0;
    // create thread for thread manager
    // ThreadCreate(&ThreadManager);
    // create thread for main
    ThreadCreate(ThreadManager);
    thread_id = ThreadCreate(&main);
    last_thread = thread_id;

    // delay chkpt5
    time_quatum = -1;
    time_elapsed = 0;
    time_delay_record = 0;

    RESTORESTATE;
    __asm
        MOV _EA, #1
    __endasm;
}
void ThreadManager(void)
{
    while(1){
        ThreadYield();
    }
}
void delay(unsigned char n)
{
    SemaphoreWait(time_sem);
   __asm
        MOV _EA, #0
    __endasm;
    tmp = 3 << (2 * thread_id);
    time_delay_record &= (~tmp); // clear
    tmp = time_quatum << (2 * thread_id);
    time_delay_record |= tmp;
    // is_waiting, stamp on bitmap [7:4]
    tmp = 1 << (4 + thread_id);
    thread_bm &= (~tmp);
    thread_bm |= tmp;
    __asm
        MOV A, _thread_id
        DEC A // time_remain[thread_id - 1] is where it's looking for
        ADD A, #_time_remain
        MOV R0, A
        MOV @R0, DPL
    __endasm;
    SemaphoreSignal(time_sem);
    __asm
        MOV _EA, #1
    __endasm;

    while(time_remain[thread_id - 1]){
        // ThreadYield();
    }
    SemaphoreWait(time_sem);
    __asm
        MOV _EA, #0
    __endasm;
    tmp = 3 << (2 * thread_id);
    time_delay_record &= (~tmp);
    tmp = 1 << (4 + thread_id);
    thread_bm &= (~tmp); // clear waiting
    SemaphoreSignal(time_sem);
    __asm
        MOV _EA, #1
    __endasm;
}
void myTimer0Handler(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    SAVESTATE;
    
    // Thread0
    __asm
        MOV _thread_id, #0
        MOV _PSW, #0
    __endasm;
    SP = SP_saved[0];

    RESTORESTATE;
    time_quatum++;
    time_quatum &= 3;

    for(i = 1; i < MAXTHREADS; i++){ // i is the i-th thread
        tmp = time_delay_record >> (2 * i);
        tmp &= 3;
        if(time_quatum == tmp){
            time_remain[i - 1]--; // its epoch to decrement
        }
    }

    if(time_quatum == 0){
        LOG('X');
        time_elapsed++;
    }
    if(time_quatum % 2){
        PRINT();
    }
    
    __asm
        MOV _EA, #1
    __endasm;

    __asm
        RETI
    __endasm;
}
ThreadID ThreadCreate(FunctionPtr fp)
{
    SemaphoreWait(thread_ct);
    __asm
        MOV _EA, #0
    __endasm;

    for(i = 0; i < MAXTHREADS; i++){
        tmp = 1 << i;
        if( (thread_bm & tmp) == 0 ){
            // i is an available thread
            thread_bm |= tmp; // set the bit to 1
            tmp = SP; // save current SP
            SP = (0x40 + 0x10 * i) - 1; // init SP for SP_saved
            i <<= 3;
            // push the return address
            // push ACC, B, DPL, DPH, PSW
            __asm
                MOV A, DPL // store function ptr
                MOV B, DPH // store function ptr
                MOV DPTR, #_ThreadExit
                PUSH DPL // address of ThreadExot so that it can safety quit
                PUSH DPH
                MOV DPL, A // restore function ptr
                MOV DPH, B // restore function ptr
                PUSH DPL // address of fp so that it can resume
                PUSH DPH 
                MOV A, #0
                PUSH ACC // ACC
                PUSH ACC // B
                PUSH ACC // DPL
                PUSH ACC // DPH
                PUSH _i
                MOV A, #0x00 // reset A, dummy
            __endasm;
            i >>= 3;
            SP_saved[i] = SP; // save SP for that thread

            SP = tmp; // restore SP
            __asm
                MOV _EA, #0
            __endasm;
            return i;
        }
    }
    __asm
        MOV _EA, #1
    __endasm;

    return -1;
}
void ThreadYield(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    SAVESTATE;
    for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
        tmp = last_thread + i;
        tmp &= 3;
        tmp = 1 << tmp;
        if(thread_bm & tmp){ // next thread found
            last_thread += i;
            last_thread &= 3;
            break;
        }
    }
    /* target threads that finished delay, overwrite previous results */
    
    for(i = 1; i < MAXTHREADS; i++){ // search for thread that finishes its delay
        tmp = 1 << (4 + i);
        if((tmp & (0xF0)) && !time_remain[i - 1]){
            last_thread = i;
            break;  
        }
    }

    /* ------------------- */
    thread_id = last_thread;
    RESTORESTATE;

    __asm
        MOV _EA, #1
        RETI
    __endasm;
}
void ThreadExit(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    
    tmp = 1 << thread_id;
    thread_bm &= (~tmp); // clear bitmap
    
    SemaphoreSignal(thread_ct);
    __asm
        MOV _EA, #1
    __endasm;
    while(1) {} // wait for context switch
}
unsigned char now()
{
    return time_quatum >= 2 ? time_elapsed + 1 : time_elapsed;
}