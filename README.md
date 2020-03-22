# OS-8051-Multithreading-Lib
 CS 3423 Operating System Term Project

## General
> Create threads for main(), producer(), consumer() using cooperative method or preemptive method
> There is one shared queue for producer(s) to fill (with alphanumeric characters) and consumer() will take each of them to output to UART
> Producers produce alphanumeric characters('0'~'1', 'A'~'Z'), consumer won't generate.
> Due to the hardware limit of 8051 chips, it can only support 4 threads
> In checkpoit 5, one thread is reserved for scheduler, user has 3 threads available
## Checkpoint 1
> Cooperative threads
## Checkpoint 2
> Preemptive threads
## Checkpoint 3
> Semaphore APIs for synchronization. SemaphoreCreate(), SemaphoreWait(), SemaphoreSignal()
## Checkpoint 4
> Fair schduling for 2 produers and 1 consumer
## Checkpoint 5
> Parting lot problem of 5 cars compete for 2 lots
> Please refer to ppc5.pdf if you want to know the details
-----
## typescript
> $ cd to dir_name // the one you want to verify\
> $ make clean\
> $ make\
> Open edsim51 and load the generated .hex file
