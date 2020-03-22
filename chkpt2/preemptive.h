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
#endif