;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
; This file was generated Fri Jan 10 21:00:48 2020
;--------------------------------------------------------
	.module cooperative
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
;	cooperative.c:40: void Bootstrap(void)
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
;	cooperative.c:43: SP_saved[0] = 0x3f;
	mov	_SP_saved,#0x3F
;	cooperative.c:44: SP_saved[1] = 0x4f;
	mov	(_SP_saved + 0x0001),#0x4F
;	cooperative.c:45: SP_saved[2] = 0x5f;
	mov	(_SP_saved + 0x0002),#0x5F
;	cooperative.c:46: SP_saved[3] = 0x6f;
	mov	(_SP_saved + 0x0003),#0x6F
;	cooperative.c:47: thread_bm = 0;
	mov	_thread_bm,#0x00
;	cooperative.c:48: thread_id = -1;
	mov	_thread_id,#0xFF
;	cooperative.c:49: thread_ct = 0;
	mov	_thread_ct,#0x00
;	cooperative.c:50: PSW = 0;
	mov	_PSW,#0x00
;	cooperative.c:52: thread_id = ThreadCreate(&main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	_thread_id,dpl
;	cooperative.c:53: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	cooperative.c:55: ThreadID ThreadCreate(FunctionPtr fp)
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	cooperative.c:57: if(thread_ct >= MAXTHREADS)
	clr	c
	mov	a,_thread_ct
	xrl	a,#0x80
	subb	a,#0x84
	jc	00105$
;	cooperative.c:58: return -1;
	mov	dpl,#0xFF
	ret
00105$:
;	cooperative.c:60: for(i = 0; i < MAXTHREADS; i++){
	mov	_i,#0x00
00108$:
	clr	c
	mov	a,_i
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	cooperative.c:61: tmp = 1 << i;
	mov	b,_i
	inc	b
	mov	a,#0x01
	sjmp	00128$
00126$:
	add	a,acc
00128$:
	djnz	b,00126$
	mov	_tmp,a
;	cooperative.c:62: if( (thread_bm & tmp) == 0 ){
	mov	a,_tmp
	anl	a,_thread_bm
	jnz	00109$
;	cooperative.c:64: thread_bm |= tmp; // set the bit to 1
	mov	a,_tmp
	orl	_thread_bm,a
;	cooperative.c:65: thread_ct++;
	inc	_thread_ct
;	cooperative.c:66: tmp = SP;
	mov	_tmp,_SP
;	cooperative.c:67: SP = SP_saved[i]; // SP for the created thread
	mov	a,_i
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
;	cooperative.c:68: tmp2 = i << 3; // for PSW.3 and PSW.4
	mov	a,_i
	swap	a
	rr	a
	anl	a,#0xF8
	mov	_tmp2,a
;	cooperative.c:82: __endasm;
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
;	cooperative.c:83: SP_saved[i] = SP; // save SP for that thread
	mov	a,_i
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:84: SP = tmp; // restore SP
	mov	_SP,_tmp
;	cooperative.c:85: return i;
	mov	dpl,_i
	ret
00109$:
;	cooperative.c:60: for(i = 0; i < MAXTHREADS; i++){
	inc	_i
	sjmp	00108$
00103$:
;	cooperative.c:88: return -1;
	mov	dpl,#0xFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	cooperative.c:91: void ThreadYield(void)
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	cooperative.c:93: SAVESTATE;
	PUSH ACC 
	PUSH B 
	PUSH DPL 
	PUSH DPH 
	PUSH PSW 
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:94: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	mov	_i,#0x01
00105$:
	clr	c
	mov	a,#(0x04 ^ 0x80)
	mov	b,_i
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	cooperative.c:95: tmp = thread_id + i;
	mov	a,_i
	add	a,_thread_id
	mov	_tmp,a
;	cooperative.c:96: tmp %= MAXTHREADS;
	mov	a,_tmp
	mov	c,acc.7
	anl	a,#0x03
	jz	00119$
	jnc	00119$
	orl	a,#0xfc
00119$:
	mov	_tmp,a
;	cooperative.c:97: tmp = 1 << tmp;
	mov	b,_tmp
	inc	b
	mov	a,#0x01
	sjmp	00122$
00120$:
	add	a,acc
00122$:
	djnz	b,00120$
	mov	_tmp,a
;	cooperative.c:98: if(thread_bm & tmp){ // next thread found
	mov	a,_tmp
	anl	a,_thread_bm
	jz	00106$
;	cooperative.c:99: thread_id += i;
	mov	a,_i
	add	a,_thread_id
	mov	_thread_id,a
;	cooperative.c:100: thread_id %= MAXTHREADS;
	mov	a,_thread_id
	mov	c,acc.7
	anl	a,#0x03
	jz	00124$
	jnc	00124$
	orl	a,#0xfc
00124$:
	mov	_thread_id,a
;	cooperative.c:101: break;
	sjmp	00103$
00106$:
;	cooperative.c:94: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
	inc	_i
	sjmp	00105$
00103$:
;	cooperative.c:104: RESTORESTATE;
	mov	a,_thread_id
	add	a,#_SP_saved
	mov	r1,a
	mov	_SP,@r1
	POP PSW 
	POP DPH 
	POP DPL 
	POP B 
	POP ACC 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	cooperative.c:106: void ThreadExit(void)
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	cooperative.c:108: tmp = 1 << thread_id;
	mov	b,_thread_id
	inc	b
	mov	a,#0x01
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
	mov	_tmp,a
;	cooperative.c:109: tmp = ~tmp;
	mov	a,_tmp
	cpl	a
	mov	_tmp,a
;	cooperative.c:110: thread_bm &= tmp; // clear bitmap
	mov	a,_tmp
	anl	_thread_bm,a
;	cooperative.c:111: thread_ct--;
	dec	_thread_ct
;	cooperative.c:112: ThreadYield();
	ljmp	_ThreadYield
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
