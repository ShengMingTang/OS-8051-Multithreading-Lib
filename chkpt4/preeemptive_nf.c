// not fair version
#include <8051.h>
#include "preemptive.h"
 static __data __at(0x20) char SP_saved[4];
 static __data __at(0x24) char thread_id;
 static __data __at(0x25) char thread_bm;
 static __data __at(0x26) char thread_ct;
 static __data __at(0x27) char i;
 static __data __at(0x28) char tmp;
 static __data __at(0x29) char tmp2;
 static __data __at(0x2a) char last_thread;

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
    // init thread mgr vars
    SP_saved[0] = 0x3f;
    SP_saved[1] = 0x4f;
    SP_saved[2] = 0x5f;
    SP_saved[3] = 0x6f;
    thread_bm = 0;
    thread_id = -1;
    thread_ct = 0;

    TMOD = 0;
    IE = 0x82;
    TR0 = 1;
    PSW = 0;
    
    // create thread for main
    thread_id = ThreadCreate(&main);
    
    last_thread = 0;
    
    RESTORESTATE;
    
    __asm
        MOV _EA, #1
    __endasm;
}
ThreadID ThreadCreate(FunctionPtr fp)
{
    __asm
        MOV _EA, #0
    __endasm;

    if(thread_ct >= MAXTHREADS){
        __asm
            MOV _EA, #1
        __endasm;

        return -1;
    }
    else{
        for(i = 0; i < MAXTHREADS; i++){
            tmp = 1 << i;
            if( (thread_bm & tmp) == 0 ){
                // i is an available thread
                thread_bm |= tmp; // set the bit to 1
                thread_ct++;
                tmp = SP;
                SP = SP_saved[i]; // SP for the created thread
                tmp2 = i << 3; // for PSW.3 and PSW.4
                // push the return address
                // push ACC, B, DPL, DPH, PSW
                __asm
                    MOV A, #0 
                    PUSH DPL // address of fp so that it can resume
                    PUSH DPH 
                    PUSH ACC // ACC
                    PUSH ACC // B
                    PUSH ACC // DPL
                    PUSH ACC // DPH
                    MOV A, _tmp2 // address of PSW
                    PUSH ACC
                    MOV A, #0x00 // reset A, dummy
                __endasm;
                SP_saved[i] = SP; // save SP for that thread
                SP = tmp; // restore SP
                
                __asm
                    MOV _EA, #1
                __endasm;

                return i;
            }
        }
        __asm
            MOV _EA, #1
        __endasm;
        return -1;
    }
}
void ThreadYield(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    SAVESTATE;
    for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
        tmp = thread_id + i;
        tmp %= MAXTHREADS;
        tmp = 1 << tmp;
        if(thread_bm & tmp){ // next thread found
            thread_id += i;
            thread_id %= MAXTHREADS;
            break;
        }
    }
    RESTORESTATE;
    __asm
        MOV _EA, #1
    __endasm;
}
void ThreadExit(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    tmp = 1 << thread_id;
    tmp = ~tmp;
    thread_bm &= tmp; // clear bitmap
    thread_ct--;
    ThreadYield();
    __asm
        MOV _EA, #1
    __endasm;
}
extern char test;
void myTimer0Handler(void)
{
    __asm
        MOV _EA, #0
    __endasm;
    SAVESTATE;
    
    // Thread3
    __asm
        MOV _thread_id, #3
        MOV _PSW, #24
    __endasm;
    // thread_id = 3;
    // PSW = (3 << 3); // select  bank3

    SP = SP_saved[3];
    for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
        tmp2 = (last_thread + i);
        tmp2 %= MAXTHREADS;
        tmp2 = 1 << tmp2;
        if( thread_bm & tmp2){ // next thread found
            tmp = last_thread + i;
            tmp %= MAXTHREADS;
            break;
        }
    }
    last_thread = tmp;
    thread_id = last_thread;
    RESTORESTATE;
    __asm
        MOV _EA, #1
    __endasm;

    __asm
        RETI
    __endasm;
}