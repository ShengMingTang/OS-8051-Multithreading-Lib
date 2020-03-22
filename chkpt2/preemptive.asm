;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Mon Nov 25 14:11:21 2019
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
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
	.globl _myTimer0Handler
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
_tmp2	=	0x0029
_last_thread	=	0x002a
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	preemptive.c:41: void Bootstrap(void)
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
;	preemptive.c:45: __endasm;
	MOV _EA, #0
;	preemptive.c:47: SP_saved[0] = 0x3f;
	mov	_SP_saved,#0x3F
;	preemptive.c:48: SP_saved[1] = 0x4f;
	mov	(_SP_saved + 0x0001),#0x4F
;	preemptive.c:49: SP_saved[2] = 0x5f;
	mov	(_SP_saved + 0x0002),#0x5F
;	preemptive.c:50: SP_saved[3] = 0x6f;
	mov	(_SP_saved + 0x0003),#0x6F
;	preemptive.c:51: thread_bm = 0;
	mov	_thread_bm,#0x00
;	preemptive.c:52: thread_id = -1;
	mov	_thread_id,#0xFF
;	preemptive.c:53: thread_ct = 0;
	mov	_thread_ct,#0x00
;	preemptive.c:55: TMOD = 0;
	mov	_TMOD,#0x00
;	preemptive.c:56: IE = 0x82;
	mov	_IE,#0x82
;	preemptive.c:57: TR0 = 1;
	setb	_TR0
;	preemptive.c:58: PSW = 0;
	mov	_PSW,#0x00
;	preemptive.c:61: thread_id = ThreadCreate(&main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_thread_id,dpl
;	preemptive.c:63: last_thread = 0;
	mov	_last_thread,#0x00
;	preemptive.c:65: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:69: __endasm;
	MOV _EA, #1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	preemptive.c:71: ThreadID ThreadCreate(FunctionPtr fp)
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	preemptive.c:75: __endasm;
	MOV _EA, #0
;	preemptive.c:77: if(thread_ct >= MAXTHREADS){
	clr	c
	mov	a,_thread_ct
	xrl	a,#0x80
	subb	a,#0x83
	jc	00105$
;	preemptive.c:80: __endasm;
	MOV _EA, #1
;	preemptive.c:82: return -1;
	mov	dpl,#0xFF
	ret
00105$:
;	preemptive.c:85: for(i = 0; i < MAXTHREADS; i++){
	mov	_i,#0x00
00108$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x83
	jnc	00103$
;	preemptive.c:86: tmp = 1 << i;
	mov	b,_i
	inc	b
	mov	a,#0x01
	sjmp	00128$
00126$:
	add	a,acc
00128$:
	djnz	b,00126$
	mov	_tmp,a
;	preemptive.c:87: if( (thread_bm & tmp) == 0 ){
	mov	a,_tmp
	anl	a,_thread_bm
	jnz	00109$
;	preemptive.c:89: thread_bm |= tmp; // set the bit to 1
	mov	a,_tmp
	orl	_thread_bm,a
;	preemptive.c:90: thread_ct++;
	inc	_thread_ct
;	preemptive.c:91: tmp = SP;
	mov	_tmp,_SP
;	preemptive.c:92: SP = SP_saved[i]; // SP for the created thread
	mov	a,_i
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
;	preemptive.c:93: tmp2 = i << 3; // for PSW.3 and PSW.4
	mov	a,_i
	swap	a
	rr	a
	anl	a,#0xF8
	mov	_tmp2,a
;	preemptive.c:107: __endasm;
	MOV A, #0
	PUSH DPL
	PUSH DPH
	PUSH ACC
	PUSH ACC
	PUSH ACC
	PUSH ACC
	MOV A, _tmp2
	PUSH ACC
	MOV A, #0x00
;	preemptive.c:108: SP_saved[i] = SP; // save SP for that thread
	mov	a,_i
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:109: SP = tmp; // restore SP
	mov	_SP,_tmp
;	preemptive.c:113: __endasm;
	MOV _EA, #1
;	preemptive.c:115: return i;
	mov	dpl,_i
	ret
00109$:
;	preemptive.c:85: for(i = 0; i < MAXTHREADS; i++){
	inc	_i
	sjmp	00108$
00103$:
;	preemptive.c:120: __endasm;
	MOV _EA, #1
;	preemptive.c:121: return -1;
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	preemptive.c:124: void ThreadYield(void)
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	preemptive.c:128: __endasm;
	MOV _EA, #0
;	preemptive.c:129: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:130: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	mov	_i,#0x01
00105$:
	clr	c
	mov	a,#(0x03 ^ 0x80)
	mov	b,_i
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	preemptive.c:131: tmp = thread_id + i;
	mov	a,_i
	add	a,_thread_id
	mov	_tmp,a
;	preemptive.c:132: tmp %= MAXTHREADS;
	mov	b,#0x03
	mov	a,_tmp
	clr	F0
	jnb	acc.7,00119$
	setb	F0
	cpl	a
	inc	a
00119$:
	div	ab
	mov	a,b
	jnb	F0,00120$
	cpl	a
	inc	a
00120$:
	mov	_tmp,a
;	preemptive.c:133: tmp = 1 << tmp;
	mov	b,_tmp
	inc	b
	mov	a,#0x01
	sjmp	00123$
00121$:
	add	a,acc
00123$:
	djnz	b,00121$
	mov	_tmp,a
;	preemptive.c:134: if(thread_bm & tmp){ // next thread found
	mov	a,_tmp
	anl	a,_thread_bm
	jz	00106$
;	preemptive.c:135: thread_id += i;
	mov	a,_i
	add	a,_thread_id
	mov	_thread_id,a
;	preemptive.c:136: thread_id %= MAXTHREADS;
	mov	b,#0x03
	mov	a,_thread_id
	clr	F0
	jnb	acc.7,00125$
	setb	F0
	cpl	a
	inc	a
00125$:
	div	ab
	mov	a,b
	jnb	F0,00126$
	cpl	a
	inc	a
00126$:
	mov	_thread_id,a
;	preemptive.c:137: break;
	sjmp	00103$
00106$:
;	preemptive.c:130: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	inc	_i
	sjmp	00105$
00103$:
;	preemptive.c:140: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:143: __endasm;
	MOV _EA, #1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	preemptive.c:145: void ThreadExit(void)
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	preemptive.c:149: __endasm;
	MOV _EA, #0
;	preemptive.c:150: tmp = 1 << thread_id;
	mov	b,_thread_id
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	mov	_tmp,a
;	preemptive.c:151: tmp = ~tmp;
	mov	a,_tmp
	cpl	a
	mov	_tmp,a
;	preemptive.c:152: thread_bm &= tmp; // clear bitmap
	mov	a,_tmp
	anl	_thread_bm,a
;	preemptive.c:153: thread_ct--;
	dec	_thread_ct
;	preemptive.c:154: ThreadYield();
	lcall	_ThreadYield
;	preemptive.c:157: __endasm;
	MOV _EA, #1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'myTimer0Handler'
;------------------------------------------------------------
;	preemptive.c:160: void myTimer0Handler(void)
;	-----------------------------------------
;	 function myTimer0Handler
;	-----------------------------------------
_myTimer0Handler:
;	preemptive.c:164: __endasm;
	MOV _EA, #0
;	preemptive.c:165: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	preemptive.c:171: __endasm;
	MOV _thread_id, #3
	MOV _PSW, #24
;	preemptive.c:175: SP = SP_saved[3];
	mov	_SP,(_SP_saved + 0x0003)
;	preemptive.c:176: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	mov	_i,#0x01
00105$:
	clr	c
	mov	a,#(0x03 ^ 0x80)
	mov	b,_i
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	preemptive.c:177: tmp2 = (last_thread + i);
	mov	a,_i
	add	a,_last_thread
	mov	_tmp2,a
;	preemptive.c:178: tmp2 %= MAXTHREADS;
	mov	b,#0x03
	mov	a,_tmp2
	clr	F0
	jnb	acc.7,00119$
	setb	F0
	cpl	a
	inc	a
00119$:
	div	ab
	mov	a,b
	jnb	F0,00120$
	cpl	a
	inc	a
00120$:
	mov	_tmp2,a
;	preemptive.c:179: tmp2 = 1 << tmp2;
	mov	b,_tmp2
	inc	b
	mov	a,#0x01
	sjmp	00123$
00121$:
	add	a,acc
00123$:
	djnz	b,00121$
	mov	_tmp2,a
;	preemptive.c:180: if( thread_bm & tmp2){ // next thread found
	mov	a,_tmp2
	anl	a,_thread_bm
	jz	00106$
;	preemptive.c:181: tmp = last_thread + i;
	mov	a,_i
	add	a,_last_thread
	mov	_tmp,a
;	preemptive.c:182: tmp %= MAXTHREADS;
	mov	b,#0x03
	mov	a,_tmp
	clr	F0
	jnb	acc.7,00125$
	setb	F0
	cpl	a
	inc	a
00125$:
	div	ab
	mov	a,b
	jnb	F0,00126$
	cpl	a
	inc	a
00126$:
	mov	_tmp,a
;	preemptive.c:183: break;
	sjmp	00103$
00106$:
;	preemptive.c:176: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	inc	_i
	sjmp	00105$
00103$:
;	preemptive.c:186: last_thread = tmp;
	mov	_last_thread,_tmp
;	preemptive.c:187: thread_id = last_thread;
	mov	_thread_id,_last_thread
;	preemptive.c:188: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
;	preemptive.c:191: __endasm;
	MOV _EA, #1
;	preemptive.c:195: __endasm;
	RETI
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
