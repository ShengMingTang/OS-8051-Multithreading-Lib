                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Jan 15 13:09:18 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module testparking
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
                                     18 	.globl _delay
                                     19 	.globl _ThreadCreate
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _buff
                                    117 	.globl _empty
                                    118 	.globl _mutex
                                    119 	.globl _slot
                                    120 	.globl _out
                                    121 	.globl _in
                                    122 	.globl _spot
                                    123 	.globl _CarA
                                    124 	.globl _CarB
                                    125 	.globl _CarC
                                    126 	.globl _CarD
                                    127 	.globl _CarE
                                    128 ;--------------------------------------------------------
                                    129 ; special function registers
                                    130 ;--------------------------------------------------------
                                    131 	.area RSEG    (ABS,DATA)
      000000                        132 	.org 0x0000
                           000080   133 _P0	=	0x0080
                           000081   134 _SP	=	0x0081
                           000082   135 _DPL	=	0x0082
                           000083   136 _DPH	=	0x0083
                           000087   137 _PCON	=	0x0087
                           000088   138 _TCON	=	0x0088
                           000089   139 _TMOD	=	0x0089
                           00008A   140 _TL0	=	0x008a
                           00008B   141 _TL1	=	0x008b
                           00008C   142 _TH0	=	0x008c
                           00008D   143 _TH1	=	0x008d
                           000090   144 _P1	=	0x0090
                           000098   145 _SCON	=	0x0098
                           000099   146 _SBUF	=	0x0099
                           0000A0   147 _P2	=	0x00a0
                           0000A8   148 _IE	=	0x00a8
                           0000B0   149 _P3	=	0x00b0
                           0000B8   150 _IP	=	0x00b8
                           0000D0   151 _PSW	=	0x00d0
                           0000E0   152 _ACC	=	0x00e0
                           0000F0   153 _B	=	0x00f0
                                    154 ;--------------------------------------------------------
                                    155 ; special function bits
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0_0	=	0x0080
                           000081   160 _P0_1	=	0x0081
                           000082   161 _P0_2	=	0x0082
                           000083   162 _P0_3	=	0x0083
                           000084   163 _P0_4	=	0x0084
                           000085   164 _P0_5	=	0x0085
                           000086   165 _P0_6	=	0x0086
                           000087   166 _P0_7	=	0x0087
                           000088   167 _IT0	=	0x0088
                           000089   168 _IE0	=	0x0089
                           00008A   169 _IT1	=	0x008a
                           00008B   170 _IE1	=	0x008b
                           00008C   171 _TR0	=	0x008c
                           00008D   172 _TF0	=	0x008d
                           00008E   173 _TR1	=	0x008e
                           00008F   174 _TF1	=	0x008f
                           000090   175 _P1_0	=	0x0090
                           000091   176 _P1_1	=	0x0091
                           000092   177 _P1_2	=	0x0092
                           000093   178 _P1_3	=	0x0093
                           000094   179 _P1_4	=	0x0094
                           000095   180 _P1_5	=	0x0095
                           000096   181 _P1_6	=	0x0096
                           000097   182 _P1_7	=	0x0097
                           000098   183 _RI	=	0x0098
                           000099   184 _TI	=	0x0099
                           00009A   185 _RB8	=	0x009a
                           00009B   186 _TB8	=	0x009b
                           00009C   187 _REN	=	0x009c
                           00009D   188 _SM2	=	0x009d
                           00009E   189 _SM1	=	0x009e
                           00009F   190 _SM0	=	0x009f
                           0000A0   191 _P2_0	=	0x00a0
                           0000A1   192 _P2_1	=	0x00a1
                           0000A2   193 _P2_2	=	0x00a2
                           0000A3   194 _P2_3	=	0x00a3
                           0000A4   195 _P2_4	=	0x00a4
                           0000A5   196 _P2_5	=	0x00a5
                           0000A6   197 _P2_6	=	0x00a6
                           0000A7   198 _P2_7	=	0x00a7
                           0000A8   199 _EX0	=	0x00a8
                           0000A9   200 _ET0	=	0x00a9
                           0000AA   201 _EX1	=	0x00aa
                           0000AB   202 _ET1	=	0x00ab
                           0000AC   203 _ES	=	0x00ac
                           0000AF   204 _EA	=	0x00af
                           0000B0   205 _P3_0	=	0x00b0
                           0000B1   206 _P3_1	=	0x00b1
                           0000B2   207 _P3_2	=	0x00b2
                           0000B3   208 _P3_3	=	0x00b3
                           0000B4   209 _P3_4	=	0x00b4
                           0000B5   210 _P3_5	=	0x00b5
                           0000B6   211 _P3_6	=	0x00b6
                           0000B7   212 _P3_7	=	0x00b7
                           0000B0   213 _RXD	=	0x00b0
                           0000B1   214 _TXD	=	0x00b1
                           0000B2   215 _INT0	=	0x00b2
                           0000B3   216 _INT1	=	0x00b3
                           0000B4   217 _T0	=	0x00b4
                           0000B5   218 _T1	=	0x00b5
                           0000B6   219 _WR	=	0x00b6
                           0000B7   220 _RD	=	0x00b7
                           0000B8   221 _PX0	=	0x00b8
                           0000B9   222 _PT0	=	0x00b9
                           0000BA   223 _PX1	=	0x00ba
                           0000BB   224 _PT1	=	0x00bb
                           0000BC   225 _PS	=	0x00bc
                           0000D0   226 _P	=	0x00d0
                           0000D1   227 _F1	=	0x00d1
                           0000D2   228 _OV	=	0x00d2
                           0000D3   229 _RS0	=	0x00d3
                           0000D4   230 _RS1	=	0x00d4
                           0000D5   231 _F0	=	0x00d5
                           0000D6   232 _AC	=	0x00d6
                           0000D7   233 _CY	=	0x00d7
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable register banks
                                    236 ;--------------------------------------------------------
                                    237 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        238 	.ds 8
                                    239 ;--------------------------------------------------------
                                    240 ; internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area DSEG    (DATA)
                           000033   243 _spot	=	0x0033
                           000034   244 _in	=	0x0034
                           000035   245 _out	=	0x0035
                           000036   246 _slot	=	0x0036
                           000037   247 _mutex	=	0x0037
                           000038   248 _empty	=	0x0038
                           000039   249 _buff	=	0x0039
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable items in internal ram 
                                    252 ;--------------------------------------------------------
                                    253 ;--------------------------------------------------------
                                    254 ; Stack segment in internal ram 
                                    255 ;--------------------------------------------------------
                                    256 	.area	SSEG
      00000A                        257 __start__stack:
      00000A                        258 	.ds	1
                                    259 
                                    260 ;--------------------------------------------------------
                                    261 ; indirectly addressable internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area ISEG    (DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area IABS    (ABS,DATA)
                                    268 	.area IABS    (ABS,DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; bit data
                                    271 ;--------------------------------------------------------
                                    272 	.area BSEG    (BIT)
                                    273 ;--------------------------------------------------------
                                    274 ; paged external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area PSEG    (PAG,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XSEG    (XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XABS    (ABS,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; external initialized ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XISEG   (XDATA)
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT0 (CODE)
                                    291 	.area GSINIT1 (CODE)
                                    292 	.area GSINIT2 (CODE)
                                    293 	.area GSINIT3 (CODE)
                                    294 	.area GSINIT4 (CODE)
                                    295 	.area GSINIT5 (CODE)
                                    296 	.area GSINIT  (CODE)
                                    297 	.area GSFINAL (CODE)
                                    298 	.area CSEG    (CODE)
                                    299 ;--------------------------------------------------------
                                    300 ; interrupt vector 
                                    301 ;--------------------------------------------------------
                                    302 	.area HOME    (CODE)
      000000                        303 __interrupt_vect:
      000000 02 00 72         [24]  304 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  305 	reti
      000004                        306 	.ds	7
      00000B 02 00 14         [24]  307 	ljmp	_timer0_ISR
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.globl __sdcc_gsinit_startup
                                    316 	.globl __sdcc_program_startup
                                    317 	.globl __start__stack
                                    318 	.globl __mcs51_genXINIT
                                    319 	.globl __mcs51_genXRAMCLEAR
                                    320 	.globl __mcs51_genRAMCLEAR
                                    321 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  322 	ljmp	__sdcc_program_startup
                                    323 ;--------------------------------------------------------
                                    324 ; Home
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
                                    327 	.area HOME    (CODE)
      00000E                        328 __sdcc_program_startup:
      00000E 02 00 18         [24]  329 	ljmp	_main
                                    330 ;	return from main will return to caller
                                    331 ;--------------------------------------------------------
                                    332 ; code
                                    333 ;--------------------------------------------------------
                                    334 	.area CSEG    (CODE)
                                    335 ;------------------------------------------------------------
                                    336 ;Allocation info for local variables in function 'timer0_ISR'
                                    337 ;------------------------------------------------------------
                                    338 ;	testparking.c:26: void timer0_ISR(void) __interrupt(1)
                                    339 ;	-----------------------------------------
                                    340 ;	 function timer0_ISR
                                    341 ;	-----------------------------------------
      000014                        342 _timer0_ISR:
                           000007   343 	ar7 = 0x07
                           000006   344 	ar6 = 0x06
                           000005   345 	ar5 = 0x05
                           000004   346 	ar4 = 0x04
                           000003   347 	ar3 = 0x03
                           000002   348 	ar2 = 0x02
                           000001   349 	ar1 = 0x01
                           000000   350 	ar0 = 0x00
                                    351 ;	testparking.c:30: __endasm;
      000014 02 07 5C         [24]  352 	ljmp _myTimer0Handler
      000017 32               [24]  353 	reti
                                    354 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    355 ;	eliminated unneeded push/pop psw
                                    356 ;	eliminated unneeded push/pop dpl
                                    357 ;	eliminated unneeded push/pop dph
                                    358 ;	eliminated unneeded push/pop b
                                    359 ;	eliminated unneeded push/pop acc
                                    360 ;------------------------------------------------------------
                                    361 ;Allocation info for local variables in function 'main'
                                    362 ;------------------------------------------------------------
                                    363 ;	testparking.c:33: void main(void)
                                    364 ;	-----------------------------------------
                                    365 ;	 function main
                                    366 ;	-----------------------------------------
      000018                        367 _main:
                                    368 ;	testparking.c:37: __endasm;
      000018 75 AF 00         [24]  369 	MOV _EA, #0
                                    370 ;	testparking.c:38: TMOD |= 0x20; // preserve modification in bootstrap
      00001B 43 89 20         [24]  371 	orl	_TMOD,#0x20
                                    372 ;	testparking.c:39: TH1 = -6; // baud rate
      00001E 75 8D FA         [24]  373 	mov	_TH1,#0xFA
                                    374 ;	testparking.c:40: SCON = 0x50; // 8-bit 1 stop REN
      000021 75 98 50         [24]  375 	mov	_SCON,#0x50
                                    376 ;	testparking.c:41: TR1 = 1; // start timer 1
      000024 D2 8E            [12]  377 	setb	_TR1
                                    378 ;	testparking.c:44: for(i = 0; i < BUFF_SIZE; i++)
      000026 75 27 00         [24]  379 	mov	_i,#0x00
      000029                        380 00105$:
                                    381 ;	testparking.c:45: buff[i] = 0;
      000029 E5 27            [12]  382 	mov	a,_i
      00002B 24 39            [12]  383 	add	a,#_buff
      00002D F8               [12]  384 	mov	r0,a
      00002E 76 00            [12]  385 	mov	@r0,#0x00
                                    386 ;	testparking.c:44: for(i = 0; i < BUFF_SIZE; i++)
      000030 05 27            [12]  387 	inc	_i
      000032 C3               [12]  388 	clr	c
      000033 E5 27            [12]  389 	mov	a,_i
      000035 64 80            [12]  390 	xrl	a,#0x80
      000037 94 87            [12]  391 	subb	a,#0x87
      000039 40 EE            [24]  392 	jc	00105$
                                    393 ;	testparking.c:46: in = out = 0;
      00003B 75 35 00         [24]  394 	mov	_out,#0x00
      00003E 75 34 00         [24]  395 	mov	_in,#0x00
                                    396 ;	testparking.c:47: spot = 0;
      000041 75 33 00         [24]  397 	mov	_spot,#0x00
                                    398 ;	testparking.c:48: TI = 1;
      000044 D2 99            [12]  399 	setb	_TI
                                    400 ;	testparking.c:50: SemaphoreCreate(mutex, 1);
      000046 75 37 01         [24]  401 	mov	_mutex,#0x01
                                    402 ;	testparking.c:51: SemaphoreCreate(empty, BUFF_SIZE);
      000049 75 38 07         [24]  403 	mov	_empty,#0x07
                                    404 ;	testparking.c:52: SemaphoreCreate(slot, 2);
      00004C 75 36 02         [24]  405 	mov	_slot,#0x02
                                    406 ;	testparking.c:55: __endasm;
      00004F 75 AF 01         [24]  407 	MOV _EA, #1
                                    408 ;	testparking.c:56: ThreadCreate(&CarA);
      000052 90 00 79         [24]  409 	mov	dptr,#_CarA
      000055 12 08 7B         [24]  410 	lcall	_ThreadCreate
                                    411 ;	testparking.c:57: ThreadCreate(&CarB);
      000058 90 01 A6         [24]  412 	mov	dptr,#_CarB
      00005B 12 08 7B         [24]  413 	lcall	_ThreadCreate
                                    414 ;	testparking.c:58: ThreadCreate(&CarC);
      00005E 90 02 D3         [24]  415 	mov	dptr,#_CarC
      000061 12 08 7B         [24]  416 	lcall	_ThreadCreate
                                    417 ;	testparking.c:59: ThreadCreate(&CarD);
      000064 90 04 00         [24]  418 	mov	dptr,#_CarD
      000067 12 08 7B         [24]  419 	lcall	_ThreadCreate
                                    420 ;	testparking.c:60: ThreadCreate(&CarE);
      00006A 90 05 2D         [24]  421 	mov	dptr,#_CarE
      00006D 12 08 7B         [24]  422 	lcall	_ThreadCreate
                                    423 ;	testparking.c:62: while(1) {}
      000070                        424 00103$:
      000070 80 FE            [24]  425 	sjmp	00103$
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    428 ;------------------------------------------------------------
                                    429 ;	testparking.c:64: void _sdcc_gsinit_startup(void)
                                    430 ;	-----------------------------------------
                                    431 ;	 function _sdcc_gsinit_startup
                                    432 ;	-----------------------------------------
      000072                        433 __sdcc_gsinit_startup:
                                    434 ;	testparking.c:68: __endasm;
      000072 02 06 5A         [24]  435 	ljmp _Bootstrap
      000075 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    439 ;------------------------------------------------------------
                                    440 ;	testparking.c:70: void _mcs51_genRAMCLEAR(void) {}
                                    441 ;	-----------------------------------------
                                    442 ;	 function _mcs51_genRAMCLEAR
                                    443 ;	-----------------------------------------
      000076                        444 __mcs51_genRAMCLEAR:
      000076 22               [24]  445 	ret
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    448 ;------------------------------------------------------------
                                    449 ;	testparking.c:71: void _mcs51_genXINIT(void) {}
                                    450 ;	-----------------------------------------
                                    451 ;	 function _mcs51_genXINIT
                                    452 ;	-----------------------------------------
      000077                        453 __mcs51_genXINIT:
      000077 22               [24]  454 	ret
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    457 ;------------------------------------------------------------
                                    458 ;	testparking.c:72: void _mcs51_genXRAMCLEAR(void) {}
                                    459 ;	-----------------------------------------
                                    460 ;	 function _mcs51_genXRAMCLEAR
                                    461 ;	-----------------------------------------
      000078                        462 __mcs51_genXRAMCLEAR:
      000078 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'CarA'
                                    466 ;------------------------------------------------------------
                                    467 ;	testparking.c:74: void CarA(void)
                                    468 ;	-----------------------------------------
                                    469 ;	 function CarA
                                    470 ;	-----------------------------------------
      000079                        471 _CarA:
                                    472 ;	testparking.c:76: SemaphoreWait(slot);
      000079                        473 	 0$:
      000079 85 36 E0         [24]  474 	MOV ACC, _slot 
      00007C 20 E7 FA         [24]  475 	JB ACC.7, 0$ 
      00007F 60 F8            [24]  476 	JZ 0$ 
      000081 15 36            [12]  477 	DEC _slot 
                                    478 ;	testparking.c:77: if(!(spot & 0x0F)){
      000083 E5 33            [12]  479 	mov	a,_spot
      000085 54 0F            [12]  480 	anl	a,#0x0F
      000087 60 03            [24]  481 	jz	00110$
      000089 02 01 19         [24]  482 	ljmp	00102$
      00008C                        483 00110$:
                                    484 ;	testparking.c:78: LOG('A');
      00008C 85 00 AF         [24]  485 	MOV _EA, 0x0 
      00008F                        486 	 1$:
      00008F 85 38 E0         [24]  487 	MOV ACC, _empty 
      000092 20 E7 FA         [24]  488 	JB ACC.7, 1$ 
      000095 60 F8            [24]  489 	JZ 1$ 
      000097 15 38            [12]  490 	DEC _empty 
      000099                        491 	 2$:
      000099 85 37 E0         [24]  492 	MOV ACC, _mutex 
      00009C 20 E7 FA         [24]  493 	JB ACC.7, 2$ 
      00009F 60 F8            [24]  494 	JZ 2$ 
      0000A1 15 37            [12]  495 	DEC _mutex 
      0000A3 E5 34            [12]  496 	mov	a,_in
      0000A5 24 39            [12]  497 	add	a,#_buff
      0000A7 F8               [12]  498 	mov	r0,a
      0000A8 76 41            [12]  499 	mov	@r0,#0x41
      0000AA AE 34            [24]  500 	mov	r6,_in
      0000AC E5 34            [12]  501 	mov	a,_in
      0000AE 33               [12]  502 	rlc	a
      0000AF 95 E0            [12]  503 	subb	a,acc
      0000B1 FF               [12]  504 	mov	r7,a
      0000B2 8E 82            [24]  505 	mov	dpl,r6
      0000B4 8F 83            [24]  506 	mov	dph,r7
      0000B6 A3               [24]  507 	inc	dptr
      0000B7 75 08 07         [24]  508 	mov	__modsint_PARM_2,#0x07
      0000BA 75 09 00         [24]  509 	mov	(__modsint_PARM_2 + 1),#0x00
      0000BD 12 0A 33         [24]  510 	lcall	__modsint
      0000C0 AE 82            [24]  511 	mov	r6,dpl
      0000C2 AF 83            [24]  512 	mov	r7,dph
      0000C4 8E 34            [24]  513 	mov	_in,r6
      0000C6 05 37            [12]  514 	INC _mutex 
      0000C8 85 01 AF         [24]  515 	MOV _EA, 0x1 
                                    516 ;	testparking.c:79: spot |= 1;
      0000CB 43 33 01         [24]  517 	orl	_spot,#0x01
                                    518 ;	testparking.c:80: delay(A_DELAY);
      0000CE 75 82 03         [24]  519 	mov	dpl,#0x03
      0000D1 12 06 A5         [24]  520 	lcall	_delay
                                    521 ;	testparking.c:81: LOG('A');
      0000D4 85 00 AF         [24]  522 	MOV _EA, 0x0 
      0000D7                        523 	 3$:
      0000D7 85 38 E0         [24]  524 	MOV ACC, _empty 
      0000DA 20 E7 FA         [24]  525 	JB ACC.7, 3$ 
      0000DD 60 F8            [24]  526 	JZ 3$ 
      0000DF 15 38            [12]  527 	DEC _empty 
      0000E1                        528 	 4$:
      0000E1 85 37 E0         [24]  529 	MOV ACC, _mutex 
      0000E4 20 E7 FA         [24]  530 	JB ACC.7, 4$ 
      0000E7 60 F8            [24]  531 	JZ 4$ 
      0000E9 15 37            [12]  532 	DEC _mutex 
      0000EB E5 34            [12]  533 	mov	a,_in
      0000ED 24 39            [12]  534 	add	a,#_buff
      0000EF F8               [12]  535 	mov	r0,a
      0000F0 76 41            [12]  536 	mov	@r0,#0x41
      0000F2 AE 34            [24]  537 	mov	r6,_in
      0000F4 E5 34            [12]  538 	mov	a,_in
      0000F6 33               [12]  539 	rlc	a
      0000F7 95 E0            [12]  540 	subb	a,acc
      0000F9 FF               [12]  541 	mov	r7,a
      0000FA 8E 82            [24]  542 	mov	dpl,r6
      0000FC 8F 83            [24]  543 	mov	dph,r7
      0000FE A3               [24]  544 	inc	dptr
      0000FF 75 08 07         [24]  545 	mov	__modsint_PARM_2,#0x07
      000102 75 09 00         [24]  546 	mov	(__modsint_PARM_2 + 1),#0x00
      000105 12 0A 33         [24]  547 	lcall	__modsint
      000108 AE 82            [24]  548 	mov	r6,dpl
      00010A AF 83            [24]  549 	mov	r7,dph
      00010C 8E 34            [24]  550 	mov	_in,r6
      00010E 05 37            [12]  551 	INC _mutex 
      000110 85 01 AF         [24]  552 	MOV _EA, 0x1 
                                    553 ;	testparking.c:82: spot &= (~0x0F);
      000113 53 33 F0         [24]  554 	anl	_spot,#0xF0
                                    555 ;	testparking.c:83: SemaphoreSignal(slot);
      000116 05 36            [12]  556 	INC _slot 
      000118 22               [24]  557 	ret
      000119                        558 00102$:
                                    559 ;	testparking.c:86: LOG('a');
      000119 85 00 AF         [24]  560 	MOV _EA, 0x0 
      00011C                        561 	 5$:
      00011C 85 38 E0         [24]  562 	MOV ACC, _empty 
      00011F 20 E7 FA         [24]  563 	JB ACC.7, 5$ 
      000122 60 F8            [24]  564 	JZ 5$ 
      000124 15 38            [12]  565 	DEC _empty 
      000126                        566 	 6$:
      000126 85 37 E0         [24]  567 	MOV ACC, _mutex 
      000129 20 E7 FA         [24]  568 	JB ACC.7, 6$ 
      00012C 60 F8            [24]  569 	JZ 6$ 
      00012E 15 37            [12]  570 	DEC _mutex 
      000130 E5 34            [12]  571 	mov	a,_in
      000132 24 39            [12]  572 	add	a,#_buff
      000134 F8               [12]  573 	mov	r0,a
      000135 76 61            [12]  574 	mov	@r0,#0x61
      000137 AE 34            [24]  575 	mov	r6,_in
      000139 E5 34            [12]  576 	mov	a,_in
      00013B 33               [12]  577 	rlc	a
      00013C 95 E0            [12]  578 	subb	a,acc
      00013E FF               [12]  579 	mov	r7,a
      00013F 8E 82            [24]  580 	mov	dpl,r6
      000141 8F 83            [24]  581 	mov	dph,r7
      000143 A3               [24]  582 	inc	dptr
      000144 75 08 07         [24]  583 	mov	__modsint_PARM_2,#0x07
      000147 75 09 00         [24]  584 	mov	(__modsint_PARM_2 + 1),#0x00
      00014A 12 0A 33         [24]  585 	lcall	__modsint
      00014D AE 82            [24]  586 	mov	r6,dpl
      00014F AF 83            [24]  587 	mov	r7,dph
      000151 8E 34            [24]  588 	mov	_in,r6
      000153 05 37            [12]  589 	INC _mutex 
      000155 85 01 AF         [24]  590 	MOV _EA, 0x1 
                                    591 ;	testparking.c:87: spot |= (1 << 4);
      000158 43 33 10         [24]  592 	orl	_spot,#0x10
                                    593 ;	testparking.c:88: delay(A_DELAY);
      00015B 75 82 03         [24]  594 	mov	dpl,#0x03
      00015E 12 06 A5         [24]  595 	lcall	_delay
                                    596 ;	testparking.c:89: LOG('a');
      000161 85 00 AF         [24]  597 	MOV _EA, 0x0 
      000164                        598 	 7$:
      000164 85 38 E0         [24]  599 	MOV ACC, _empty 
      000167 20 E7 FA         [24]  600 	JB ACC.7, 7$ 
      00016A 60 F8            [24]  601 	JZ 7$ 
      00016C 15 38            [12]  602 	DEC _empty 
      00016E                        603 	 8$:
      00016E 85 37 E0         [24]  604 	MOV ACC, _mutex 
      000171 20 E7 FA         [24]  605 	JB ACC.7, 8$ 
      000174 60 F8            [24]  606 	JZ 8$ 
      000176 15 37            [12]  607 	DEC _mutex 
      000178 E5 34            [12]  608 	mov	a,_in
      00017A 24 39            [12]  609 	add	a,#_buff
      00017C F8               [12]  610 	mov	r0,a
      00017D 76 61            [12]  611 	mov	@r0,#0x61
      00017F AE 34            [24]  612 	mov	r6,_in
      000181 E5 34            [12]  613 	mov	a,_in
      000183 33               [12]  614 	rlc	a
      000184 95 E0            [12]  615 	subb	a,acc
      000186 FF               [12]  616 	mov	r7,a
      000187 8E 82            [24]  617 	mov	dpl,r6
      000189 8F 83            [24]  618 	mov	dph,r7
      00018B A3               [24]  619 	inc	dptr
      00018C 75 08 07         [24]  620 	mov	__modsint_PARM_2,#0x07
      00018F 75 09 00         [24]  621 	mov	(__modsint_PARM_2 + 1),#0x00
      000192 12 0A 33         [24]  622 	lcall	__modsint
      000195 AE 82            [24]  623 	mov	r6,dpl
      000197 AF 83            [24]  624 	mov	r7,dph
      000199 8E 34            [24]  625 	mov	_in,r6
      00019B 05 37            [12]  626 	INC _mutex 
      00019D 85 01 AF         [24]  627 	MOV _EA, 0x1 
                                    628 ;	testparking.c:90: spot &= (~0xF0);
      0001A0 53 33 0F         [24]  629 	anl	_spot,#0x0F
                                    630 ;	testparking.c:91: SemaphoreSignal(slot);
      0001A3 05 36            [12]  631 	INC _slot 
      0001A5 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'CarB'
                                    635 ;------------------------------------------------------------
                                    636 ;	testparking.c:94: void CarB(void)
                                    637 ;	-----------------------------------------
                                    638 ;	 function CarB
                                    639 ;	-----------------------------------------
      0001A6                        640 _CarB:
                                    641 ;	testparking.c:96: SemaphoreWait(slot);
      0001A6                        642 	 9$:
      0001A6 85 36 E0         [24]  643 	MOV ACC, _slot 
      0001A9 20 E7 FA         [24]  644 	JB ACC.7, 9$ 
      0001AC 60 F8            [24]  645 	JZ 9$ 
      0001AE 15 36            [12]  646 	DEC _slot 
                                    647 ;	testparking.c:97: if(!(spot & 0x0F)){
      0001B0 E5 33            [12]  648 	mov	a,_spot
      0001B2 54 0F            [12]  649 	anl	a,#0x0F
      0001B4 60 03            [24]  650 	jz	00110$
      0001B6 02 02 46         [24]  651 	ljmp	00102$
      0001B9                        652 00110$:
                                    653 ;	testparking.c:98: LOG('B');
      0001B9 85 00 AF         [24]  654 	MOV _EA, 0x0 
      0001BC                        655 	 10$:
      0001BC 85 38 E0         [24]  656 	MOV ACC, _empty 
      0001BF 20 E7 FA         [24]  657 	JB ACC.7, 10$ 
      0001C2 60 F8            [24]  658 	JZ 10$ 
      0001C4 15 38            [12]  659 	DEC _empty 
      0001C6                        660 	 11$:
      0001C6 85 37 E0         [24]  661 	MOV ACC, _mutex 
      0001C9 20 E7 FA         [24]  662 	JB ACC.7, 11$ 
      0001CC 60 F8            [24]  663 	JZ 11$ 
      0001CE 15 37            [12]  664 	DEC _mutex 
      0001D0 E5 34            [12]  665 	mov	a,_in
      0001D2 24 39            [12]  666 	add	a,#_buff
      0001D4 F8               [12]  667 	mov	r0,a
      0001D5 76 42            [12]  668 	mov	@r0,#0x42
      0001D7 AE 34            [24]  669 	mov	r6,_in
      0001D9 E5 34            [12]  670 	mov	a,_in
      0001DB 33               [12]  671 	rlc	a
      0001DC 95 E0            [12]  672 	subb	a,acc
      0001DE FF               [12]  673 	mov	r7,a
      0001DF 8E 82            [24]  674 	mov	dpl,r6
      0001E1 8F 83            [24]  675 	mov	dph,r7
      0001E3 A3               [24]  676 	inc	dptr
      0001E4 75 08 07         [24]  677 	mov	__modsint_PARM_2,#0x07
      0001E7 75 09 00         [24]  678 	mov	(__modsint_PARM_2 + 1),#0x00
      0001EA 12 0A 33         [24]  679 	lcall	__modsint
      0001ED AE 82            [24]  680 	mov	r6,dpl
      0001EF AF 83            [24]  681 	mov	r7,dph
      0001F1 8E 34            [24]  682 	mov	_in,r6
      0001F3 05 37            [12]  683 	INC _mutex 
      0001F5 85 01 AF         [24]  684 	MOV _EA, 0x1 
                                    685 ;	testparking.c:99: spot |= 2;
      0001F8 43 33 02         [24]  686 	orl	_spot,#0x02
                                    687 ;	testparking.c:100: delay(B_DELAY);
      0001FB 75 82 02         [24]  688 	mov	dpl,#0x02
      0001FE 12 06 A5         [24]  689 	lcall	_delay
                                    690 ;	testparking.c:101: LOG('B');
      000201 85 00 AF         [24]  691 	MOV _EA, 0x0 
      000204                        692 	 12$:
      000204 85 38 E0         [24]  693 	MOV ACC, _empty 
      000207 20 E7 FA         [24]  694 	JB ACC.7, 12$ 
      00020A 60 F8            [24]  695 	JZ 12$ 
      00020C 15 38            [12]  696 	DEC _empty 
      00020E                        697 	 13$:
      00020E 85 37 E0         [24]  698 	MOV ACC, _mutex 
      000211 20 E7 FA         [24]  699 	JB ACC.7, 13$ 
      000214 60 F8            [24]  700 	JZ 13$ 
      000216 15 37            [12]  701 	DEC _mutex 
      000218 E5 34            [12]  702 	mov	a,_in
      00021A 24 39            [12]  703 	add	a,#_buff
      00021C F8               [12]  704 	mov	r0,a
      00021D 76 42            [12]  705 	mov	@r0,#0x42
      00021F AE 34            [24]  706 	mov	r6,_in
      000221 E5 34            [12]  707 	mov	a,_in
      000223 33               [12]  708 	rlc	a
      000224 95 E0            [12]  709 	subb	a,acc
      000226 FF               [12]  710 	mov	r7,a
      000227 8E 82            [24]  711 	mov	dpl,r6
      000229 8F 83            [24]  712 	mov	dph,r7
      00022B A3               [24]  713 	inc	dptr
      00022C 75 08 07         [24]  714 	mov	__modsint_PARM_2,#0x07
      00022F 75 09 00         [24]  715 	mov	(__modsint_PARM_2 + 1),#0x00
      000232 12 0A 33         [24]  716 	lcall	__modsint
      000235 AE 82            [24]  717 	mov	r6,dpl
      000237 AF 83            [24]  718 	mov	r7,dph
      000239 8E 34            [24]  719 	mov	_in,r6
      00023B 05 37            [12]  720 	INC _mutex 
      00023D 85 01 AF         [24]  721 	MOV _EA, 0x1 
                                    722 ;	testparking.c:102: spot &= (~0x0F);
      000240 53 33 F0         [24]  723 	anl	_spot,#0xF0
                                    724 ;	testparking.c:103: SemaphoreSignal(slot);
      000243 05 36            [12]  725 	INC _slot 
      000245 22               [24]  726 	ret
      000246                        727 00102$:
                                    728 ;	testparking.c:106: LOG('b');
      000246 85 00 AF         [24]  729 	MOV _EA, 0x0 
      000249                        730 	 14$:
      000249 85 38 E0         [24]  731 	MOV ACC, _empty 
      00024C 20 E7 FA         [24]  732 	JB ACC.7, 14$ 
      00024F 60 F8            [24]  733 	JZ 14$ 
      000251 15 38            [12]  734 	DEC _empty 
      000253                        735 	 15$:
      000253 85 37 E0         [24]  736 	MOV ACC, _mutex 
      000256 20 E7 FA         [24]  737 	JB ACC.7, 15$ 
      000259 60 F8            [24]  738 	JZ 15$ 
      00025B 15 37            [12]  739 	DEC _mutex 
      00025D E5 34            [12]  740 	mov	a,_in
      00025F 24 39            [12]  741 	add	a,#_buff
      000261 F8               [12]  742 	mov	r0,a
      000262 76 62            [12]  743 	mov	@r0,#0x62
      000264 AE 34            [24]  744 	mov	r6,_in
      000266 E5 34            [12]  745 	mov	a,_in
      000268 33               [12]  746 	rlc	a
      000269 95 E0            [12]  747 	subb	a,acc
      00026B FF               [12]  748 	mov	r7,a
      00026C 8E 82            [24]  749 	mov	dpl,r6
      00026E 8F 83            [24]  750 	mov	dph,r7
      000270 A3               [24]  751 	inc	dptr
      000271 75 08 07         [24]  752 	mov	__modsint_PARM_2,#0x07
      000274 75 09 00         [24]  753 	mov	(__modsint_PARM_2 + 1),#0x00
      000277 12 0A 33         [24]  754 	lcall	__modsint
      00027A AE 82            [24]  755 	mov	r6,dpl
      00027C AF 83            [24]  756 	mov	r7,dph
      00027E 8E 34            [24]  757 	mov	_in,r6
      000280 05 37            [12]  758 	INC _mutex 
      000282 85 01 AF         [24]  759 	MOV _EA, 0x1 
                                    760 ;	testparking.c:107: spot |= (2 << 4);
      000285 43 33 20         [24]  761 	orl	_spot,#0x20
                                    762 ;	testparking.c:108: delay(B_DELAY);
      000288 75 82 02         [24]  763 	mov	dpl,#0x02
      00028B 12 06 A5         [24]  764 	lcall	_delay
                                    765 ;	testparking.c:109: LOG('b');
      00028E 85 00 AF         [24]  766 	MOV _EA, 0x0 
      000291                        767 	 16$:
      000291 85 38 E0         [24]  768 	MOV ACC, _empty 
      000294 20 E7 FA         [24]  769 	JB ACC.7, 16$ 
      000297 60 F8            [24]  770 	JZ 16$ 
      000299 15 38            [12]  771 	DEC _empty 
      00029B                        772 	 17$:
      00029B 85 37 E0         [24]  773 	MOV ACC, _mutex 
      00029E 20 E7 FA         [24]  774 	JB ACC.7, 17$ 
      0002A1 60 F8            [24]  775 	JZ 17$ 
      0002A3 15 37            [12]  776 	DEC _mutex 
      0002A5 E5 34            [12]  777 	mov	a,_in
      0002A7 24 39            [12]  778 	add	a,#_buff
      0002A9 F8               [12]  779 	mov	r0,a
      0002AA 76 62            [12]  780 	mov	@r0,#0x62
      0002AC AE 34            [24]  781 	mov	r6,_in
      0002AE E5 34            [12]  782 	mov	a,_in
      0002B0 33               [12]  783 	rlc	a
      0002B1 95 E0            [12]  784 	subb	a,acc
      0002B3 FF               [12]  785 	mov	r7,a
      0002B4 8E 82            [24]  786 	mov	dpl,r6
      0002B6 8F 83            [24]  787 	mov	dph,r7
      0002B8 A3               [24]  788 	inc	dptr
      0002B9 75 08 07         [24]  789 	mov	__modsint_PARM_2,#0x07
      0002BC 75 09 00         [24]  790 	mov	(__modsint_PARM_2 + 1),#0x00
      0002BF 12 0A 33         [24]  791 	lcall	__modsint
      0002C2 AE 82            [24]  792 	mov	r6,dpl
      0002C4 AF 83            [24]  793 	mov	r7,dph
      0002C6 8E 34            [24]  794 	mov	_in,r6
      0002C8 05 37            [12]  795 	INC _mutex 
      0002CA 85 01 AF         [24]  796 	MOV _EA, 0x1 
                                    797 ;	testparking.c:110: spot &= (~0xF0);
      0002CD 53 33 0F         [24]  798 	anl	_spot,#0x0F
                                    799 ;	testparking.c:111: SemaphoreSignal(slot);
      0002D0 05 36            [12]  800 	INC _slot 
      0002D2 22               [24]  801 	ret
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'CarC'
                                    804 ;------------------------------------------------------------
                                    805 ;	testparking.c:114: void CarC(void)
                                    806 ;	-----------------------------------------
                                    807 ;	 function CarC
                                    808 ;	-----------------------------------------
      0002D3                        809 _CarC:
                                    810 ;	testparking.c:116: SemaphoreWait(slot);
      0002D3                        811 	 18$:
      0002D3 85 36 E0         [24]  812 	MOV ACC, _slot 
      0002D6 20 E7 FA         [24]  813 	JB ACC.7, 18$ 
      0002D9 60 F8            [24]  814 	JZ 18$ 
      0002DB 15 36            [12]  815 	DEC _slot 
                                    816 ;	testparking.c:117: if(!(spot & 0x0F)){
      0002DD E5 33            [12]  817 	mov	a,_spot
      0002DF 54 0F            [12]  818 	anl	a,#0x0F
      0002E1 60 03            [24]  819 	jz	00110$
      0002E3 02 03 73         [24]  820 	ljmp	00102$
      0002E6                        821 00110$:
                                    822 ;	testparking.c:118: LOG('C');
      0002E6 85 00 AF         [24]  823 	MOV _EA, 0x0 
      0002E9                        824 	 19$:
      0002E9 85 38 E0         [24]  825 	MOV ACC, _empty 
      0002EC 20 E7 FA         [24]  826 	JB ACC.7, 19$ 
      0002EF 60 F8            [24]  827 	JZ 19$ 
      0002F1 15 38            [12]  828 	DEC _empty 
      0002F3                        829 	 20$:
      0002F3 85 37 E0         [24]  830 	MOV ACC, _mutex 
      0002F6 20 E7 FA         [24]  831 	JB ACC.7, 20$ 
      0002F9 60 F8            [24]  832 	JZ 20$ 
      0002FB 15 37            [12]  833 	DEC _mutex 
      0002FD E5 34            [12]  834 	mov	a,_in
      0002FF 24 39            [12]  835 	add	a,#_buff
      000301 F8               [12]  836 	mov	r0,a
      000302 76 43            [12]  837 	mov	@r0,#0x43
      000304 AE 34            [24]  838 	mov	r6,_in
      000306 E5 34            [12]  839 	mov	a,_in
      000308 33               [12]  840 	rlc	a
      000309 95 E0            [12]  841 	subb	a,acc
      00030B FF               [12]  842 	mov	r7,a
      00030C 8E 82            [24]  843 	mov	dpl,r6
      00030E 8F 83            [24]  844 	mov	dph,r7
      000310 A3               [24]  845 	inc	dptr
      000311 75 08 07         [24]  846 	mov	__modsint_PARM_2,#0x07
      000314 75 09 00         [24]  847 	mov	(__modsint_PARM_2 + 1),#0x00
      000317 12 0A 33         [24]  848 	lcall	__modsint
      00031A AE 82            [24]  849 	mov	r6,dpl
      00031C AF 83            [24]  850 	mov	r7,dph
      00031E 8E 34            [24]  851 	mov	_in,r6
      000320 05 37            [12]  852 	INC _mutex 
      000322 85 01 AF         [24]  853 	MOV _EA, 0x1 
                                    854 ;	testparking.c:119: spot |= 3;
      000325 43 33 03         [24]  855 	orl	_spot,#0x03
                                    856 ;	testparking.c:120: delay(C_DELAY);
      000328 75 82 02         [24]  857 	mov	dpl,#0x02
      00032B 12 06 A5         [24]  858 	lcall	_delay
                                    859 ;	testparking.c:121: LOG('C');
      00032E 85 00 AF         [24]  860 	MOV _EA, 0x0 
      000331                        861 	 21$:
      000331 85 38 E0         [24]  862 	MOV ACC, _empty 
      000334 20 E7 FA         [24]  863 	JB ACC.7, 21$ 
      000337 60 F8            [24]  864 	JZ 21$ 
      000339 15 38            [12]  865 	DEC _empty 
      00033B                        866 	 22$:
      00033B 85 37 E0         [24]  867 	MOV ACC, _mutex 
      00033E 20 E7 FA         [24]  868 	JB ACC.7, 22$ 
      000341 60 F8            [24]  869 	JZ 22$ 
      000343 15 37            [12]  870 	DEC _mutex 
      000345 E5 34            [12]  871 	mov	a,_in
      000347 24 39            [12]  872 	add	a,#_buff
      000349 F8               [12]  873 	mov	r0,a
      00034A 76 43            [12]  874 	mov	@r0,#0x43
      00034C AE 34            [24]  875 	mov	r6,_in
      00034E E5 34            [12]  876 	mov	a,_in
      000350 33               [12]  877 	rlc	a
      000351 95 E0            [12]  878 	subb	a,acc
      000353 FF               [12]  879 	mov	r7,a
      000354 8E 82            [24]  880 	mov	dpl,r6
      000356 8F 83            [24]  881 	mov	dph,r7
      000358 A3               [24]  882 	inc	dptr
      000359 75 08 07         [24]  883 	mov	__modsint_PARM_2,#0x07
      00035C 75 09 00         [24]  884 	mov	(__modsint_PARM_2 + 1),#0x00
      00035F 12 0A 33         [24]  885 	lcall	__modsint
      000362 AE 82            [24]  886 	mov	r6,dpl
      000364 AF 83            [24]  887 	mov	r7,dph
      000366 8E 34            [24]  888 	mov	_in,r6
      000368 05 37            [12]  889 	INC _mutex 
      00036A 85 01 AF         [24]  890 	MOV _EA, 0x1 
                                    891 ;	testparking.c:122: spot &= (~0x0F);
      00036D 53 33 F0         [24]  892 	anl	_spot,#0xF0
                                    893 ;	testparking.c:123: SemaphoreSignal(slot);
      000370 05 36            [12]  894 	INC _slot 
      000372 22               [24]  895 	ret
      000373                        896 00102$:
                                    897 ;	testparking.c:126: LOG('c');
      000373 85 00 AF         [24]  898 	MOV _EA, 0x0 
      000376                        899 	 23$:
      000376 85 38 E0         [24]  900 	MOV ACC, _empty 
      000379 20 E7 FA         [24]  901 	JB ACC.7, 23$ 
      00037C 60 F8            [24]  902 	JZ 23$ 
      00037E 15 38            [12]  903 	DEC _empty 
      000380                        904 	 24$:
      000380 85 37 E0         [24]  905 	MOV ACC, _mutex 
      000383 20 E7 FA         [24]  906 	JB ACC.7, 24$ 
      000386 60 F8            [24]  907 	JZ 24$ 
      000388 15 37            [12]  908 	DEC _mutex 
      00038A E5 34            [12]  909 	mov	a,_in
      00038C 24 39            [12]  910 	add	a,#_buff
      00038E F8               [12]  911 	mov	r0,a
      00038F 76 63            [12]  912 	mov	@r0,#0x63
      000391 AE 34            [24]  913 	mov	r6,_in
      000393 E5 34            [12]  914 	mov	a,_in
      000395 33               [12]  915 	rlc	a
      000396 95 E0            [12]  916 	subb	a,acc
      000398 FF               [12]  917 	mov	r7,a
      000399 8E 82            [24]  918 	mov	dpl,r6
      00039B 8F 83            [24]  919 	mov	dph,r7
      00039D A3               [24]  920 	inc	dptr
      00039E 75 08 07         [24]  921 	mov	__modsint_PARM_2,#0x07
      0003A1 75 09 00         [24]  922 	mov	(__modsint_PARM_2 + 1),#0x00
      0003A4 12 0A 33         [24]  923 	lcall	__modsint
      0003A7 AE 82            [24]  924 	mov	r6,dpl
      0003A9 AF 83            [24]  925 	mov	r7,dph
      0003AB 8E 34            [24]  926 	mov	_in,r6
      0003AD 05 37            [12]  927 	INC _mutex 
      0003AF 85 01 AF         [24]  928 	MOV _EA, 0x1 
                                    929 ;	testparking.c:127: spot |= (3 << 4);
      0003B2 43 33 30         [24]  930 	orl	_spot,#0x30
                                    931 ;	testparking.c:128: delay(C_DELAY);
      0003B5 75 82 02         [24]  932 	mov	dpl,#0x02
      0003B8 12 06 A5         [24]  933 	lcall	_delay
                                    934 ;	testparking.c:129: LOG('c');
      0003BB 85 00 AF         [24]  935 	MOV _EA, 0x0 
      0003BE                        936 	 25$:
      0003BE 85 38 E0         [24]  937 	MOV ACC, _empty 
      0003C1 20 E7 FA         [24]  938 	JB ACC.7, 25$ 
      0003C4 60 F8            [24]  939 	JZ 25$ 
      0003C6 15 38            [12]  940 	DEC _empty 
      0003C8                        941 	 26$:
      0003C8 85 37 E0         [24]  942 	MOV ACC, _mutex 
      0003CB 20 E7 FA         [24]  943 	JB ACC.7, 26$ 
      0003CE 60 F8            [24]  944 	JZ 26$ 
      0003D0 15 37            [12]  945 	DEC _mutex 
      0003D2 E5 34            [12]  946 	mov	a,_in
      0003D4 24 39            [12]  947 	add	a,#_buff
      0003D6 F8               [12]  948 	mov	r0,a
      0003D7 76 63            [12]  949 	mov	@r0,#0x63
      0003D9 AE 34            [24]  950 	mov	r6,_in
      0003DB E5 34            [12]  951 	mov	a,_in
      0003DD 33               [12]  952 	rlc	a
      0003DE 95 E0            [12]  953 	subb	a,acc
      0003E0 FF               [12]  954 	mov	r7,a
      0003E1 8E 82            [24]  955 	mov	dpl,r6
      0003E3 8F 83            [24]  956 	mov	dph,r7
      0003E5 A3               [24]  957 	inc	dptr
      0003E6 75 08 07         [24]  958 	mov	__modsint_PARM_2,#0x07
      0003E9 75 09 00         [24]  959 	mov	(__modsint_PARM_2 + 1),#0x00
      0003EC 12 0A 33         [24]  960 	lcall	__modsint
      0003EF AE 82            [24]  961 	mov	r6,dpl
      0003F1 AF 83            [24]  962 	mov	r7,dph
      0003F3 8E 34            [24]  963 	mov	_in,r6
      0003F5 05 37            [12]  964 	INC _mutex 
      0003F7 85 01 AF         [24]  965 	MOV _EA, 0x1 
                                    966 ;	testparking.c:130: spot &= (~0xF0);
      0003FA 53 33 0F         [24]  967 	anl	_spot,#0x0F
                                    968 ;	testparking.c:131: SemaphoreSignal(slot);
      0003FD 05 36            [12]  969 	INC _slot 
      0003FF 22               [24]  970 	ret
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'CarD'
                                    973 ;------------------------------------------------------------
                                    974 ;	testparking.c:134: void CarD(void)
                                    975 ;	-----------------------------------------
                                    976 ;	 function CarD
                                    977 ;	-----------------------------------------
      000400                        978 _CarD:
                                    979 ;	testparking.c:136: SemaphoreWait(slot);
      000400                        980 	 27$:
      000400 85 36 E0         [24]  981 	MOV ACC, _slot 
      000403 20 E7 FA         [24]  982 	JB ACC.7, 27$ 
      000406 60 F8            [24]  983 	JZ 27$ 
      000408 15 36            [12]  984 	DEC _slot 
                                    985 ;	testparking.c:137: if(!(spot & 0x0F)){
      00040A E5 33            [12]  986 	mov	a,_spot
      00040C 54 0F            [12]  987 	anl	a,#0x0F
      00040E 60 03            [24]  988 	jz	00110$
      000410 02 04 A0         [24]  989 	ljmp	00102$
      000413                        990 00110$:
                                    991 ;	testparking.c:138: LOG('D');
      000413 85 00 AF         [24]  992 	MOV _EA, 0x0 
      000416                        993 	 28$:
      000416 85 38 E0         [24]  994 	MOV ACC, _empty 
      000419 20 E7 FA         [24]  995 	JB ACC.7, 28$ 
      00041C 60 F8            [24]  996 	JZ 28$ 
      00041E 15 38            [12]  997 	DEC _empty 
      000420                        998 	 29$:
      000420 85 37 E0         [24]  999 	MOV ACC, _mutex 
      000423 20 E7 FA         [24] 1000 	JB ACC.7, 29$ 
      000426 60 F8            [24] 1001 	JZ 29$ 
      000428 15 37            [12] 1002 	DEC _mutex 
      00042A E5 34            [12] 1003 	mov	a,_in
      00042C 24 39            [12] 1004 	add	a,#_buff
      00042E F8               [12] 1005 	mov	r0,a
      00042F 76 44            [12] 1006 	mov	@r0,#0x44
      000431 AE 34            [24] 1007 	mov	r6,_in
      000433 E5 34            [12] 1008 	mov	a,_in
      000435 33               [12] 1009 	rlc	a
      000436 95 E0            [12] 1010 	subb	a,acc
      000438 FF               [12] 1011 	mov	r7,a
      000439 8E 82            [24] 1012 	mov	dpl,r6
      00043B 8F 83            [24] 1013 	mov	dph,r7
      00043D A3               [24] 1014 	inc	dptr
      00043E 75 08 07         [24] 1015 	mov	__modsint_PARM_2,#0x07
      000441 75 09 00         [24] 1016 	mov	(__modsint_PARM_2 + 1),#0x00
      000444 12 0A 33         [24] 1017 	lcall	__modsint
      000447 AE 82            [24] 1018 	mov	r6,dpl
      000449 AF 83            [24] 1019 	mov	r7,dph
      00044B 8E 34            [24] 1020 	mov	_in,r6
      00044D 05 37            [12] 1021 	INC _mutex 
      00044F 85 01 AF         [24] 1022 	MOV _EA, 0x1 
                                   1023 ;	testparking.c:139: spot |= 4;
      000452 43 33 04         [24] 1024 	orl	_spot,#0x04
                                   1025 ;	testparking.c:140: delay(D_DELAY);
      000455 75 82 03         [24] 1026 	mov	dpl,#0x03
      000458 12 06 A5         [24] 1027 	lcall	_delay
                                   1028 ;	testparking.c:141: LOG('D');
      00045B 85 00 AF         [24] 1029 	MOV _EA, 0x0 
      00045E                       1030 	 30$:
      00045E 85 38 E0         [24] 1031 	MOV ACC, _empty 
      000461 20 E7 FA         [24] 1032 	JB ACC.7, 30$ 
      000464 60 F8            [24] 1033 	JZ 30$ 
      000466 15 38            [12] 1034 	DEC _empty 
      000468                       1035 	 31$:
      000468 85 37 E0         [24] 1036 	MOV ACC, _mutex 
      00046B 20 E7 FA         [24] 1037 	JB ACC.7, 31$ 
      00046E 60 F8            [24] 1038 	JZ 31$ 
      000470 15 37            [12] 1039 	DEC _mutex 
      000472 E5 34            [12] 1040 	mov	a,_in
      000474 24 39            [12] 1041 	add	a,#_buff
      000476 F8               [12] 1042 	mov	r0,a
      000477 76 44            [12] 1043 	mov	@r0,#0x44
      000479 AE 34            [24] 1044 	mov	r6,_in
      00047B E5 34            [12] 1045 	mov	a,_in
      00047D 33               [12] 1046 	rlc	a
      00047E 95 E0            [12] 1047 	subb	a,acc
      000480 FF               [12] 1048 	mov	r7,a
      000481 8E 82            [24] 1049 	mov	dpl,r6
      000483 8F 83            [24] 1050 	mov	dph,r7
      000485 A3               [24] 1051 	inc	dptr
      000486 75 08 07         [24] 1052 	mov	__modsint_PARM_2,#0x07
      000489 75 09 00         [24] 1053 	mov	(__modsint_PARM_2 + 1),#0x00
      00048C 12 0A 33         [24] 1054 	lcall	__modsint
      00048F AE 82            [24] 1055 	mov	r6,dpl
      000491 AF 83            [24] 1056 	mov	r7,dph
      000493 8E 34            [24] 1057 	mov	_in,r6
      000495 05 37            [12] 1058 	INC _mutex 
      000497 85 01 AF         [24] 1059 	MOV _EA, 0x1 
                                   1060 ;	testparking.c:142: spot &= (~0x0F);
      00049A 53 33 F0         [24] 1061 	anl	_spot,#0xF0
                                   1062 ;	testparking.c:143: SemaphoreSignal(slot);
      00049D 05 36            [12] 1063 	INC _slot 
      00049F 22               [24] 1064 	ret
      0004A0                       1065 00102$:
                                   1066 ;	testparking.c:146: LOG('d');
      0004A0 85 00 AF         [24] 1067 	MOV _EA, 0x0 
      0004A3                       1068 	 32$:
      0004A3 85 38 E0         [24] 1069 	MOV ACC, _empty 
      0004A6 20 E7 FA         [24] 1070 	JB ACC.7, 32$ 
      0004A9 60 F8            [24] 1071 	JZ 32$ 
      0004AB 15 38            [12] 1072 	DEC _empty 
      0004AD                       1073 	 33$:
      0004AD 85 37 E0         [24] 1074 	MOV ACC, _mutex 
      0004B0 20 E7 FA         [24] 1075 	JB ACC.7, 33$ 
      0004B3 60 F8            [24] 1076 	JZ 33$ 
      0004B5 15 37            [12] 1077 	DEC _mutex 
      0004B7 E5 34            [12] 1078 	mov	a,_in
      0004B9 24 39            [12] 1079 	add	a,#_buff
      0004BB F8               [12] 1080 	mov	r0,a
      0004BC 76 64            [12] 1081 	mov	@r0,#0x64
      0004BE AE 34            [24] 1082 	mov	r6,_in
      0004C0 E5 34            [12] 1083 	mov	a,_in
      0004C2 33               [12] 1084 	rlc	a
      0004C3 95 E0            [12] 1085 	subb	a,acc
      0004C5 FF               [12] 1086 	mov	r7,a
      0004C6 8E 82            [24] 1087 	mov	dpl,r6
      0004C8 8F 83            [24] 1088 	mov	dph,r7
      0004CA A3               [24] 1089 	inc	dptr
      0004CB 75 08 07         [24] 1090 	mov	__modsint_PARM_2,#0x07
      0004CE 75 09 00         [24] 1091 	mov	(__modsint_PARM_2 + 1),#0x00
      0004D1 12 0A 33         [24] 1092 	lcall	__modsint
      0004D4 AE 82            [24] 1093 	mov	r6,dpl
      0004D6 AF 83            [24] 1094 	mov	r7,dph
      0004D8 8E 34            [24] 1095 	mov	_in,r6
      0004DA 05 37            [12] 1096 	INC _mutex 
      0004DC 85 01 AF         [24] 1097 	MOV _EA, 0x1 
                                   1098 ;	testparking.c:147: spot |= (4 << 4);
      0004DF 43 33 40         [24] 1099 	orl	_spot,#0x40
                                   1100 ;	testparking.c:148: delay(D_DELAY);
      0004E2 75 82 03         [24] 1101 	mov	dpl,#0x03
      0004E5 12 06 A5         [24] 1102 	lcall	_delay
                                   1103 ;	testparking.c:149: LOG('d');
      0004E8 85 00 AF         [24] 1104 	MOV _EA, 0x0 
      0004EB                       1105 	 34$:
      0004EB 85 38 E0         [24] 1106 	MOV ACC, _empty 
      0004EE 20 E7 FA         [24] 1107 	JB ACC.7, 34$ 
      0004F1 60 F8            [24] 1108 	JZ 34$ 
      0004F3 15 38            [12] 1109 	DEC _empty 
      0004F5                       1110 	 35$:
      0004F5 85 37 E0         [24] 1111 	MOV ACC, _mutex 
      0004F8 20 E7 FA         [24] 1112 	JB ACC.7, 35$ 
      0004FB 60 F8            [24] 1113 	JZ 35$ 
      0004FD 15 37            [12] 1114 	DEC _mutex 
      0004FF E5 34            [12] 1115 	mov	a,_in
      000501 24 39            [12] 1116 	add	a,#_buff
      000503 F8               [12] 1117 	mov	r0,a
      000504 76 64            [12] 1118 	mov	@r0,#0x64
      000506 AE 34            [24] 1119 	mov	r6,_in
      000508 E5 34            [12] 1120 	mov	a,_in
      00050A 33               [12] 1121 	rlc	a
      00050B 95 E0            [12] 1122 	subb	a,acc
      00050D FF               [12] 1123 	mov	r7,a
      00050E 8E 82            [24] 1124 	mov	dpl,r6
      000510 8F 83            [24] 1125 	mov	dph,r7
      000512 A3               [24] 1126 	inc	dptr
      000513 75 08 07         [24] 1127 	mov	__modsint_PARM_2,#0x07
      000516 75 09 00         [24] 1128 	mov	(__modsint_PARM_2 + 1),#0x00
      000519 12 0A 33         [24] 1129 	lcall	__modsint
      00051C AE 82            [24] 1130 	mov	r6,dpl
      00051E AF 83            [24] 1131 	mov	r7,dph
      000520 8E 34            [24] 1132 	mov	_in,r6
      000522 05 37            [12] 1133 	INC _mutex 
      000524 85 01 AF         [24] 1134 	MOV _EA, 0x1 
                                   1135 ;	testparking.c:150: spot &= (~0xF0);
      000527 53 33 0F         [24] 1136 	anl	_spot,#0x0F
                                   1137 ;	testparking.c:151: SemaphoreSignal(slot);
      00052A 05 36            [12] 1138 	INC _slot 
      00052C 22               [24] 1139 	ret
                                   1140 ;------------------------------------------------------------
                                   1141 ;Allocation info for local variables in function 'CarE'
                                   1142 ;------------------------------------------------------------
                                   1143 ;	testparking.c:154: void CarE(void)
                                   1144 ;	-----------------------------------------
                                   1145 ;	 function CarE
                                   1146 ;	-----------------------------------------
      00052D                       1147 _CarE:
                                   1148 ;	testparking.c:156: SemaphoreWait(slot);
      00052D                       1149 	 36$:
      00052D 85 36 E0         [24] 1150 	MOV ACC, _slot 
      000530 20 E7 FA         [24] 1151 	JB ACC.7, 36$ 
      000533 60 F8            [24] 1152 	JZ 36$ 
      000535 15 36            [12] 1153 	DEC _slot 
                                   1154 ;	testparking.c:157: if(!(spot & 0x0F)){
      000537 E5 33            [12] 1155 	mov	a,_spot
      000539 54 0F            [12] 1156 	anl	a,#0x0F
      00053B 60 03            [24] 1157 	jz	00110$
      00053D 02 05 CD         [24] 1158 	ljmp	00102$
      000540                       1159 00110$:
                                   1160 ;	testparking.c:158: LOG('E');
      000540 85 00 AF         [24] 1161 	MOV _EA, 0x0 
      000543                       1162 	 37$:
      000543 85 38 E0         [24] 1163 	MOV ACC, _empty 
      000546 20 E7 FA         [24] 1164 	JB ACC.7, 37$ 
      000549 60 F8            [24] 1165 	JZ 37$ 
      00054B 15 38            [12] 1166 	DEC _empty 
      00054D                       1167 	 38$:
      00054D 85 37 E0         [24] 1168 	MOV ACC, _mutex 
      000550 20 E7 FA         [24] 1169 	JB ACC.7, 38$ 
      000553 60 F8            [24] 1170 	JZ 38$ 
      000555 15 37            [12] 1171 	DEC _mutex 
      000557 E5 34            [12] 1172 	mov	a,_in
      000559 24 39            [12] 1173 	add	a,#_buff
      00055B F8               [12] 1174 	mov	r0,a
      00055C 76 45            [12] 1175 	mov	@r0,#0x45
      00055E AE 34            [24] 1176 	mov	r6,_in
      000560 E5 34            [12] 1177 	mov	a,_in
      000562 33               [12] 1178 	rlc	a
      000563 95 E0            [12] 1179 	subb	a,acc
      000565 FF               [12] 1180 	mov	r7,a
      000566 8E 82            [24] 1181 	mov	dpl,r6
      000568 8F 83            [24] 1182 	mov	dph,r7
      00056A A3               [24] 1183 	inc	dptr
      00056B 75 08 07         [24] 1184 	mov	__modsint_PARM_2,#0x07
      00056E 75 09 00         [24] 1185 	mov	(__modsint_PARM_2 + 1),#0x00
      000571 12 0A 33         [24] 1186 	lcall	__modsint
      000574 AE 82            [24] 1187 	mov	r6,dpl
      000576 AF 83            [24] 1188 	mov	r7,dph
      000578 8E 34            [24] 1189 	mov	_in,r6
      00057A 05 37            [12] 1190 	INC _mutex 
      00057C 85 01 AF         [24] 1191 	MOV _EA, 0x1 
                                   1192 ;	testparking.c:159: spot |= 5;
      00057F 43 33 05         [24] 1193 	orl	_spot,#0x05
                                   1194 ;	testparking.c:160: delay(E_DELAY);
      000582 75 82 01         [24] 1195 	mov	dpl,#0x01
      000585 12 06 A5         [24] 1196 	lcall	_delay
                                   1197 ;	testparking.c:161: LOG('E');
      000588 85 00 AF         [24] 1198 	MOV _EA, 0x0 
      00058B                       1199 	 39$:
      00058B 85 38 E0         [24] 1200 	MOV ACC, _empty 
      00058E 20 E7 FA         [24] 1201 	JB ACC.7, 39$ 
      000591 60 F8            [24] 1202 	JZ 39$ 
      000593 15 38            [12] 1203 	DEC _empty 
      000595                       1204 	 40$:
      000595 85 37 E0         [24] 1205 	MOV ACC, _mutex 
      000598 20 E7 FA         [24] 1206 	JB ACC.7, 40$ 
      00059B 60 F8            [24] 1207 	JZ 40$ 
      00059D 15 37            [12] 1208 	DEC _mutex 
      00059F E5 34            [12] 1209 	mov	a,_in
      0005A1 24 39            [12] 1210 	add	a,#_buff
      0005A3 F8               [12] 1211 	mov	r0,a
      0005A4 76 45            [12] 1212 	mov	@r0,#0x45
      0005A6 AE 34            [24] 1213 	mov	r6,_in
      0005A8 E5 34            [12] 1214 	mov	a,_in
      0005AA 33               [12] 1215 	rlc	a
      0005AB 95 E0            [12] 1216 	subb	a,acc
      0005AD FF               [12] 1217 	mov	r7,a
      0005AE 8E 82            [24] 1218 	mov	dpl,r6
      0005B0 8F 83            [24] 1219 	mov	dph,r7
      0005B2 A3               [24] 1220 	inc	dptr
      0005B3 75 08 07         [24] 1221 	mov	__modsint_PARM_2,#0x07
      0005B6 75 09 00         [24] 1222 	mov	(__modsint_PARM_2 + 1),#0x00
      0005B9 12 0A 33         [24] 1223 	lcall	__modsint
      0005BC AE 82            [24] 1224 	mov	r6,dpl
      0005BE AF 83            [24] 1225 	mov	r7,dph
      0005C0 8E 34            [24] 1226 	mov	_in,r6
      0005C2 05 37            [12] 1227 	INC _mutex 
      0005C4 85 01 AF         [24] 1228 	MOV _EA, 0x1 
                                   1229 ;	testparking.c:162: spot &= (~0x0F);
      0005C7 53 33 F0         [24] 1230 	anl	_spot,#0xF0
                                   1231 ;	testparking.c:163: SemaphoreSignal(slot);
      0005CA 05 36            [12] 1232 	INC _slot 
      0005CC 22               [24] 1233 	ret
      0005CD                       1234 00102$:
                                   1235 ;	testparking.c:166: LOG('e');
      0005CD 85 00 AF         [24] 1236 	MOV _EA, 0x0 
      0005D0                       1237 	 41$:
      0005D0 85 38 E0         [24] 1238 	MOV ACC, _empty 
      0005D3 20 E7 FA         [24] 1239 	JB ACC.7, 41$ 
      0005D6 60 F8            [24] 1240 	JZ 41$ 
      0005D8 15 38            [12] 1241 	DEC _empty 
      0005DA                       1242 	 42$:
      0005DA 85 37 E0         [24] 1243 	MOV ACC, _mutex 
      0005DD 20 E7 FA         [24] 1244 	JB ACC.7, 42$ 
      0005E0 60 F8            [24] 1245 	JZ 42$ 
      0005E2 15 37            [12] 1246 	DEC _mutex 
      0005E4 E5 34            [12] 1247 	mov	a,_in
      0005E6 24 39            [12] 1248 	add	a,#_buff
      0005E8 F8               [12] 1249 	mov	r0,a
      0005E9 76 65            [12] 1250 	mov	@r0,#0x65
      0005EB AE 34            [24] 1251 	mov	r6,_in
      0005ED E5 34            [12] 1252 	mov	a,_in
      0005EF 33               [12] 1253 	rlc	a
      0005F0 95 E0            [12] 1254 	subb	a,acc
      0005F2 FF               [12] 1255 	mov	r7,a
      0005F3 8E 82            [24] 1256 	mov	dpl,r6
      0005F5 8F 83            [24] 1257 	mov	dph,r7
      0005F7 A3               [24] 1258 	inc	dptr
      0005F8 75 08 07         [24] 1259 	mov	__modsint_PARM_2,#0x07
      0005FB 75 09 00         [24] 1260 	mov	(__modsint_PARM_2 + 1),#0x00
      0005FE 12 0A 33         [24] 1261 	lcall	__modsint
      000601 AE 82            [24] 1262 	mov	r6,dpl
      000603 AF 83            [24] 1263 	mov	r7,dph
      000605 8E 34            [24] 1264 	mov	_in,r6
      000607 05 37            [12] 1265 	INC _mutex 
      000609 85 01 AF         [24] 1266 	MOV _EA, 0x1 
                                   1267 ;	testparking.c:167: spot |= (5 << 4);
      00060C 43 33 50         [24] 1268 	orl	_spot,#0x50
                                   1269 ;	testparking.c:168: delay(E_DELAY);
      00060F 75 82 01         [24] 1270 	mov	dpl,#0x01
      000612 12 06 A5         [24] 1271 	lcall	_delay
                                   1272 ;	testparking.c:169: LOG('e');
      000615 85 00 AF         [24] 1273 	MOV _EA, 0x0 
      000618                       1274 	 43$:
      000618 85 38 E0         [24] 1275 	MOV ACC, _empty 
      00061B 20 E7 FA         [24] 1276 	JB ACC.7, 43$ 
      00061E 60 F8            [24] 1277 	JZ 43$ 
      000620 15 38            [12] 1278 	DEC _empty 
      000622                       1279 	 44$:
      000622 85 37 E0         [24] 1280 	MOV ACC, _mutex 
      000625 20 E7 FA         [24] 1281 	JB ACC.7, 44$ 
      000628 60 F8            [24] 1282 	JZ 44$ 
      00062A 15 37            [12] 1283 	DEC _mutex 
      00062C E5 34            [12] 1284 	mov	a,_in
      00062E 24 39            [12] 1285 	add	a,#_buff
      000630 F8               [12] 1286 	mov	r0,a
      000631 76 65            [12] 1287 	mov	@r0,#0x65
      000633 AE 34            [24] 1288 	mov	r6,_in
      000635 E5 34            [12] 1289 	mov	a,_in
      000637 33               [12] 1290 	rlc	a
      000638 95 E0            [12] 1291 	subb	a,acc
      00063A FF               [12] 1292 	mov	r7,a
      00063B 8E 82            [24] 1293 	mov	dpl,r6
      00063D 8F 83            [24] 1294 	mov	dph,r7
      00063F A3               [24] 1295 	inc	dptr
      000640 75 08 07         [24] 1296 	mov	__modsint_PARM_2,#0x07
      000643 75 09 00         [24] 1297 	mov	(__modsint_PARM_2 + 1),#0x00
      000646 12 0A 33         [24] 1298 	lcall	__modsint
      000649 AE 82            [24] 1299 	mov	r6,dpl
      00064B AF 83            [24] 1300 	mov	r7,dph
      00064D 8E 34            [24] 1301 	mov	_in,r6
      00064F 05 37            [12] 1302 	INC _mutex 
      000651 85 01 AF         [24] 1303 	MOV _EA, 0x1 
                                   1304 ;	testparking.c:170: spot &= (~0xF0);
      000654 53 33 0F         [24] 1305 	anl	_spot,#0x0F
                                   1306 ;	testparking.c:171: SemaphoreSignal(slot);
      000657 05 36            [12] 1307 	INC _slot 
      000659 22               [24] 1308 	ret
                                   1309 	.area CSEG    (CODE)
                                   1310 	.area CONST   (CODE)
                                   1311 	.area XINIT   (CODE)
                                   1312 	.area CABS    (ABS,CODE)
