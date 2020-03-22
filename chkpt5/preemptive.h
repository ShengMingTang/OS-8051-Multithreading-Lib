#ifndef PREEMPTIVE_H
#define PREEMPTIVE_H

#define MAXTHREADS 4
#define BUFF_SIZE 7

typedef char ThreadID; // single-byte ID for threads, >0 valid, else invalid
typedef void(*FunctionPtr)(void); // 2-byte pointer to function

/* create and start a thread to run function fp*/
ThreadID ThreadCreate(FunctionPtr fp);

/*
current thread switches itself out, let others to run
include picking the next available thread in roun-robin
*/
void ThreadYield(void);

/* called by the current thread to terminate itself*/
void ThreadExit(void);

/* --------------------------------------------------------------------------- */
void myTimer0Handler(void);
/* thread manager thread , always occupy thread0*/
void ThreadManager(void);
/* --------------------------------------------------------------------------- */
#define CNAME(s) _ ## s


#define SemaphoreCreate(s, n){\
    s = n;\
}
#define SemephoreCountedLabel(s) s ## $

#define SemaphoreWait(s){\
    SemaphoreWaitBody(s, __COUNTER__)\
}

#define SemaphoreWaitBody(s, label){\
    __asm\
    SemephoreCountedLabel(label):\
        MOV ACC, CNAME(s)\
        JB ACC.7, SemephoreCountedLabel(label)\
        JZ SemephoreCountedLabel(label)\
    DEC CNAME(s)\
    __endasm;\
}

#define SemaphoreSignal(s){\
    __asm\
        INC CNAME(s)\
    __endasm;\
}
/* --------------------------------------------------------------------------- */
#define LOG(info)\
{\
    __asm\
        MOV _EA, 0x0\
    __endasm;\
    SemaphoreWait(empty);\
    SemaphoreWait(mutex);\
    buff[in] = info;\
    in = (in + 1) % BUFF_SIZE;\
    SemaphoreSignal(mutex);\
    __asm\
        MOV _EA, 0x1\
    __endasm;\
}
#define PRINT()\
{\
    if(in != out){\
        __asm\
            MOV _EA, 0x0\
        __endasm;\
        SemaphoreWait(mutex);\
        SBUF = buff[out];\
        out = (out + 1) % BUFF_SIZE;\
        while(!TI){}\
        TI = 0;\
        SemaphoreSignal(mutex);\
        SemaphoreSignal(empty);\
        __asm\
            MOV _EA, 0x1\
        __endasm;\
    }\
}
void delay(unsigned char n);
unsigned char now();
#endif