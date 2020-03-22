                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Dec 11 16:00:20 2019
                                      5 ;--------------------------------------------------------
                                      6 	.module test3threads
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
                                    115 	.globl _idx2
                                    116 	.globl _imm2
                                    117 	.globl _buff
                                    118 	.globl _empty
                                    119 	.globl _full
                                    120 	.globl _mutex
                                    121 	.globl _imm
                                    122 	.globl _i
                                    123 	.globl _idx
                                    124 	.globl _out
                                    125 	.globl _in
                                    126 	.globl _Producer1
                                    127 	.globl _Producer2
                                    128 	.globl _Consumer
                                    129 ;--------------------------------------------------------
                                    130 ; special function registers
                                    131 ;--------------------------------------------------------
                                    132 	.area RSEG    (ABS,DATA)
      000000                        133 	.org 0x0000
                           000080   134 _P0	=	0x0080
                           000081   135 _SP	=	0x0081
                           000082   136 _DPL	=	0x0082
                           000083   137 _DPH	=	0x0083
                           000087   138 _PCON	=	0x0087
                           000088   139 _TCON	=	0x0088
                           000089   140 _TMOD	=	0x0089
                           00008A   141 _TL0	=	0x008a
                           00008B   142 _TL1	=	0x008b
                           00008C   143 _TH0	=	0x008c
                           00008D   144 _TH1	=	0x008d
                           000090   145 _P1	=	0x0090
                           000098   146 _SCON	=	0x0098
                           000099   147 _SBUF	=	0x0099
                           0000A0   148 _P2	=	0x00a0
                           0000A8   149 _IE	=	0x00a8
                           0000B0   150 _P3	=	0x00b0
                           0000B8   151 _IP	=	0x00b8
                           0000D0   152 _PSW	=	0x00d0
                           0000E0   153 _ACC	=	0x00e0
                           0000F0   154 _B	=	0x00f0
                                    155 ;--------------------------------------------------------
                                    156 ; special function bits
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0_0	=	0x0080
                           000081   161 _P0_1	=	0x0081
                           000082   162 _P0_2	=	0x0082
                           000083   163 _P0_3	=	0x0083
                           000084   164 _P0_4	=	0x0084
                           000085   165 _P0_5	=	0x0085
                           000086   166 _P0_6	=	0x0086
                           000087   167 _P0_7	=	0x0087
                           000088   168 _IT0	=	0x0088
                           000089   169 _IE0	=	0x0089
                           00008A   170 _IT1	=	0x008a
                           00008B   171 _IE1	=	0x008b
                           00008C   172 _TR0	=	0x008c
                           00008D   173 _TF0	=	0x008d
                           00008E   174 _TR1	=	0x008e
                           00008F   175 _TF1	=	0x008f
                           000090   176 _P1_0	=	0x0090
                           000091   177 _P1_1	=	0x0091
                           000092   178 _P1_2	=	0x0092
                           000093   179 _P1_3	=	0x0093
                           000094   180 _P1_4	=	0x0094
                           000095   181 _P1_5	=	0x0095
                           000096   182 _P1_6	=	0x0096
                           000097   183 _P1_7	=	0x0097
                           000098   184 _RI	=	0x0098
                           000099   185 _TI	=	0x0099
                           00009A   186 _RB8	=	0x009a
                           00009B   187 _TB8	=	0x009b
                           00009C   188 _REN	=	0x009c
                           00009D   189 _SM2	=	0x009d
                           00009E   190 _SM1	=	0x009e
                           00009F   191 _SM0	=	0x009f
                           0000A0   192 _P2_0	=	0x00a0
                           0000A1   193 _P2_1	=	0x00a1
                           0000A2   194 _P2_2	=	0x00a2
                           0000A3   195 _P2_3	=	0x00a3
                           0000A4   196 _P2_4	=	0x00a4
                           0000A5   197 _P2_5	=	0x00a5
                           0000A6   198 _P2_6	=	0x00a6
                           0000A7   199 _P2_7	=	0x00a7
                           0000A8   200 _EX0	=	0x00a8
                           0000A9   201 _ET0	=	0x00a9
                           0000AA   202 _EX1	=	0x00aa
                           0000AB   203 _ET1	=	0x00ab
                           0000AC   204 _ES	=	0x00ac
                           0000AF   205 _EA	=	0x00af
                           0000B0   206 _P3_0	=	0x00b0
                           0000B1   207 _P3_1	=	0x00b1
                           0000B2   208 _P3_2	=	0x00b2
                           0000B3   209 _P3_3	=	0x00b3
                           0000B4   210 _P3_4	=	0x00b4
                           0000B5   211 _P3_5	=	0x00b5
                           0000B6   212 _P3_6	=	0x00b6
                           0000B7   213 _P3_7	=	0x00b7
                           0000B0   214 _RXD	=	0x00b0
                           0000B1   215 _TXD	=	0x00b1
                           0000B2   216 _INT0	=	0x00b2
                           0000B3   217 _INT1	=	0x00b3
                           0000B4   218 _T0	=	0x00b4
                           0000B5   219 _T1	=	0x00b5
                           0000B6   220 _WR	=	0x00b6
                           0000B7   221 _RD	=	0x00b7
                           0000B8   222 _PX0	=	0x00b8
                           0000B9   223 _PT0	=	0x00b9
                           0000BA   224 _PX1	=	0x00ba
                           0000BB   225 _PT1	=	0x00bb
                           0000BC   226 _PS	=	0x00bc
                           0000D0   227 _P	=	0x00d0
                           0000D1   228 _F1	=	0x00d1
                           0000D2   229 _OV	=	0x00d2
                           0000D3   230 _RS0	=	0x00d3
                           0000D4   231 _RS1	=	0x00d4
                           0000D5   232 _F0	=	0x00d5
                           0000D6   233 _AC	=	0x00d6
                           0000D7   234 _CY	=	0x00d7
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable register banks
                                    237 ;--------------------------------------------------------
                                    238 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        239 	.ds 8
                                    240 ;--------------------------------------------------------
                                    241 ; internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area DSEG    (DATA)
                           000030   244 _in	=	0x0030
                           000031   245 _out	=	0x0031
                           000032   246 _idx	=	0x0032
                           000033   247 _i	=	0x0033
                           000034   248 _imm	=	0x0034
                           000035   249 _mutex	=	0x0035
                           000036   250 _full	=	0x0036
                           000037   251 _empty	=	0x0037
                           000038   252 _buff	=	0x0038
                           00003E   253 _imm2	=	0x003e
                           00003F   254 _idx2	=	0x003f
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable items in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 ;--------------------------------------------------------
                                    259 ; Stack segment in internal ram 
                                    260 ;--------------------------------------------------------
                                    261 	.area	SSEG
      00000A                        262 __start__stack:
      00000A                        263 	.ds	1
                                    264 
                                    265 ;--------------------------------------------------------
                                    266 ; indirectly addressable internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area ISEG    (DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area IABS    (ABS,DATA)
                                    273 	.area IABS    (ABS,DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; bit data
                                    276 ;--------------------------------------------------------
                                    277 	.area BSEG    (BIT)
                                    278 ;--------------------------------------------------------
                                    279 ; paged external ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area PSEG    (PAG,XDATA)
                                    282 ;--------------------------------------------------------
                                    283 ; external ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area XSEG    (XDATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area XABS    (ABS,XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; external initialized ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XISEG   (XDATA)
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT0 (CODE)
                                    296 	.area GSINIT1 (CODE)
                                    297 	.area GSINIT2 (CODE)
                                    298 	.area GSINIT3 (CODE)
                                    299 	.area GSINIT4 (CODE)
                                    300 	.area GSINIT5 (CODE)
                                    301 	.area GSINIT  (CODE)
                                    302 	.area GSFINAL (CODE)
                                    303 	.area CSEG    (CODE)
                                    304 ;--------------------------------------------------------
                                    305 ; interrupt vector 
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
      000000                        308 __interrupt_vect:
      000000 02 00 5E         [24]  309 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  310 	reti
      000004                        311 	.ds	7
      00000B 02 00 14         [24]  312 	ljmp	_timer0_ISR
                                    313 ;--------------------------------------------------------
                                    314 ; global & static initialisations
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.globl __sdcc_gsinit_startup
                                    321 	.globl __sdcc_program_startup
                                    322 	.globl __start__stack
                                    323 	.globl __mcs51_genXINIT
                                    324 	.globl __mcs51_genXRAMCLEAR
                                    325 	.globl __mcs51_genRAMCLEAR
                                    326 	.area GSFINAL (CODE)
      000011 02 00 0E         [24]  327 	ljmp	__sdcc_program_startup
                                    328 ;--------------------------------------------------------
                                    329 ; Home
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area HOME    (CODE)
      00000E                        333 __sdcc_program_startup:
      00000E 02 00 18         [24]  334 	ljmp	_main
                                    335 ;	return from main will return to caller
                                    336 ;--------------------------------------------------------
                                    337 ; code
                                    338 ;--------------------------------------------------------
                                    339 	.area CSEG    (CODE)
                                    340 ;------------------------------------------------------------
                                    341 ;Allocation info for local variables in function 'timer0_ISR'
                                    342 ;------------------------------------------------------------
                                    343 ;	test3threads.c:24: void timer0_ISR(void) __interrupt(1)
                                    344 ;	-----------------------------------------
                                    345 ;	 function timer0_ISR
                                    346 ;	-----------------------------------------
      000014                        347 _timer0_ISR:
                           000007   348 	ar7 = 0x07
                           000006   349 	ar6 = 0x06
                           000005   350 	ar5 = 0x05
                           000004   351 	ar4 = 0x04
                           000003   352 	ar3 = 0x03
                           000002   353 	ar2 = 0x02
                           000001   354 	ar1 = 0x01
                           000000   355 	ar0 = 0x00
                                    356 ;	test3threads.c:28: __endasm;
      000014 02 03 17         [24]  357 	ljmp _myTimer0Handler
      000017 32               [24]  358 	reti
                                    359 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    360 ;	eliminated unneeded push/pop psw
                                    361 ;	eliminated unneeded push/pop dpl
                                    362 ;	eliminated unneeded push/pop dph
                                    363 ;	eliminated unneeded push/pop b
                                    364 ;	eliminated unneeded push/pop acc
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'main'
                                    367 ;------------------------------------------------------------
                                    368 ;	test3threads.c:31: void main(void)
                                    369 ;	-----------------------------------------
                                    370 ;	 function main
                                    371 ;	-----------------------------------------
      000018                        372 _main:
                                    373 ;	test3threads.c:35: __endasm;
      000018 75 AF 00         [24]  374 	MOV _EA, #0
                                    375 ;	test3threads.c:36: TMOD |= 0x20; // preserve modification in bootstrap
      00001B 43 89 20         [24]  376 	orl	_TMOD,#0x20
                                    377 ;	test3threads.c:37: TH1 = -6; // baud rate
      00001E 75 8D FA         [24]  378 	mov	_TH1,#0xFA
                                    379 ;	test3threads.c:38: SCON = 0x50; // 8-bit 1 stop REN
      000021 75 98 50         [24]  380 	mov	_SCON,#0x50
                                    381 ;	test3threads.c:39: TR1 = 1; // start timer 1
      000024 D2 8E            [12]  382 	setb	_TR1
                                    383 ;	test3threads.c:42: for(i = 0; i < BUFF_SIZE; i++)
      000026 75 33 00         [24]  384 	mov	_i,#0x00
      000029                        385 00103$:
      000029 C3               [12]  386 	clr	c
      00002A E5 33            [12]  387 	mov	a,_i
      00002C 64 80            [12]  388 	xrl	a,#0x80
      00002E 94 83            [12]  389 	subb	a,#0x83
      000030 50 0B            [24]  390 	jnc	00101$
                                    391 ;	test3threads.c:43: buff[i] = 0;
      000032 E5 33            [12]  392 	mov	a,_i
      000034 24 38            [12]  393 	add	a,#_buff
      000036 F8               [12]  394 	mov	r0,a
      000037 76 00            [12]  395 	mov	@r0,#0x00
                                    396 ;	test3threads.c:42: for(i = 0; i < BUFF_SIZE; i++)
      000039 05 33            [12]  397 	inc	_i
      00003B 80 EC            [24]  398 	sjmp	00103$
      00003D                        399 00101$:
                                    400 ;	test3threads.c:44: in = out = 0;
      00003D 75 31 00         [24]  401 	mov	_out,#0x00
      000040 75 30 00         [24]  402 	mov	_in,#0x00
                                    403 ;	test3threads.c:47: SemaphoreCreate(mutex, 1);
      000043 75 35 01         [24]  404 	mov	_mutex,#0x01
                                    405 ;	test3threads.c:48: SemaphoreCreate(full, 0);
      000046 75 36 00         [24]  406 	mov	_full,#0x00
                                    407 ;	test3threads.c:49: SemaphoreCreate(empty, BUFF_SIZE);
      000049 75 37 03         [24]  408 	mov	_empty,#0x03
                                    409 ;	test3threads.c:52: ThreadCreate(&Producer2);
      00004C 90 00 DF         [24]  410 	mov	dptr,#_Producer2
      00004F 12 01 E4         [24]  411 	lcall	_ThreadCreate
                                    412 ;	test3threads.c:53: ThreadCreate(&Producer1);
      000052 90 00 65         [24]  413 	mov	dptr,#_Producer1
      000055 12 01 E4         [24]  414 	lcall	_ThreadCreate
                                    415 ;	test3threads.c:56: __endasm;
      000058 75 AF 01         [24]  416 	MOV _EA, #1
                                    417 ;	test3threads.c:57: Consumer();
      00005B 02 01 59         [24]  418 	ljmp	_Consumer
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    421 ;------------------------------------------------------------
                                    422 ;	test3threads.c:61: void _sdcc_gsinit_startup(void)
                                    423 ;	-----------------------------------------
                                    424 ;	 function _sdcc_gsinit_startup
                                    425 ;	-----------------------------------------
      00005E                        426 __sdcc_gsinit_startup:
                                    427 ;	test3threads.c:65: __endasm;
      00005E 02 01 A0         [24]  428 	ljmp _Bootstrap
      000061 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    432 ;------------------------------------------------------------
                                    433 ;	test3threads.c:67: void _mcs51_genRAMCLEAR(void) {}
                                    434 ;	-----------------------------------------
                                    435 ;	 function _mcs51_genRAMCLEAR
                                    436 ;	-----------------------------------------
      000062                        437 __mcs51_genRAMCLEAR:
      000062 22               [24]  438 	ret
                                    439 ;------------------------------------------------------------
                                    440 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    441 ;------------------------------------------------------------
                                    442 ;	test3threads.c:68: void _mcs51_genXINIT(void) {}
                                    443 ;	-----------------------------------------
                                    444 ;	 function _mcs51_genXINIT
                                    445 ;	-----------------------------------------
      000063                        446 __mcs51_genXINIT:
      000063 22               [24]  447 	ret
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    450 ;------------------------------------------------------------
                                    451 ;	test3threads.c:69: void _mcs51_genXRAMCLEAR(void) {}
                                    452 ;	-----------------------------------------
                                    453 ;	 function _mcs51_genXRAMCLEAR
                                    454 ;	-----------------------------------------
      000064                        455 __mcs51_genXRAMCLEAR:
      000064 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'Producer1'
                                    459 ;------------------------------------------------------------
                                    460 ;	test3threads.c:70: void Producer1(void)
                                    461 ;	-----------------------------------------
                                    462 ;	 function Producer1
                                    463 ;	-----------------------------------------
      000065                        464 _Producer1:
                                    465 ;	test3threads.c:72: idx = 0;
      000065 75 32 00         [24]  466 	mov	_idx,#0x00
                                    467 ;	test3threads.c:73: while(1){
      000068                        468 00102$:
                                    469 ;	test3threads.c:74: imm = 'A';
      000068 75 34 41         [24]  470 	mov	_imm,#0x41
                                    471 ;	test3threads.c:75: imm += idx % CH_NUM;
      00006B 75 F0 1A         [24]  472 	mov	b,#0x1a
      00006E E5 32            [12]  473 	mov	a,_idx
      000070 C2 D5            [12]  474 	clr	F0
      000072 30 E7 04         [24]  475 	jnb	acc.7,00109$
      000075 D2 D5            [12]  476 	setb	F0
      000077 F4               [12]  477 	cpl	a
      000078 04               [12]  478 	inc	a
      000079                        479 00109$:
      000079 84               [48]  480 	div	ab
      00007A E5 F0            [12]  481 	mov	a,b
      00007C 30 D5 02         [24]  482 	jnb	F0,00110$
      00007F F4               [12]  483 	cpl	a
      000080 04               [12]  484 	inc	a
      000081                        485 00110$:
      000081 FF               [12]  486 	mov	r7,a
      000082 25 34            [12]  487 	add	a,_imm
      000084 F5 34            [12]  488 	mov	_imm,a
                                    489 ;	test3threads.c:76: SemaphoreWait(empty);
      000086                        490 	 0$:
      000086 85 37 E0         [24]  491 	MOV ACC, _empty 
      000089 20 E7 FA         [24]  492 	JB ACC.7, 0$ 
      00008C 60 F8            [24]  493 	JZ 0$ 
      00008E 15 37            [12]  494 	DEC _empty 
                                    495 ;	test3threads.c:77: SemaphoreWait(mutex);
      000090                        496 	 1$:
      000090 85 35 E0         [24]  497 	MOV ACC, _mutex 
      000093 20 E7 FA         [24]  498 	JB ACC.7, 1$ 
      000096 60 F8            [24]  499 	JZ 1$ 
      000098 15 35            [12]  500 	DEC _mutex 
                                    501 ;	test3threads.c:78: buff[in] = imm;
      00009A E5 30            [12]  502 	mov	a,_in
      00009C 24 38            [12]  503 	add	a,#_buff
      00009E F8               [12]  504 	mov	r0,a
      00009F A6 34            [24]  505 	mov	@r0,_imm
                                    506 ;	test3threads.c:79: in = (in + 1) % BUFF_SIZE;
      0000A1 AE 30            [24]  507 	mov	r6,_in
      0000A3 E5 30            [12]  508 	mov	a,_in
      0000A5 33               [12]  509 	rlc	a
      0000A6 95 E0            [12]  510 	subb	a,acc
      0000A8 FF               [12]  511 	mov	r7,a
      0000A9 8E 82            [24]  512 	mov	dpl,r6
      0000AB 8F 83            [24]  513 	mov	dph,r7
      0000AD A3               [24]  514 	inc	dptr
      0000AE 75 08 03         [24]  515 	mov	__modsint_PARM_2,#0x03
      0000B1 75 09 00         [24]  516 	mov	(__modsint_PARM_2 + 1),#0x00
      0000B4 12 04 31         [24]  517 	lcall	__modsint
      0000B7 AE 82            [24]  518 	mov	r6,dpl
      0000B9 AF 83            [24]  519 	mov	r7,dph
      0000BB 8E 30            [24]  520 	mov	_in,r6
                                    521 ;	test3threads.c:80: SemaphoreSignal(mutex);
      0000BD 05 35            [12]  522 	INC _mutex 
                                    523 ;	test3threads.c:81: SemaphoreSignal(full);
      0000BF 05 36            [12]  524 	INC _full 
                                    525 ;	test3threads.c:82: idx = (idx + 1) % CH_NUM;
      0000C1 AE 32            [24]  526 	mov	r6,_idx
      0000C3 E5 32            [12]  527 	mov	a,_idx
      0000C5 33               [12]  528 	rlc	a
      0000C6 95 E0            [12]  529 	subb	a,acc
      0000C8 FF               [12]  530 	mov	r7,a
      0000C9 8E 82            [24]  531 	mov	dpl,r6
      0000CB 8F 83            [24]  532 	mov	dph,r7
      0000CD A3               [24]  533 	inc	dptr
      0000CE 75 08 1A         [24]  534 	mov	__modsint_PARM_2,#0x1A
      0000D1 75 09 00         [24]  535 	mov	(__modsint_PARM_2 + 1),#0x00
      0000D4 12 04 31         [24]  536 	lcall	__modsint
      0000D7 AE 82            [24]  537 	mov	r6,dpl
      0000D9 AF 83            [24]  538 	mov	r7,dph
      0000DB 8E 32            [24]  539 	mov	_idx,r6
      0000DD 80 89            [24]  540 	sjmp	00102$
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'Producer2'
                                    543 ;------------------------------------------------------------
                                    544 ;	test3threads.c:85: void Producer2(void)
                                    545 ;	-----------------------------------------
                                    546 ;	 function Producer2
                                    547 ;	-----------------------------------------
      0000DF                        548 _Producer2:
                                    549 ;	test3threads.c:87: idx2 = 0;
      0000DF 75 3F 00         [24]  550 	mov	_idx2,#0x00
                                    551 ;	test3threads.c:88: while(1){
      0000E2                        552 00102$:
                                    553 ;	test3threads.c:89: imm2 = '0';
      0000E2 75 3E 30         [24]  554 	mov	_imm2,#0x30
                                    555 ;	test3threads.c:90: imm2 += idx2 % DIGIT_NUM;
      0000E5 75 F0 0A         [24]  556 	mov	b,#0x0a
      0000E8 E5 3F            [12]  557 	mov	a,_idx2
      0000EA C2 D5            [12]  558 	clr	F0
      0000EC 30 E7 04         [24]  559 	jnb	acc.7,00109$
      0000EF D2 D5            [12]  560 	setb	F0
      0000F1 F4               [12]  561 	cpl	a
      0000F2 04               [12]  562 	inc	a
      0000F3                        563 00109$:
      0000F3 84               [48]  564 	div	ab
      0000F4 E5 F0            [12]  565 	mov	a,b
      0000F6 30 D5 02         [24]  566 	jnb	F0,00110$
      0000F9 F4               [12]  567 	cpl	a
      0000FA 04               [12]  568 	inc	a
      0000FB                        569 00110$:
      0000FB FF               [12]  570 	mov	r7,a
      0000FC 25 3E            [12]  571 	add	a,_imm2
      0000FE F5 3E            [12]  572 	mov	_imm2,a
                                    573 ;	test3threads.c:91: SemaphoreWait(empty);
      000100                        574 	 2$:
      000100 85 37 E0         [24]  575 	MOV ACC, _empty 
      000103 20 E7 FA         [24]  576 	JB ACC.7, 2$ 
      000106 60 F8            [24]  577 	JZ 2$ 
      000108 15 37            [12]  578 	DEC _empty 
                                    579 ;	test3threads.c:92: SemaphoreWait(mutex);
      00010A                        580 	 3$:
      00010A 85 35 E0         [24]  581 	MOV ACC, _mutex 
      00010D 20 E7 FA         [24]  582 	JB ACC.7, 3$ 
      000110 60 F8            [24]  583 	JZ 3$ 
      000112 15 35            [12]  584 	DEC _mutex 
                                    585 ;	test3threads.c:93: buff[in] = imm2;
      000114 E5 30            [12]  586 	mov	a,_in
      000116 24 38            [12]  587 	add	a,#_buff
      000118 F8               [12]  588 	mov	r0,a
      000119 A6 3E            [24]  589 	mov	@r0,_imm2
                                    590 ;	test3threads.c:94: in = (in + 1) % BUFF_SIZE;
      00011B AE 30            [24]  591 	mov	r6,_in
      00011D E5 30            [12]  592 	mov	a,_in
      00011F 33               [12]  593 	rlc	a
      000120 95 E0            [12]  594 	subb	a,acc
      000122 FF               [12]  595 	mov	r7,a
      000123 8E 82            [24]  596 	mov	dpl,r6
      000125 8F 83            [24]  597 	mov	dph,r7
      000127 A3               [24]  598 	inc	dptr
      000128 75 08 03         [24]  599 	mov	__modsint_PARM_2,#0x03
      00012B 75 09 00         [24]  600 	mov	(__modsint_PARM_2 + 1),#0x00
      00012E 12 04 31         [24]  601 	lcall	__modsint
      000131 AE 82            [24]  602 	mov	r6,dpl
      000133 AF 83            [24]  603 	mov	r7,dph
      000135 8E 30            [24]  604 	mov	_in,r6
                                    605 ;	test3threads.c:95: SemaphoreSignal(mutex);
      000137 05 35            [12]  606 	INC _mutex 
                                    607 ;	test3threads.c:96: SemaphoreSignal(full);
      000139 05 36            [12]  608 	INC _full 
                                    609 ;	test3threads.c:97: idx2 = (idx2 + 1) % DIGIT_NUM;
      00013B AE 3F            [24]  610 	mov	r6,_idx2
      00013D E5 3F            [12]  611 	mov	a,_idx2
      00013F 33               [12]  612 	rlc	a
      000140 95 E0            [12]  613 	subb	a,acc
      000142 FF               [12]  614 	mov	r7,a
      000143 8E 82            [24]  615 	mov	dpl,r6
      000145 8F 83            [24]  616 	mov	dph,r7
      000147 A3               [24]  617 	inc	dptr
      000148 75 08 0A         [24]  618 	mov	__modsint_PARM_2,#0x0A
      00014B 75 09 00         [24]  619 	mov	(__modsint_PARM_2 + 1),#0x00
      00014E 12 04 31         [24]  620 	lcall	__modsint
      000151 AE 82            [24]  621 	mov	r6,dpl
      000153 AF 83            [24]  622 	mov	r7,dph
      000155 8E 3F            [24]  623 	mov	_idx2,r6
      000157 80 89            [24]  624 	sjmp	00102$
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'Consumer'
                                    627 ;------------------------------------------------------------
                                    628 ;	test3threads.c:100: void Consumer(void)
                                    629 ;	-----------------------------------------
                                    630 ;	 function Consumer
                                    631 ;	-----------------------------------------
      000159                        632 _Consumer:
                                    633 ;	test3threads.c:102: TI = 1;
      000159 D2 99            [12]  634 	setb	_TI
                                    635 ;	test3threads.c:103: out = 0;
      00015B 75 31 00         [24]  636 	mov	_out,#0x00
                                    637 ;	test3threads.c:104: while(1){
      00015E                        638 00105$:
                                    639 ;	test3threads.c:105: SemaphoreWait(full);
      00015E                        640 	 4$:
      00015E 85 36 E0         [24]  641 	MOV ACC, _full 
      000161 20 E7 FA         [24]  642 	JB ACC.7, 4$ 
      000164 60 F8            [24]  643 	JZ 4$ 
      000166 15 36            [12]  644 	DEC _full 
                                    645 ;	test3threads.c:106: SemaphoreWait(mutex);
      000168                        646 	 5$:
      000168 85 35 E0         [24]  647 	MOV ACC, _mutex 
      00016B 20 E7 FA         [24]  648 	JB ACC.7, 5$ 
      00016E 60 F8            [24]  649 	JZ 5$ 
      000170 15 35            [12]  650 	DEC _mutex 
                                    651 ;	test3threads.c:107: SBUF = buff[out];
      000172 E5 31            [12]  652 	mov	a,_out
      000174 24 38            [12]  653 	add	a,#_buff
      000176 F9               [12]  654 	mov	r1,a
      000177 87 99            [24]  655 	mov	_SBUF,@r1
                                    656 ;	test3threads.c:108: SemaphoreSignal(mutex);
      000179 05 35            [12]  657 	INC _mutex 
                                    658 ;	test3threads.c:109: SemaphoreSignal(empty);
      00017B 05 37            [12]  659 	INC _empty 
                                    660 ;	test3threads.c:110: while(!TI){} // not ready
      00017D                        661 00101$:
      00017D 30 99 FD         [24]  662 	jnb	_TI,00101$
                                    663 ;	test3threads.c:111: out = (out + 1) % BUFF_SIZE;
      000180 AE 31            [24]  664 	mov	r6,_out
      000182 E5 31            [12]  665 	mov	a,_out
      000184 33               [12]  666 	rlc	a
      000185 95 E0            [12]  667 	subb	a,acc
      000187 FF               [12]  668 	mov	r7,a
      000188 8E 82            [24]  669 	mov	dpl,r6
      00018A 8F 83            [24]  670 	mov	dph,r7
      00018C A3               [24]  671 	inc	dptr
      00018D 75 08 03         [24]  672 	mov	__modsint_PARM_2,#0x03
      000190 75 09 00         [24]  673 	mov	(__modsint_PARM_2 + 1),#0x00
      000193 12 04 31         [24]  674 	lcall	__modsint
      000196 AE 82            [24]  675 	mov	r6,dpl
      000198 AF 83            [24]  676 	mov	r7,dph
      00019A 8E 31            [24]  677 	mov	_out,r6
                                    678 ;	test3threads.c:112: TI = 0;
      00019C C2 99            [12]  679 	clr	_TI
      00019E 80 BE            [24]  680 	sjmp	00105$
                                    681 	.area CSEG    (CODE)
                                    682 	.area CONST   (CODE)
                                    683 	.area XINIT   (CODE)
                                    684 	.area CABS    (ABS,CODE)
