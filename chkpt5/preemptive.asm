;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Wed Jan 15 13:09:18 2020
;--------------------------------------------------------
	.module preemptive
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _main
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
	.globl _i
	.globl _ThreadManager
	.globl _delay
	.globl _myTimer0Handler
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
	.globl _now
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
_SP_saved	=	0x0020
_thread_id	=	0x0024
_thread_bm	=	0x0025
_thread_ct	=	0x0026
_i	=	0x0027
_tmp	=	0x0028
_last_thread	=	0x002a
_time_elapsed	=	0x002b
_time_quatum	=	0x002c
_time_delay_record	=	0x002d
_time_sem	=	0x002f
_time_remain	=	0x0030
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	preemptive.c:52: void Bootstrap(void)
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	preemptive.c:56: __endasm;
	MOV _EA, #0
;	preemptive.c:58: thread_bm = 0;
	mov	_thread_bm,#0x00
;	preemptive.c:59: SemaphoreCreate(thread_ct, MAXTHREADS);
	mov	_thread_ct,#0x04
;	preemptive.c:60: SemaphoreCreate(time_sem, 1);
	mov	_time_sem,#0x01
;	preemptive.c:62: TMOD = 0;
	mov	_TMOD,#0x00
;	preemptive.c:63: IE = 0x82;
	mov	_IE,#0x82
;	preemptive.c:64: TR0 = 1;
	setb	_TR0
;	preemptive.c:65: PSW = 0;
	mov	_PSW,#0x00
;	preemptive.c:69: ThreadCreate(ThreadManager);
	mov	dptr,#_ThreadManager
	lcall	_ThreadCreate
;	preemptive.c:70: thread_id = ThreadCreate(&main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_thread_id,dpl
;	preemptive.c:71: last_thread = thread_id;
	mov	_last_thread,_thread_id
;	preemptive.c:74: time_quatum = -1;
	mov	_time_quatum,#0xFF
;	preemptive.c:75: time_elapsed = 0;
;	preemptive.c:76: time_delay_record = 0;
;	preemptive.c:78: RESTORESTATE;
	clr	a
	mov	_time_elapsed,a
	mov	_time_delay_record,a
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:81: __endasm;
	MOV _EA, #1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadManager'
;------------------------------------------------------------
;	preemptive.c:83: void ThreadManager(void)
;	-----------------------------------------
;	 function ThreadManager
;	-----------------------------------------
_ThreadManager:
;	preemptive.c:85: while(1){
00102$:
;	preemptive.c:86: ThreadYield();
	lcall	_ThreadYield
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:89: void delay(unsigned char n)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	preemptive.c:91: SemaphoreWait(time_sem);
	 0$:
	MOV ACC, _time_sem 
	JB ACC.7, 0$ 
	JZ 0$ 
	DEC _time_sem 
;	preemptive.c:94: __endasm;
	MOV _EA, #0
;	preemptive.c:95: tmp = 3 << (2 * thread_id);
	mov	a,_thread_id
	add	a,acc
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x03
	sjmp	00114$
00112$:
	add	a,acc
00114$:
	djnz	b,00112$
	mov	_tmp,a
;	preemptive.c:96: time_delay_record &= (~tmp); // clear
	mov	a,_tmp
	cpl	a
	anl	_time_delay_record,a
;	preemptive.c:97: tmp = time_quatum << (2 * thread_id);
	mov	a,_thread_id
	add	a,acc
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,_time_quatum
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	mov	_tmp,a
;	preemptive.c:98: time_delay_record |= tmp;
	mov	a,_tmp
	orl	_time_delay_record,a
;	preemptive.c:100: tmp = 1 << (4 + thread_id);
	mov	a,#0x04
	add	a,_thread_id
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00120$
00118$:
	add	a,acc
00120$:
	djnz	b,00118$
	mov	_tmp,a
;	preemptive.c:101: thread_bm &= (~tmp);
	mov	a,_tmp
	cpl	a
	mov	r7,a
	anl	_thread_bm,a
;	preemptive.c:102: thread_bm |= tmp;
	mov	a,_tmp
	orl	_thread_bm,a
;	preemptive.c:109: __endasm;
	MOV A, _thread_id
	DEC A
	ADD A, #_time_remain
	MOV R0, A
	MOV @R0, DPL
;	preemptive.c:110: SemaphoreSignal(time_sem);
	INC _time_sem 
;	preemptive.c:113: __endasm;
	MOV _EA, #1
;	preemptive.c:115: while(time_remain[thread_id - 1]){
00101$:
	mov	a,_thread_id
	dec	a
	add	a,#_time_remain
	mov	r1,a
	mov	a,@r1
	jnz	00101$
;	preemptive.c:118: SemaphoreWait(time_sem);
	 1$:
	MOV ACC, _time_sem 
	JB ACC.7, 1$ 
	JZ 1$ 
	DEC _time_sem 
;	preemptive.c:121: __endasm;
	MOV _EA, #0
;	preemptive.c:122: tmp = 3 << (2 * thread_id);
	mov	a,_thread_id
	add	a,acc
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x03
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	mov	_tmp,a
;	preemptive.c:123: time_delay_record &= (~tmp);
	mov	a,_tmp
	cpl	a
	mov	r7,a
	anl	_time_delay_record,a
;	preemptive.c:124: tmp = 1 << (4 + thread_id);
	mov	a,#0x04
	add	a,_thread_id
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00127$
00125$:
	add	a,acc
00127$:
	djnz	b,00125$
	mov	_tmp,a
;	preemptive.c:125: thread_bm &= (~tmp); // clear waiting
	mov	a,_tmp
	cpl	a
	mov	r7,a
	anl	_thread_bm,a
;	preemptive.c:126: SemaphoreSignal(time_sem);
	INC _time_sem 
;	preemptive.c:129: __endasm;
	MOV _EA, #1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:131: void myTimer0Handler(void)
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:135: __endasm;
	MOV _EA, #0
;	preemptive.c:136: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:142: __endasm;
	MOV _thread_id, #0
	MOV _PSW, #0
;	preemptive.c:143: SP = SP_saved[0];
	mov	_SP,_SP_saved
;	preemptive.c:145: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:146: time_quatum++;
	inc	_time_quatum
;	preemptive.c:147: time_quatum &= 3;
	anl	_time_quatum,#0x03
;	preemptive.c:149: for(i = 1; i < MAXTHREADS; i++){ // i is the i-th thread
	mov	_i,#0x01
00114$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	preemptive.c:150: tmp = time_delay_record >> (2 * i);
	clr	F0
	mov	b,#0x02
	mov	a,_i
	jnb	acc.7,00143$
	cpl	F0
	cpl	a
	inc	a
00143$:
	mul	ab
	jnb	F0,00144$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00144$:
	mov	b,a
	inc	b
	mov	a,_time_delay_record
	rlc	a
	mov	ov,c
	mov	a,_time_delay_record
	sjmp	00146$
00145$:
	mov	c,ov
	rrc	a
00146$:
	djnz	b,00145$
	mov	_tmp,a
;	preemptive.c:151: tmp &= 3;
	anl	_tmp,#0x03
;	preemptive.c:152: if(time_quatum == tmp){
	mov	a,_tmp
	cjne	a,_time_quatum,00115$
;	preemptive.c:153: time_remain[i - 1]--; // its epoch to decrement
	mov	a,_i
	dec	a
	add	a,#_time_remain
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	dec	a
	mov	@r1,a
00115$:
;	preemptive.c:149: for(i = 1; i < MAXTHREADS; i++){ // i is the i-th thread
	inc	_i
	sjmp	00114$
00103$:
;	preemptive.c:157: if(time_quatum == 0){
	mov	a,_time_quatum
	jnz	00105$
;	preemptive.c:158: LOG('X');
	MOV _EA, 0x0 
	 2$:
	MOV ACC, _empty 
	JB ACC.7, 2$ 
	JZ 2$ 
	DEC _empty 
	 3$:
	MOV ACC, _mutex 
	JB ACC.7, 3$ 
	JZ 3$ 
	DEC _mutex 
	mov	a,_in
	add	a,#_buff
	mov	r0,a
	mov	@r0,#0x58
	mov	a,_in
	mov	r6,a
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
;	preemptive.c:159: time_elapsed++;
	inc	_time_elapsed
00105$:
;	preemptive.c:161: if(time_quatum % 2){
	mov	a,_time_quatum
	mov	c,acc.7
	anl	a,#0x01
	jz	00150$
	jnc	00150$
	orl	a,#0xfe
00150$:
	jz	00112$
;	preemptive.c:162: PRINT();
	mov	a,_out
	cjne	a,_in,00152$
	sjmp	00112$
00152$:
	MOV _EA, 0x0 
	 4$:
	MOV ACC, _mutex 
	JB ACC.7, 4$ 
	JZ 4$ 
	DEC _mutex 
	mov	a,_out
	add	a,#_buff
	mov	r1,a
	mov	_SBUF,@r1
	mov	a,_out
	mov	r6,a
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
	mov	_out,r6
00106$:
	jbc	_TI,00153$
	sjmp	00106$
00153$:
	INC _mutex 
	INC _empty 
	MOV _EA, 0x1 
00112$:
;	preemptive.c:167: __endasm;
	MOV _EA, #1
;	preemptive.c:171: __endasm;
	RETI
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:173: ThreadID ThreadCreate(FunctionPtr fp)
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:175: SemaphoreWait(thread_ct);
	 5$:
	MOV ACC, _thread_ct 
	JB ACC.7, 5$ 
	JZ 5$ 
	DEC _thread_ct 
;	preemptive.c:178: __endasm;
	MOV _EA, #0
;	preemptive.c:180: for(i = 0; i < MAXTHREADS; i++){
	mov	_i,#0x00
00105$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	preemptive.c:181: tmp = 1 << i;
	mov	b,_i
	inc	b
	mov	a,#0x01
	sjmp	00121$
00119$:
	add	a,acc
00121$:
	djnz	b,00119$
	mov	_tmp,a
;	preemptive.c:182: if( (thread_bm & tmp) == 0 ){
	mov	a,_tmp
	anl	a,_thread_bm
	jnz	00106$
;	preemptive.c:184: thread_bm |= tmp; // set the bit to 1
	mov	a,_tmp
	orl	_thread_bm,a
;	preemptive.c:185: tmp = SP; // save current SP
	mov	_tmp,_SP
;	preemptive.c:186: SP = (0x40 + 0x10 * i) - 1; // init SP for SP_saved
	mov	a,_i
	swap	a
	anl	a,#0xF0
	mov	r7,a
	add	a,#0x3F
	mov	_SP,a
;	preemptive.c:187: i <<= 3;
	mov	a,_i
	swap	a
	rr	a
	anl	a,#0xF8
	mov	_i,a
;	preemptive.c:207: __endasm;
	MOV A, DPL
	MOV B, DPH
	MOV DPTR, #_ThreadExit
	PUSH DPL
	PUSH DPH
	MOV DPL, A
	MOV DPH, B
	PUSH DPL
	PUSH DPH
	MOV A, #0
	PUSH ACC
	PUSH ACC
	PUSH ACC
	PUSH ACC
	PUSH _i
	MOV A, #0x00
;	preemptive.c:208: i >>= 3;
	mov	a,_i
	swap	a
	rl	a
	anl	a,#0x1F
	jnb	acc.4,00123$
	orl	a,#0xE0
00123$:
	mov	_i,a
;	preemptive.c:209: SP_saved[i] = SP; // save SP for that thread
	mov	a,_i
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:211: SP = tmp; // restore SP
	mov	_SP,_tmp
;	preemptive.c:214: __endasm;
	MOV _EA, #0
;	preemptive.c:215: return i;
	mov	dpl,_i
	ret
00106$:
;	preemptive.c:180: for(i = 0; i < MAXTHREADS; i++){
	inc	_i
	ljmp	00105$
00103$:
;	preemptive.c:220: __endasm;
	MOV _EA, #1
;	preemptive.c:222: return -1;
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:224: void ThreadYield(void)
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:228: __endasm;
	MOV _EA, #0
;	preemptive.c:229: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:230: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	mov	_i,#0x01
00109$:
	clr	c
	mov	a,#(0x04 ^ 0x80)
	mov	b,_i
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	preemptive.c:231: tmp = last_thread + i;
	mov	a,_i
	add	a,_last_thread
	mov	_tmp,a
;	preemptive.c:232: tmp &= 3;
	anl	_tmp,#0x03
;	preemptive.c:233: tmp = 1 << tmp;
	mov	b,_tmp
	inc	b
	mov	a,#0x01
	sjmp	00140$
00138$:
	add	a,acc
00140$:
	djnz	b,00138$
	mov	_tmp,a
;	preemptive.c:234: if(thread_bm & tmp){ // next thread found
	mov	a,_tmp
	anl	a,_thread_bm
	jz	00110$
;	preemptive.c:235: last_thread += i;
	mov	a,_i
	add	a,_last_thread
	mov	_last_thread,a
;	preemptive.c:236: last_thread &= 3;
	anl	_last_thread,#0x03
;	preemptive.c:237: break;
	sjmp	00103$
00110$:
;	preemptive.c:230: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	inc	_i
	sjmp	00109$
00103$:
;	preemptive.c:242: for(i = 1; i < MAXTHREADS; i++){ // search for thread that finishes its delay
	mov	_i,#0x01
00112$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00107$
;	preemptive.c:243: tmp = 1 << (4 + i);
	mov	a,#0x04
	add	a,_i
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00145$
00143$:
	add	a,acc
00145$:
	djnz	b,00143$
	mov	_tmp,a
;	preemptive.c:244: if((tmp & (0xF0)) && !time_remain[i - 1]){
	mov	a,_tmp
	anl	a,#0xF0
	jz	00113$
	mov	a,_i
	dec	a
	add	a,#_time_remain
	mov	r1,a
	mov	a,@r1
	jnz	00113$
;	preemptive.c:245: last_thread = i;
	mov	_last_thread,_i
;	preemptive.c:246: break;  
	sjmp	00107$
00113$:
;	preemptive.c:242: for(i = 1; i < MAXTHREADS; i++){ // search for thread that finishes its delay
	inc	_i
	sjmp	00112$
00107$:
;	preemptive.c:251: thread_id = last_thread;
	mov	_thread_id,_last_thread
;	preemptive.c:252: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:257: __endasm;
	MOV _EA, #1
	RETI
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	preemptive.c:259: void ThreadExit(void)
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:263: __endasm;
	MOV _EA, #0
;	preemptive.c:265: tmp = 1 << thread_id;
	mov	b,_thread_id
	inc	b
	mov	a,#0x01
	sjmp	00111$
00109$:
	add	a,acc
00111$:
	djnz	b,00109$
	mov	_tmp,a
;	preemptive.c:266: thread_bm &= (~tmp); // clear bitmap
	mov	a,_tmp
	cpl	a
	mov	r7,a
	anl	_thread_bm,a
;	preemptive.c:268: SemaphoreSignal(thread_ct);
	INC _thread_ct 
;	preemptive.c:271: __endasm;
	MOV _EA, #1
;	preemptive.c:272: while(1) {} // wait for context switch
00102$:
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'now'
;------------------------------------------------------------
;	preemptive.c:274: unsigned char now()
;	-----------------------------------------
;	 function now
;	-----------------------------------------
_now:
;	preemptive.c:276: return time_quatum >= 2 ? time_elapsed + 1 : time_elapsed;
	clr	c
	mov	a,_time_quatum
	xrl	a,#0x80
	subb	a,#0x82
	jc	00103$
	mov	a,_time_elapsed
	inc	a
	mov	r7,a
	sjmp	00104$
00103$:
	mov	r7,_time_elapsed
00104$:
	mov	dpl,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
