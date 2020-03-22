                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Mon Nov 25 14:11:21 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module testpreemptive
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl __mcs51_genXRAMCLEAR
                                     13 	.globl __mcs51_genXINIT
                                     14 	.globl __mcs51_genRAMCLEAR
                                     15 	.globl __sdcc_gsinit_startup
                                     16 	.globl _main
                                     17 	.globl _timer0_ISR
                                     18 	.globl _ThreadCreate
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _PS
                                     28 	.globl _PT1
                                     29 	.globl _PX1
                                     30 	.globl _PT0
                                     31 	.globl _PX0
                                     32 	.globl _RD
                                     33 	.globl _WR
                                     34 	.globl _T1
                                     35 	.globl _T0
                                     36 	.globl _INT1
                                     37 	.globl _INT0
                                     38 	.globl _TXD
                                     39 	.globl _RXD
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _EA
                                     49 	.globl _ES
                                     50 	.globl _ET1
                                     51 	.globl _EX1
                                     52 	.globl _ET0
                                     53 	.globl _EX0
                                     54 	.globl _P2_7
                                     55 	.globl _P2_6
                                     56 	.globl _P2_5
                                     57 	.globl _P2_4
                                     58 	.globl _P2_3
                                     59 	.globl _P2_2
                                     60 	.globl _P2_1
                                     61 	.globl _P2_0
                                     62 	.globl _SM0
                                     63 	.globl _SM1
                                     64 	.globl _SM2
                                     65 	.globl _REN
                                     66 	.globl _TB8
                                     67 	.globl _RB8
                                     68 	.globl _TI
                                     69 	.globl _RI
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _TF1
                                     79 	.globl _TR1
                                     80 	.globl _TF0
                                     81 	.globl _TR0
                                     82 	.globl _IE1
                                     83 	.globl _IT1
                                     84 	.globl _IE0
                                     85 	.globl _IT0
                                     86 	.globl _P0_7
                                     87 	.globl _P0_6
                                     88 	.globl _P0_5
                                     89 	.globl _P0_4
                                     90 	.globl _P0_3
                                     91 	.globl _P0_2
                                     92 	.globl _P0_1
                                     93 	.globl _P0_0
                                     94 	.globl _B
                                     95 	.globl _ACC
                                     96 	.globl _PSW
                                     97 	.globl _IP
                                     98 	.globl _P3
                                     99 	.globl _IE
                                    100 	.globl _P2
                                    101 	.globl _SBUF
                                    102 	.globl _SCON
                                    103 	.globl _P1
                                    104 	.globl _TH1
                                    105 	.globl _TH0
                                    106 	.globl _TL1
                                    107 	.globl _TL0
                                    108 	.globl _TMOD
                                    109 	.globl _TCON
                                    110 	.globl _PCON
                                    111 	.globl _DPH
                                    112 	.globl _DPL
                                    113 	.globl _SP
                                    114 	.globl _P0
                                    115 	.globl _buff
                                    116 	.globl _imm
                                    117 	.globl _i
                                    118 	.globl _idx
                                    119 	.globl _out
                                    120 	.globl _in
                                    121 	.globl _Producer
                                    122 	.globl _Consumer
                                    123 ;--------------------------------------------------------
                                    124 ; special function registers
                                    125 ;--------------------------------------------------------
                                    126 	.area RSEG    (ABS,DATA)
      000000                        127 	.org 0x0000
                           000080   128 _P0	=	0x0080
                           000081   129 _SP	=	0x0081
                           000082   130 _DPL	=	0x0082
                           000083   131 _DPH	=	0x0083
                           000087   132 _PCON	=	0x0087
                           000088   133 _TCON	=	0x0088
                           000089   134 _TMOD	=	0x0089
                           00008A   135 _TL0	=	0x008a
                           00008B   136 _TL1	=	0x008b
                           00008C   137 _TH0	=	0x008c
                           00008D   138 _TH1	=	0x008d
                           000090   139 _P1	=	0x0090
                           000098   140 _SCON	=	0x0098
                           000099   141 _SBUF	=	0x0099
                           0000A0   142 _P2	=	0x00a0
                           0000A8   143 _IE	=	0x00a8
                           0000B0   144 _P3	=	0x00b0
                           0000B8   145 _IP	=	0x00b8
                           0000D0   146 _PSW	=	0x00d0
                           0000E0   147 _ACC	=	0x00e0
                           0000F0   148 _B	=	0x00f0
                                    149 ;--------------------------------------------------------
                                    150 ; special function bits
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0_0	=	0x0080
                           000081   155 _P0_1	=	0x0081
                           000082   156 _P0_2	=	0x0082
                           000083   157 _P0_3	=	0x0083
                           000084   158 _P0_4	=	0x0084
                           000085   159 _P0_5	=	0x0085
                           000086   160 _P0_6	=	0x0086
                           000087   161 _P0_7	=	0x0087
                           000088   162 _IT0	=	0x0088
                           000089   163 _IE0	=	0x0089
                           00008A   164 _IT1	=	0x008a
                           00008B   165 _IE1	=	0x008b
                           00008C   166 _TR0	=	0x008c
                           00008D   167 _TF0	=	0x008d
                           00008E   168 _TR1	=	0x008e
                           00008F   169 _TF1	=	0x008f
                           000090   170 _P1_0	=	0x0090
                           000091   171 _P1_1	=	0x0091
                           000092   172 _P1_2	=	0x0092
                           000093   173 _P1_3	=	0x0093
                           000094   174 _P1_4	=	0x0094
                           000095   175 _P1_5	=	0x0095
                           000096   176 _P1_6	=	0x0096
                           000097   177 _P1_7	=	0x0097
                           000098   178 _RI	=	0x0098
                           000099   179 _TI	=	0x0099
                           00009A   180 _RB8	=	0x009a
                           00009B   181 _TB8	=	0x009b
                           00009C   182 _REN	=	0x009c
                           00009D   183 _SM2	=	0x009d
                           00009E   184 _SM1	=	0x009e
                           00009F   185 _SM0	=	0x009f
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000A8   194 _EX0	=	0x00a8
                           0000A9   195 _ET0	=	0x00a9
                           0000AA   196 _EX1	=	0x00aa
                           0000AB   197 _ET1	=	0x00ab
                           0000AC   198 _ES	=	0x00ac
                           0000AF   199 _EA	=	0x00af
                           0000B0   200 _P3_0	=	0x00b0
                           0000B1   201 _P3_1	=	0x00b1
                           0000B2   202 _P3_2	=	0x00b2
                           0000B3   203 _P3_3	=	0x00b3
                           0000B4   204 _P3_4	=	0x00b4
                           0000B5   205 _P3_5	=	0x00b5
                           0000B6   206 _P3_6	=	0x00b6
                           0000B7   207 _P3_7	=	0x00b7
                           0000B0   208 _RXD	=	0x00b0
                           0000B1   209 _TXD	=	0x00b1
                           0000B2   210 _INT0	=	0x00b2
                           0000B3   211 _INT1	=	0x00b3
                           0000B4   212 _T0	=	0x00b4
                           0000B5   213 _T1	=	0x00b5
                           0000B6   214 _WR	=	0x00b6
                           0000B7   215 _RD	=	0x00b7
                           0000B8   216 _PX0	=	0x00b8
                           0000B9   217 _PT0	=	0x00b9
                           0000BA   218 _PX1	=	0x00ba
                           0000BB   219 _PT1	=	0x00bb
                           0000BC   220 _PS	=	0x00bc
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _F1	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable register banks
                                    231 ;--------------------------------------------------------
                                    232 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        233 	.ds 8
                                    234 ;--------------------------------------------------------
                                    235 ; internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area DSEG    (DATA)
                           000030   238 _in	=	0x0030
                           000031   239 _out	=	0x0031
                           000032   240 _idx	=	0x0032
                           000033   241 _i	=	0x0033
                           000034   242 _imm	=	0x0034
                           000035   243 _buff	=	0x0035
                                    244 ;--------------------------------------------------------
                                    245 ; overlayable items in internal ram 
                                    246 ;--------------------------------------------------------
                                    247 ;--------------------------------------------------------
                                    248 ; Stack segment in internal ram 
                                    249 ;--------------------------------------------------------
                                    250 	.area	SSEG
      00000A                        251 __start__stack:
      00000A                        252 	.ds	1
                                    253 
                                    254 ;--------------------------------------------------------
                                    255 ; indirectly addressable internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area ISEG    (DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute internal ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area IABS    (ABS,DATA)
                                    262 	.area IABS    (ABS,DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; bit data
                                    265 ;--------------------------------------------------------
                                    266 	.area BSEG    (BIT)
                                    267 ;--------------------------------------------------------
                                    268 ; paged external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area PSEG    (PAG,XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XSEG    (XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XABS    (ABS,XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; external initialized ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XISEG   (XDATA)
                                    283 	.area HOME    (CODE)
                                    284 	.area GSINIT0 (CODE)
                                    285 	.area GSINIT1 (CODE)
                                    286 	.area GSINIT2 (CODE)
                                    287 	.area GSINIT3 (CODE)
                                    288 	.area GSINIT4 (CODE)
                                    289 	.area GSINIT5 (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area CSEG    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; interrupt vector 
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
      000000                        297 __interrupt_vect:
      000000 02 00 49         [24]  298 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  299 	reti
      000004                        300 	.ds	7
      00000B 02 00 14         [24]  301 	ljmp	_timer0_ISR
                                    302 ;--------------------------------------------------------
                                    303 ; global & static initialisations
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.area GSFINAL (CODE)
                                    308 	.area GSINIT  (CODE)
                                    309 	.globl __sdcc_gsinit_startup
                                    310 	.globl __sdcc_program_startup
                                    311 	.globl __start__stack
                                    312 	.globl __mcs51_genXINIT
                                    313 	.globl __mcs51_genXRAMCLEAR
                                    314 	.globl __mcs51_genRAMCLEAR
                                    315 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  316 	ljmp	__sdcc_program_startup
                                    317 ;--------------------------------------------------------
                                    318 ; Home
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
                                    321 	.area HOME    (CODE)
      00000E                        322 __sdcc_program_startup:
      00000E 02 00 18         [24]  323 	ljmp	_main
                                    324 ;	return from main will return to caller
                                    325 ;--------------------------------------------------------
                                    326 ; code
                                    327 ;--------------------------------------------------------
                                    328 	.area CSEG    (CODE)
                                    329 ;------------------------------------------------------------
                                    330 ;Allocation info for local variables in function 'timer0_ISR'
                                    331 ;------------------------------------------------------------
                                    332 ;	testpreemptive.c:14: void timer0_ISR(void) __interrupt(1)
                                    333 ;	-----------------------------------------
                                    334 ;	 function timer0_ISR
                                    335 ;	-----------------------------------------
      000014                        336 _timer0_ISR:
                           000007   337 	ar7 = 0x07
                           000006   338 	ar6 = 0x06
                           000005   339 	ar5 = 0x05
                           000004   340 	ar4 = 0x04
                           000003   341 	ar3 = 0x03
                           000002   342 	ar2 = 0x02
                           000001   343 	ar1 = 0x01
                           000000   344 	ar0 = 0x00
                                    345 ;	testpreemptive.c:18: __endasm;
      000014 02 02 7C         [24]  346 	ljmp _myTimer0Handler
      000017 32               [24]  347 	reti
                                    348 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    349 ;	eliminated unneeded push/pop psw
                                    350 ;	eliminated unneeded push/pop dpl
                                    351 ;	eliminated unneeded push/pop dph
                                    352 ;	eliminated unneeded push/pop b
                                    353 ;	eliminated unneeded push/pop acc
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'main'
                                    356 ;------------------------------------------------------------
                                    357 ;	testpreemptive.c:21: void main(void)
                                    358 ;	-----------------------------------------
                                    359 ;	 function main
                                    360 ;	-----------------------------------------
      000018                        361 _main:
                                    362 ;	testpreemptive.c:23: TMOD |= 0x20; // preserve modification in bootstrap
      000018 43 89 20         [24]  363 	orl	_TMOD,#0x20
                                    364 ;	testpreemptive.c:24: TH1 = -6; // baud rate
      00001B 75 8D FA         [24]  365 	mov	_TH1,#0xFA
                                    366 ;	testpreemptive.c:25: SCON = 0x50; // 8-bit 1 stop REN
      00001E 75 98 50         [24]  367 	mov	_SCON,#0x50
                                    368 ;	testpreemptive.c:26: TR1 = 1; // start timer 1
      000021 D2 8E            [12]  369 	setb	_TR1
                                    370 ;	testpreemptive.c:27: for(i = 0; i < BUFF_SIZE; i++)
      000023 75 33 00         [24]  371 	mov	_i,#0x00
      000026                        372 00103$:
      000026 C3               [12]  373 	clr	c
      000027 E5 33            [12]  374 	mov	a,_i
      000029 64 80            [12]  375 	xrl	a,#0x80
      00002B 94 8B            [12]  376 	subb	a,#0x8b
      00002D 50 0B            [24]  377 	jnc	00101$
                                    378 ;	testpreemptive.c:28: buff[i] = 0;
      00002F E5 33            [12]  379 	mov	a,_i
      000031 24 35            [12]  380 	add	a,#_buff
      000033 F8               [12]  381 	mov	r0,a
      000034 76 00            [12]  382 	mov	@r0,#0x00
                                    383 ;	testpreemptive.c:27: for(i = 0; i < BUFF_SIZE; i++)
      000036 05 33            [12]  384 	inc	_i
      000038 80 EC            [24]  385 	sjmp	00103$
      00003A                        386 00101$:
                                    387 ;	testpreemptive.c:29: in = out = 0;
      00003A 75 31 00         [24]  388 	mov	_out,#0x00
      00003D 75 30 00         [24]  389 	mov	_in,#0x00
                                    390 ;	testpreemptive.c:30: ThreadCreate(&Producer);
      000040 90 00 50         [24]  391 	mov	dptr,#_Producer
      000043 12 01 49         [24]  392 	lcall	_ThreadCreate
                                    393 ;	testpreemptive.c:31: Consumer();
      000046 02 00 CF         [24]  394 	ljmp	_Consumer
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    397 ;------------------------------------------------------------
                                    398 ;	testpreemptive.c:35: void _sdcc_gsinit_startup(void)
                                    399 ;	-----------------------------------------
                                    400 ;	 function _sdcc_gsinit_startup
                                    401 ;	-----------------------------------------
      000049                        402 __sdcc_gsinit_startup:
                                    403 ;	testpreemptive.c:39: __endasm;
      000049 02 01 05         [24]  404 	ljmp _Bootstrap
      00004C 22               [24]  405 	ret
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    408 ;------------------------------------------------------------
                                    409 ;	testpreemptive.c:41: void _mcs51_genRAMCLEAR(void) {}
                                    410 ;	-----------------------------------------
                                    411 ;	 function _mcs51_genRAMCLEAR
                                    412 ;	-----------------------------------------
      00004D                        413 __mcs51_genRAMCLEAR:
      00004D 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    417 ;------------------------------------------------------------
                                    418 ;	testpreemptive.c:42: void _mcs51_genXINIT(void) {}
                                    419 ;	-----------------------------------------
                                    420 ;	 function _mcs51_genXINIT
                                    421 ;	-----------------------------------------
      00004E                        422 __mcs51_genXINIT:
      00004E 22               [24]  423 	ret
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    426 ;------------------------------------------------------------
                                    427 ;	testpreemptive.c:43: void _mcs51_genXRAMCLEAR(void) {}
                                    428 ;	-----------------------------------------
                                    429 ;	 function _mcs51_genXRAMCLEAR
                                    430 ;	-----------------------------------------
      00004F                        431 __mcs51_genXRAMCLEAR:
      00004F 22               [24]  432 	ret
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'Producer'
                                    435 ;------------------------------------------------------------
                                    436 ;	testpreemptive.c:44: void Producer(void)
                                    437 ;	-----------------------------------------
                                    438 ;	 function Producer
                                    439 ;	-----------------------------------------
      000050                        440 _Producer:
                                    441 ;	testpreemptive.c:46: idx = 0;
      000050 75 32 00         [24]  442 	mov	_idx,#0x00
                                    443 ;	testpreemptive.c:47: in = 0;
      000053 75 30 00         [24]  444 	mov	_in,#0x00
                                    445 ;	testpreemptive.c:48: while(1){
      000056                        446 00105$:
                                    447 ;	testpreemptive.c:49: imm = (in + 1) % BUFF_SIZE;
      000056 AE 30            [24]  448 	mov	r6,_in
      000058 E5 30            [12]  449 	mov	a,_in
      00005A 33               [12]  450 	rlc	a
      00005B 95 E0            [12]  451 	subb	a,acc
      00005D FF               [12]  452 	mov	r7,a
      00005E 8E 82            [24]  453 	mov	dpl,r6
      000060 8F 83            [24]  454 	mov	dph,r7
      000062 A3               [24]  455 	inc	dptr
      000063 75 08 0B         [24]  456 	mov	__modsint_PARM_2,#0x0B
      000066 75 09 00         [24]  457 	mov	(__modsint_PARM_2 + 1),#0x00
      000069 12 03 6A         [24]  458 	lcall	__modsint
      00006C AE 82            [24]  459 	mov	r6,dpl
      00006E AF 83            [24]  460 	mov	r7,dph
      000070 8E 34            [24]  461 	mov	_imm,r6
                                    462 ;	testpreemptive.c:50: while(imm == out){ // full
      000072                        463 00101$:
      000072 E5 31            [12]  464 	mov	a,_out
      000074 B5 34 02         [24]  465 	cjne	a,_imm,00118$
      000077 80 F9            [24]  466 	sjmp	00101$
      000079                        467 00118$:
                                    468 ;	testpreemptive.c:53: buff[in] = 'A' + idx % CH_NUM;
      000079 E5 30            [12]  469 	mov	a,_in
      00007B 24 35            [12]  470 	add	a,#_buff
      00007D F9               [12]  471 	mov	r1,a
      00007E 75 F0 1A         [24]  472 	mov	b,#0x1a
      000081 E5 32            [12]  473 	mov	a,_idx
      000083 C2 D5            [12]  474 	clr	F0
      000085 30 E7 04         [24]  475 	jnb	acc.7,00119$
      000088 D2 D5            [12]  476 	setb	F0
      00008A F4               [12]  477 	cpl	a
      00008B 04               [12]  478 	inc	a
      00008C                        479 00119$:
      00008C 84               [48]  480 	div	ab
      00008D E5 F0            [12]  481 	mov	a,b
      00008F 30 D5 02         [24]  482 	jnb	F0,00120$
      000092 F4               [12]  483 	cpl	a
      000093 04               [12]  484 	inc	a
      000094                        485 00120$:
      000094 24 41            [12]  486 	add	a,#0x41
      000096 F7               [12]  487 	mov	@r1,a
                                    488 ;	testpreemptive.c:54: idx = (idx + 1) % CH_NUM;
      000097 AE 32            [24]  489 	mov	r6,_idx
      000099 E5 32            [12]  490 	mov	a,_idx
      00009B 33               [12]  491 	rlc	a
      00009C 95 E0            [12]  492 	subb	a,acc
      00009E FF               [12]  493 	mov	r7,a
      00009F 8E 82            [24]  494 	mov	dpl,r6
      0000A1 8F 83            [24]  495 	mov	dph,r7
      0000A3 A3               [24]  496 	inc	dptr
      0000A4 75 08 1A         [24]  497 	mov	__modsint_PARM_2,#0x1A
      0000A7 75 09 00         [24]  498 	mov	(__modsint_PARM_2 + 1),#0x00
      0000AA 12 03 6A         [24]  499 	lcall	__modsint
      0000AD AE 82            [24]  500 	mov	r6,dpl
      0000AF 8E 32            [24]  501 	mov	_idx,r6
                                    502 ;	testpreemptive.c:55: in = (in + 1) % BUFF_SIZE;
      0000B1 AE 30            [24]  503 	mov	r6,_in
      0000B3 E5 30            [12]  504 	mov	a,_in
      0000B5 33               [12]  505 	rlc	a
      0000B6 95 E0            [12]  506 	subb	a,acc
      0000B8 FF               [12]  507 	mov	r7,a
      0000B9 8E 82            [24]  508 	mov	dpl,r6
      0000BB 8F 83            [24]  509 	mov	dph,r7
      0000BD A3               [24]  510 	inc	dptr
      0000BE 75 08 0B         [24]  511 	mov	__modsint_PARM_2,#0x0B
      0000C1 75 09 00         [24]  512 	mov	(__modsint_PARM_2 + 1),#0x00
      0000C4 12 03 6A         [24]  513 	lcall	__modsint
      0000C7 AE 82            [24]  514 	mov	r6,dpl
      0000C9 AF 83            [24]  515 	mov	r7,dph
      0000CB 8E 30            [24]  516 	mov	_in,r6
      0000CD 80 87            [24]  517 	sjmp	00105$
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'Consumer'
                                    520 ;------------------------------------------------------------
                                    521 ;	testpreemptive.c:58: void Consumer(void)
                                    522 ;	-----------------------------------------
                                    523 ;	 function Consumer
                                    524 ;	-----------------------------------------
      0000CF                        525 _Consumer:
                                    526 ;	testpreemptive.c:60: TI = 1;
      0000CF D2 99            [12]  527 	setb	_TI
                                    528 ;	testpreemptive.c:61: out = 0;
      0000D1 75 31 00         [24]  529 	mov	_out,#0x00
                                    530 ;	testpreemptive.c:63: while(in == out){ // empty
      0000D4                        531 00101$:
      0000D4 E5 31            [12]  532 	mov	a,_out
      0000D6 B5 30 02         [24]  533 	cjne	a,_in,00121$
      0000D9 80 F9            [24]  534 	sjmp	00101$
      0000DB                        535 00121$:
                                    536 ;	testpreemptive.c:66: while(!TI){} // not ready
      0000DB                        537 00104$:
      0000DB 30 99 FD         [24]  538 	jnb	_TI,00104$
                                    539 ;	testpreemptive.c:67: SBUF = buff[out];
      0000DE E5 31            [12]  540 	mov	a,_out
      0000E0 24 35            [12]  541 	add	a,#_buff
      0000E2 F9               [12]  542 	mov	r1,a
      0000E3 87 99            [24]  543 	mov	_SBUF,@r1
                                    544 ;	testpreemptive.c:68: out = (out + 1) % BUFF_SIZE;
      0000E5 AE 31            [24]  545 	mov	r6,_out
      0000E7 E5 31            [12]  546 	mov	a,_out
      0000E9 33               [12]  547 	rlc	a
      0000EA 95 E0            [12]  548 	subb	a,acc
      0000EC FF               [12]  549 	mov	r7,a
      0000ED 8E 82            [24]  550 	mov	dpl,r6
      0000EF 8F 83            [24]  551 	mov	dph,r7
      0000F1 A3               [24]  552 	inc	dptr
      0000F2 75 08 0B         [24]  553 	mov	__modsint_PARM_2,#0x0B
      0000F5 75 09 00         [24]  554 	mov	(__modsint_PARM_2 + 1),#0x00
      0000F8 12 03 6A         [24]  555 	lcall	__modsint
      0000FB AE 82            [24]  556 	mov	r6,dpl
      0000FD AF 83            [24]  557 	mov	r7,dph
      0000FF 8E 31            [24]  558 	mov	_out,r6
                                    559 ;	testpreemptive.c:69: TI = 0;
      000101 C2 99            [12]  560 	clr	_TI
      000103 80 CF            [24]  561 	sjmp	00101$
                                    562 	.area CSEG    (CODE)
                                    563 	.area CONST   (CODE)
                                    564 	.area XINIT   (CODE)
                                    565 	.area CABS    (ABS,CODE)
