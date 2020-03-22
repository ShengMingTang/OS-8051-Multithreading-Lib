;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Wed Dec 11 14:34:40 2019
;--------------------------------------------------------
	.module testpreemptive
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
	.globl _full
	.globl _mutex
	.globl _imm
	.globl _i
	.globl _idx
	.globl _out
	.globl _in
	.globl _Producer
	.globl _Consumer
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
_in	=	0x0030
_out	=	0x0031
_idx	=	0x0032
_i	=	0x0033
_imm	=	0x0034
_mutex	=	0x0035
_full	=	0x0036
_empty	=	0x0037
_buff	=	0x0038
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
;	testpreemptive.c:20: void timer0_ISR(void) __interrupt(1)
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
;	testpreemptive.c:24: __endasm;
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
;	testpreemptive.c:27: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	testpreemptive.c:29: TMOD |= 0x20; // preserve modification in bootstrap
	orl	_TMOD,#0x20
;	testpreemptive.c:30: TH1 = -6; // baud rate
	mov	_TH1,#0xFA
;	testpreemptive.c:31: SCON = 0x50; // 8-bit 1 stop REN
	mov	_SCON,#0x50
;	testpreemptive.c:32: TR1 = 1; // start timer 1
	setb	_TR1
;	testpreemptive.c:35: for(i = 0; i < BUFF_SIZE; i++)
	mov	_i,#0x00
00103$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00101$
;	testpreemptive.c:36: buff[i] = 0;
	mov	a,_i
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x00
;	testpreemptive.c:35: for(i = 0; i < BUFF_SIZE; i++)
	inc	_i
	sjmp	00103$
00101$:
;	testpreemptive.c:37: in = out = 0;
	mov	_out,#0x00
	mov	_in,#0x00
;	testpreemptive.c:40: SemaphoreCreate(mutex, 1);
	mov	_mutex,#0x01
;	testpreemptive.c:41: SemaphoreCreate(full, 0);
	mov	_full,#0x00
;	testpreemptive.c:42: SemaphoreCreate(empty, 3);
	mov	_empty,#0x03
;	testpreemptive.c:45: ThreadCreate(&Producer);
	mov	dptr,#_Producer
	lcall	_ThreadCreate
;	testpreemptive.c:46: Consumer();
	ljmp	_Consumer
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	testpreemptive.c:50: void _sdcc_gsinit_startup(void)
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
;	testpreemptive.c:54: __endasm;
	ljmp _Bootstrap
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	testpreemptive.c:56: void _mcs51_genRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	testpreemptive.c:57: void _mcs51_genXINIT(void) {}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	testpreemptive.c:58: void _mcs51_genXRAMCLEAR(void) {}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Producer'
;------------------------------------------------------------
;	testpreemptive.c:59: void Producer(void)
;	-----------------------------------------
;	 function Producer
;	-----------------------------------------
_Producer:
;	testpreemptive.c:61: idx = 0;
	mov	_idx,#0x00
;	testpreemptive.c:62: in = 0;
	mov	_in,#0x00
;	testpreemptive.c:63: while(1){
00102$:
;	testpreemptive.c:64: imm = 'A';
	mov	_imm,#0x41
;	testpreemptive.c:65: imm += idx % CH_NUM;
	mov	b,#0x1a
	mov	a,_idx
	clr	F0
	jnb	acc.7,00109$
	setb	F0
	cpl	a
	inc	a
00109$:
	div	ab
	mov	a,b
	jnb	F0,00110$
	cpl	a
	inc	a
00110$:
	mov	r7,a
	add	a,_imm
	mov	_imm,a
;	testpreemptive.c:66: SemaphoreWait(empty);
	 0$:
	MOV ACC, _empty 
	JB ACC.7, 0$ 
	JZ 0$ 
	DEC _empty 
;	testpreemptive.c:67: SemaphoreWait(mutex);
	 1$:
	MOV ACC, _mutex 
	JB ACC.7, 1$ 
	JZ 1$ 
	DEC _mutex 
;	testpreemptive.c:68: buff[in] = imm;
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,_imm
;	testpreemptive.c:69: SemaphoreSignal(mutex);
	INC _mutex 
;	testpreemptive.c:70: SemaphoreSignal(full);
	INC _full 
;	testpreemptive.c:71: idx = (idx + 1) % CH_NUM;
	mov	r6,_idx
	mov	a,_idx
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x1A
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	_idx,r6
;	testpreemptive.c:72: in = (in + 1) % BUFF_SIZE;
	mov	r6,_in
	mov	a,_in
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_in,r6
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'Consumer'
;------------------------------------------------------------
;	testpreemptive.c:75: void Consumer(void)
;	-----------------------------------------
;	 function Consumer
;	-----------------------------------------
_Consumer:
;	testpreemptive.c:77: TI = 1;
	setb	_TI
;	testpreemptive.c:78: out = 0;
	mov	_out,#0x00
;	testpreemptive.c:79: while(1){
00105$:
;	testpreemptive.c:80: SemaphoreWait(full);
	 2$:
	MOV ACC, _full 
	JB ACC.7, 2$ 
	JZ 2$ 
	DEC _full 
;	testpreemptive.c:81: SemaphoreWait(mutex);
	 3$:
	MOV ACC, _mutex 
	JB ACC.7, 3$ 
	JZ 3$ 
	DEC _mutex 
;	testpreemptive.c:82: SBUF = buff[out];
	mov	a,_out
	add	a,#_buff
	mov	r1,a
	mov	_SBUF,@r1
;	testpreemptive.c:83: SemaphoreSignal(mutex);
	INC _mutex 
;	testpreemptive.c:84: SemaphoreSignal(empty);
	INC _empty 
;	testpreemptive.c:85: while(!TI){} // not ready
00101$:
	jnb	_TI,00101$
;	testpreemptive.c:86: out = (out + 1) % BUFF_SIZE;
	mov	r6,_out
	mov	a,_out
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x03
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_out,r6
;	testpreemptive.c:87: TI = 0;
	clr	_TI
	sjmp	00105$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
