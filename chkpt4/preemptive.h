#ifndef PREEMPTIVE_H
#define PREEPTIVE_H

#define MAXTHREADS 3
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

void myTimer0Handler(void);

#define CNAME(s) _ ## s

// #define SemaphoreCreate(s, n){\
//     __asm\
//         MOV CNAME(s), #0nD\
//     __endasm;\
// }

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
#endif