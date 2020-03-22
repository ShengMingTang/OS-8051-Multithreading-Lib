;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Wed Jan 15 13:09:18 2020
;--------------------------------------------------------
	.module testparking
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genRAMCLEAR
	.globl __sdcc_gsinit_startup
	.globl _main
	.globl _timer0_ISR
	.globl _delay
	.globl _ThreadCreate
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _buff
	.globl _empty
	.globl _mutex
	.globl _slot
	.globl _out
	.globl _in
	.globl _spot
	.globl _CarA
	.globl _CarB
	.globl _CarC
	.globl _CarD
	.globl _CarE
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_spot	=	0x0033
_in	=	0x0034
_out	=	0x0035
_slot	=	0x0036
_mutex	=	0x0037
_empty	=	0x0038
_buff	=	0x0039
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;	testparking.c:26: void timer0_ISR(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	testparking.c:30: __endasm;
	ljmp _myTimer0Handler
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	testparking.c:33: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testparking.c:37: __endasm;
	MOV _EA, #0
;	testparking.c:38: TMOD |= 0x20; // preserve modification in bootstrap
	orl	_TMOD,#0x20
;	testparking.c:39: TH1 = -6; // baud rate
	mov	_TH1,#0xFA
;	testparking.c:40: SCON = 0x50; // 8-bit 1 stop REN
	mov	_SCON,#0x50
;	testparking.c:41: TR1 = 1; // start timer 1
	setb	_TR1
;	testparking.c:44: for(i = 0; i < BUFF_SIZE; i++)
	mov	_i,#0x00
00105$:
;	testparking.c:45: buff[i] = 0;
	mov	a,_i
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x00
;	testparking.c:44: for(i = 0; i < BUFF_SIZE; i++)
	inc	_i
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x87
	jc	00105$
;	testparking.c:46: in = out = 0;
	mov	_out,#0x00
	mov	_in,#0x00
;	testparking.c:47: spot = 0;
	mov	_spot,#0x00
;	testparking.c:48: TI = 1;
	setb	_TI
;	testparking.c:50: SemaphoreCreate(mutex, 1);
	mov	_mutex,#0x01
;	testparking.c:51: SemaphoreCreate(empty, BUFF_SIZE);
	mov	_empty,#0x07
;	testparking.c:52: SemaphoreCreate(slot, 2);
	mov	_slot,#0x02
;	testparking.c:55: __endasm;
	MOV _EA, #1
;	testparking.c:56: ThreadCreate(&CarA);
	mov	dptr,#_CarA
	lcall	_ThreadCreate
;	testparking.c:57: ThreadCreate(&CarB);
	mov	dptr,#_CarB
	lcall	_ThreadCreate
;	testparking.c:58: ThreadCreate(&CarC);
	mov	dptr,#_CarC
	lcall	_ThreadCreate
;	testparking.c:59: ThreadCreate(&CarD);
	mov	dptr,#_CarD
	lcall	_ThreadCreate
;	testparking.c:60: ThreadCreate(&CarE);
	mov	dptr,#_CarE
	lcall	_ThreadCreate
;	testparking.c:62: while(1) {}
00103$:
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testparking.c:64: void _sdcc_gsinit_startup(void)
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testparking.c:68: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:70: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testparking.c:71: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testparking.c:72: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CarA'
;------------------------------------------------------------
;	testparking.c:74: void CarA(void)
;	-----------------------------------------
;	 function CarA
;	-----------------------------------------
_CarA:
;	testparking.c:76: SemaphoreWait(slot);
	 0$:
	MOV ACC, _slot 
	JB ACC.7, 0$ 
	JZ 0$ 
	DEC _slot 
;	testparking.c:77: if(!(spot & 0x0F)){
	mov	a,_spot
	anl	a,#0x0F
	jz	00110$
	ljmp	00102$
00110$:
;	testparking.c:78: LOG('A');
	MOV _EA, 0x0 
	 1$:
	MOV ACC, _empty 
	JB ACC.7, 1$ 
	JZ 1$ 
	DEC _empty 
	 2$:
	MOV ACC, _mutex 
	JB ACC.7, 2$ 
	JZ 2$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x41
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:79: spot |= 1;
	orl	_spot,#0x01
;	testparking.c:80: delay(A_DELAY);
	mov	dpl,#0x03
	lcall	_delay
;	testparking.c:81: LOG('A');
	MOV _EA, 0x0 
	 3$:
	MOV ACC, _empty 
	JB ACC.7, 3$ 
	JZ 3$ 
	DEC _empty 
	 4$:
	MOV ACC, _mutex 
	JB ACC.7, 4$ 
	JZ 4$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x41
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:82: spot &= (~0x0F);
	anl	_spot,#0xF0
;	testparking.c:83: SemaphoreSignal(slot);
	INC _slot 
	ret
00102$:
;	testparking.c:86: LOG('a');
	MOV _EA, 0x0 
	 5$:
	MOV ACC, _empty 
	JB ACC.7, 5$ 
	JZ 5$ 
	DEC _empty 
	 6$:
	MOV ACC, _mutex 
	JB ACC.7, 6$ 
	JZ 6$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x61
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:87: spot |= (1 << 4);
	orl	_spot,#0x10
;	testparking.c:88: delay(A_DELAY);
	mov	dpl,#0x03
	lcall	_delay
;	testparking.c:89: LOG('a');
	MOV _EA, 0x0 
	 7$:
	MOV ACC, _empty 
	JB ACC.7, 7$ 
	JZ 7$ 
	DEC _empty 
	 8$:
	MOV ACC, _mutex 
	JB ACC.7, 8$ 
	JZ 8$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x61
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:90: spot &= (~0xF0);
	anl	_spot,#0x0F
;	testparking.c:91: SemaphoreSignal(slot);
	INC _slot 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CarB'
;------------------------------------------------------------
;	testparking.c:94: void CarB(void)
;	-----------------------------------------
;	 function CarB
;	-----------------------------------------
_CarB:
;	testparking.c:96: SemaphoreWait(slot);
	 9$:
	MOV ACC, _slot 
	JB ACC.7, 9$ 
	JZ 9$ 
	DEC _slot 
;	testparking.c:97: if(!(spot & 0x0F)){
	mov	a,_spot
	anl	a,#0x0F
	jz	00110$
	ljmp	00102$
00110$:
;	testparking.c:98: LOG('B');
	MOV _EA, 0x0 
	 10$:
	MOV ACC, _empty 
	JB ACC.7, 10$ 
	JZ 10$ 
	DEC _empty 
	 11$:
	MOV ACC, _mutex 
	JB ACC.7, 11$ 
	JZ 11$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x42
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:99: spot |= 2;
	orl	_spot,#0x02
;	testparking.c:100: delay(B_DELAY);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:101: LOG('B');
	MOV _EA, 0x0 
	 12$:
	MOV ACC, _empty 
	JB ACC.7, 12$ 
	JZ 12$ 
	DEC _empty 
	 13$:
	MOV ACC, _mutex 
	JB ACC.7, 13$ 
	JZ 13$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x42
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:102: spot &= (~0x0F);
	anl	_spot,#0xF0
;	testparking.c:103: SemaphoreSignal(slot);
	INC _slot 
	ret
00102$:
;	testparking.c:106: LOG('b');
	MOV _EA, 0x0 
	 14$:
	MOV ACC, _empty 
	JB ACC.7, 14$ 
	JZ 14$ 
	DEC _empty 
	 15$:
	MOV ACC, _mutex 
	JB ACC.7, 15$ 
	JZ 15$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x62
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:107: spot |= (2 << 4);
	orl	_spot,#0x20
;	testparking.c:108: delay(B_DELAY);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:109: LOG('b');
	MOV _EA, 0x0 
	 16$:
	MOV ACC, _empty 
	JB ACC.7, 16$ 
	JZ 16$ 
	DEC _empty 
	 17$:
	MOV ACC, _mutex 
	JB ACC.7, 17$ 
	JZ 17$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x62
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:110: spot &= (~0xF0);
	anl	_spot,#0x0F
;	testparking.c:111: SemaphoreSignal(slot);
	INC _slot 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CarC'
;------------------------------------------------------------
;	testparking.c:114: void CarC(void)
;	-----------------------------------------
;	 function CarC
;	-----------------------------------------
_CarC:
;	testparking.c:116: SemaphoreWait(slot);
	 18$:
	MOV ACC, _slot 
	JB ACC.7, 18$ 
	JZ 18$ 
	DEC _slot 
;	testparking.c:117: if(!(spot & 0x0F)){
	mov	a,_spot
	anl	a,#0x0F
	jz	00110$
	ljmp	00102$
00110$:
;	testparking.c:118: LOG('C');
	MOV _EA, 0x0 
	 19$:
	MOV ACC, _empty 
	JB ACC.7, 19$ 
	JZ 19$ 
	DEC _empty 
	 20$:
	MOV ACC, _mutex 
	JB ACC.7, 20$ 
	JZ 20$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x43
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:119: spot |= 3;
	orl	_spot,#0x03
;	testparking.c:120: delay(C_DELAY);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:121: LOG('C');
	MOV _EA, 0x0 
	 21$:
	MOV ACC, _empty 
	JB ACC.7, 21$ 
	JZ 21$ 
	DEC _empty 
	 22$:
	MOV ACC, _mutex 
	JB ACC.7, 22$ 
	JZ 22$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x43
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:122: spot &= (~0x0F);
	anl	_spot,#0xF0
;	testparking.c:123: SemaphoreSignal(slot);
	INC _slot 
	ret
00102$:
;	testparking.c:126: LOG('c');
	MOV _EA, 0x0 
	 23$:
	MOV ACC, _empty 
	JB ACC.7, 23$ 
	JZ 23$ 
	DEC _empty 
	 24$:
	MOV ACC, _mutex 
	JB ACC.7, 24$ 
	JZ 24$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x63
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:127: spot |= (3 << 4);
	orl	_spot,#0x30
;	testparking.c:128: delay(C_DELAY);
	mov	dpl,#0x02
	lcall	_delay
;	testparking.c:129: LOG('c');
	MOV _EA, 0x0 
	 25$:
	MOV ACC, _empty 
	JB ACC.7, 25$ 
	JZ 25$ 
	DEC _empty 
	 26$:
	MOV ACC, _mutex 
	JB ACC.7, 26$ 
	JZ 26$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x63
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:130: spot &= (~0xF0);
	anl	_spot,#0x0F
;	testparking.c:131: SemaphoreSignal(slot);
	INC _slot 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CarD'
;------------------------------------------------------------
;	testparking.c:134: void CarD(void)
;	-----------------------------------------
;	 function CarD
;	-----------------------------------------
_CarD:
;	testparking.c:136: SemaphoreWait(slot);
	 27$:
	MOV ACC, _slot 
	JB ACC.7, 27$ 
	JZ 27$ 
	DEC _slot 
;	testparking.c:137: if(!(spot & 0x0F)){
	mov	a,_spot
	anl	a,#0x0F
	jz	00110$
	ljmp	00102$
00110$:
;	testparking.c:138: LOG('D');
	MOV _EA, 0x0 
	 28$:
	MOV ACC, _empty 
	JB ACC.7, 28$ 
	JZ 28$ 
	DEC _empty 
	 29$:
	MOV ACC, _mutex 
	JB ACC.7, 29$ 
	JZ 29$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x44
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:139: spot |= 4;
	orl	_spot,#0x04
;	testparking.c:140: delay(D_DELAY);
	mov	dpl,#0x03
	lcall	_delay
;	testparking.c:141: LOG('D');
	MOV _EA, 0x0 
	 30$:
	MOV ACC, _empty 
	JB ACC.7, 30$ 
	JZ 30$ 
	DEC _empty 
	 31$:
	MOV ACC, _mutex 
	JB ACC.7, 31$ 
	JZ 31$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x44
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:142: spot &= (~0x0F);
	anl	_spot,#0xF0
;	testparking.c:143: SemaphoreSignal(slot);
	INC _slot 
	ret
00102$:
;	testparking.c:146: LOG('d');
	MOV _EA, 0x0 
	 32$:
	MOV ACC, _empty 
	JB ACC.7, 32$ 
	JZ 32$ 
	DEC _empty 
	 33$:
	MOV ACC, _mutex 
	JB ACC.7, 33$ 
	JZ 33$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x64
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:147: spot |= (4 << 4);
	orl	_spot,#0x40
;	testparking.c:148: delay(D_DELAY);
	mov	dpl,#0x03
	lcall	_delay
;	testparking.c:149: LOG('d');
	MOV _EA, 0x0 
	 34$:
	MOV ACC, _empty 
	JB ACC.7, 34$ 
	JZ 34$ 
	DEC _empty 
	 35$:
	MOV ACC, _mutex 
	JB ACC.7, 35$ 
	JZ 35$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x64
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:150: spot &= (~0xF0);
	anl	_spot,#0x0F
;	testparking.c:151: SemaphoreSignal(slot);
	INC _slot 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CarE'
;------------------------------------------------------------
;	testparking.c:154: void CarE(void)
;	-----------------------------------------
;	 function CarE
;	-----------------------------------------
_CarE:
;	testparking.c:156: SemaphoreWait(slot);
	 36$:
	MOV ACC, _slot 
	JB ACC.7, 36$ 
	JZ 36$ 
	DEC _slot 
;	testparking.c:157: if(!(spot & 0x0F)){
	mov	a,_spot
	anl	a,#0x0F
	jz	00110$
	ljmp	00102$
00110$:
;	testparking.c:158: LOG('E');
	MOV _EA, 0x0 
	 37$:
	MOV ACC, _empty 
	JB ACC.7, 37$ 
	JZ 37$ 
	DEC _empty 
	 38$:
	MOV ACC, _mutex 
	JB ACC.7, 38$ 
	JZ 38$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x45
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:159: spot |= 5;
	orl	_spot,#0x05
;	testparking.c:160: delay(E_DELAY);
	mov	dpl,#0x01
	lcall	_delay
;	testparking.c:161: LOG('E');
	MOV _EA, 0x0 
	 39$:
	MOV ACC, _empty 
	JB ACC.7, 39$ 
	JZ 39$ 
	DEC _empty 
	 40$:
	MOV ACC, _mutex 
	JB ACC.7, 40$ 
	JZ 40$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x45
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:162: spot &= (~0x0F);
	anl	_spot,#0xF0
;	testparking.c:163: SemaphoreSignal(slot);
	INC _slot 
	ret
00102$:
;	testparking.c:166: LOG('e');
	MOV _EA, 0x0 
	 41$:
	MOV ACC, _empty 
	JB ACC.7, 41$ 
	JZ 41$ 
	DEC _empty 
	 42$:
	MOV ACC, _mutex 
	JB ACC.7, 42$ 
	JZ 42$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x65
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:167: spot |= (5 << 4);
	orl	_spot,#0x50
;	testparking.c:168: delay(E_DELAY);
	mov	dpl,#0x01
	lcall	_delay
;	testparking.c:169: LOG('e');
	MOV _EA, 0x0 
	 43$:
	MOV ACC, _empty 
	JB ACC.7, 43$ 
	JZ 43$ 
	DEC _empty 
	 44$:
	MOV ACC, _mutex 
	JB ACC.7, 44$ 
	JZ 44$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x65
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x07
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	INC _mutex 
	MOV _EA, 0x1 
;	testparking.c:170: spot &= (~0xF0);
	anl	_spot,#0x0F
;	testparking.c:171: SemaphoreSignal(slot);
	INC _slot 
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
