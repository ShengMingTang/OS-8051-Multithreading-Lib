                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Dec 11 14:34:40 2019
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
                                    116 	.globl _empty
                                    117 	.globl _full
                                    118 	.globl _mutex
                                    119 	.globl _imm
                                    120 	.globl _i
                                    121 	.globl _idx
                                    122 	.globl _out
                                    123 	.globl _in
                                    124 	.globl _Producer
                                    125 	.globl _Consumer
                                    126 ;--------------------------------------------------------
                                    127 ; special function registers
                                    128 ;--------------------------------------------------------
                                    129 	.area RSEG    (ABS,DATA)
      000000                        130 	.org 0x0000
                           000080   131 _P0	=	0x0080
                           000081   132 _SP	=	0x0081
                           000082   133 _DPL	=	0x0082
                           000083   134 _DPH	=	0x0083
                           000087   135 _PCON	=	0x0087
                           000088   136 _TCON	=	0x0088
                           000089   137 _TMOD	=	0x0089
                           00008A   138 _TL0	=	0x008a
                           00008B   139 _TL1	=	0x008b
                           00008C   140 _TH0	=	0x008c
                           00008D   141 _TH1	=	0x008d
                           000090   142 _P1	=	0x0090
                           000098   143 _SCON	=	0x0098
                           000099   144 _SBUF	=	0x0099
                           0000A0   145 _P2	=	0x00a0
                           0000A8   146 _IE	=	0x00a8
                           0000B0   147 _P3	=	0x00b0
                           0000B8   148 _IP	=	0x00b8
                           0000D0   149 _PSW	=	0x00d0
                           0000E0   150 _ACC	=	0x00e0
                           0000F0   151 _B	=	0x00f0
                                    152 ;--------------------------------------------------------
                                    153 ; special function bits
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0_0	=	0x0080
                           000081   158 _P0_1	=	0x0081
                           000082   159 _P0_2	=	0x0082
                           000083   160 _P0_3	=	0x0083
                           000084   161 _P0_4	=	0x0084
                           000085   162 _P0_5	=	0x0085
                           000086   163 _P0_6	=	0x0086
                           000087   164 _P0_7	=	0x0087
                           000088   165 _IT0	=	0x0088
                           000089   166 _IE0	=	0x0089
                           00008A   167 _IT1	=	0x008a
                           00008B   168 _IE1	=	0x008b
                           00008C   169 _TR0	=	0x008c
                           00008D   170 _TF0	=	0x008d
                           00008E   171 _TR1	=	0x008e
                           00008F   172 _TF1	=	0x008f
                           000090   173 _P1_0	=	0x0090
                           000091   174 _P1_1	=	0x0091
                           000092   175 _P1_2	=	0x0092
                           000093   176 _P1_3	=	0x0093
                           000094   177 _P1_4	=	0x0094
                           000095   178 _P1_5	=	0x0095
                           000096   179 _P1_6	=	0x0096
                           000097   180 _P1_7	=	0x0097
                           000098   181 _RI	=	0x0098
                           000099   182 _TI	=	0x0099
                           00009A   183 _RB8	=	0x009a
                           00009B   184 _TB8	=	0x009b
                           00009C   185 _REN	=	0x009c
                           00009D   186 _SM2	=	0x009d
                           00009E   187 _SM1	=	0x009e
                           00009F   188 _SM0	=	0x009f
                           0000A0   189 _P2_0	=	0x00a0
                           0000A1   190 _P2_1	=	0x00a1
                           0000A2   191 _P2_2	=	0x00a2
                           0000A3   192 _P2_3	=	0x00a3
                           0000A4   193 _P2_4	=	0x00a4
                           0000A5   194 _P2_5	=	0x00a5
                           0000A6   195 _P2_6	=	0x00a6
                           0000A7   196 _P2_7	=	0x00a7
                           0000A8   197 _EX0	=	0x00a8
                           0000A9   198 _ET0	=	0x00a9
                           0000AA   199 _EX1	=	0x00aa
                           0000AB   200 _ET1	=	0x00ab
                           0000AC   201 _ES	=	0x00ac
                           0000AF   202 _EA	=	0x00af
                           0000B0   203 _P3_0	=	0x00b0
                           0000B1   204 _P3_1	=	0x00b1
                           0000B2   205 _P3_2	=	0x00b2
                           0000B3   206 _P3_3	=	0x00b3
                           0000B4   207 _P3_4	=	0x00b4
                           0000B5   208 _P3_5	=	0x00b5
                           0000B6   209 _P3_6	=	0x00b6
                           0000B7   210 _P3_7	=	0x00b7
                           0000B0   211 _RXD	=	0x00b0
                           0000B1   212 _TXD	=	0x00b1
                           0000B2   213 _INT0	=	0x00b2
                           0000B3   214 _INT1	=	0x00b3
                           0000B4   215 _T0	=	0x00b4
                           0000B5   216 _T1	=	0x00b5
                           0000B6   217 _WR	=	0x00b6
                           0000B7   218 _RD	=	0x00b7
                           0000B8   219 _PX0	=	0x00b8
                           0000B9   220 _PT0	=	0x00b9
                           0000BA   221 _PX1	=	0x00ba
                           0000BB   222 _PT1	=	0x00bb
                           0000BC   223 _PS	=	0x00bc
                           0000D0   224 _P	=	0x00d0
                           0000D1   225 _F1	=	0x00d1
                           0000D2   226 _OV	=	0x00d2
                           0000D3   227 _RS0	=	0x00d3
                           0000D4   228 _RS1	=	0x00d4
                           0000D5   229 _F0	=	0x00d5
                           0000D6   230 _AC	=	0x00d6
                           0000D7   231 _CY	=	0x00d7
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable register banks
                                    234 ;--------------------------------------------------------
                                    235 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area DSEG    (DATA)
                           000030   241 _in	=	0x0030
                           000031   242 _out	=	0x0031
                           000032   243 _idx	=	0x0032
                           000033   244 _i	=	0x0033
                           000034   245 _imm	=	0x0034
                           000035   246 _mutex	=	0x0035
                           000036   247 _full	=	0x0036
                           000037   248 _empty	=	0x0037
                           000038   249 _buff	=	0x0038
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
      000000 02 00 52         [24]  304 	ljmp	__sdcc_gsinit_startup
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
                                    338 ;	testpreemptive.c:20: void timer0_ISR(void) __interrupt(1)
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
                                    351 ;	testpreemptive.c:24: __endasm;
      000014 02 02 92         [24]  352 	ljmp _myTimer0Handler
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
                                    363 ;	testpreemptive.c:27: void main(void)
                                    364 ;	-----------------------------------------
                                    365 ;	 function main
                                    366 ;	-----------------------------------------
      000018                        367 _main:
                                    368 ;	testpreemptive.c:29: TMOD |= 0x20; // preserve modification in bootstrap
      000018 43 89 20         [24]  369 	orl	_TMOD,#0x20
                                    370 ;	testpreemptive.c:30: TH1 = -6; // baud rate
      00001B 75 8D FA         [24]  371 	mov	_TH1,#0xFA
                                    372 ;	testpreemptive.c:31: SCON = 0x50; // 8-bit 1 stop REN
      00001E 75 98 50         [24]  373 	mov	_SCON,#0x50
                                    374 ;	testpreemptive.c:32: TR1 = 1; // start timer 1
      000021 D2 8E            [12]  375 	setb	_TR1
                                    376 ;	testpreemptive.c:35: for(i = 0; i < BUFF_SIZE; i++)
      000023 75 33 00         [24]  377 	mov	_i,#0x00
      000026                        378 00103$:
      000026 C3               [12]  379 	clr	c
      000027 E5 33            [12]  380 	mov	a,_i
      000029 64 80            [12]  381 	xrl	a,#0x80
      00002B 94 83            [12]  382 	subb	a,#0x83
      00002D 50 0B            [24]  383 	jnc	00101$
                                    384 ;	testpreemptive.c:36: buff[i] = 0;
      00002F E5 33            [12]  385 	mov	a,_i
      000031 24 38            [12]  386 	add	a,#_buff
      000033 F8               [12]  387 	mov	r0,a
      000034 76 00            [12]  388 	mov	@r0,#0x00
                                    389 ;	testpreemptive.c:35: for(i = 0; i < BUFF_SIZE; i++)
      000036 05 33            [12]  390 	inc	_i
      000038 80 EC            [24]  391 	sjmp	00103$
      00003A                        392 00101$:
                                    393 ;	testpreemptive.c:37: in = out = 0;
      00003A 75 31 00         [24]  394 	mov	_out,#0x00
      00003D 75 30 00         [24]  395 	mov	_in,#0x00
                                    396 ;	testpreemptive.c:40: SemaphoreCreate(mutex, 1);
      000040 75 35 01         [24]  397 	mov	_mutex,#0x01
                                    398 ;	testpreemptive.c:41: SemaphoreCreate(full, 0);
      000043 75 36 00         [24]  399 	mov	_full,#0x00
                                    400 ;	testpreemptive.c:42: SemaphoreCreate(empty, 3);
      000046 75 37 03         [24]  401 	mov	_empty,#0x03
                                    402 ;	testpreemptive.c:45: ThreadCreate(&Producer);
      000049 90 00 59         [24]  403 	mov	dptr,#_Producer
      00004C 12 01 5F         [24]  404 	lcall	_ThreadCreate
                                    405 ;	testpreemptive.c:46: Consumer();
      00004F 02 00 D4         [24]  406 	ljmp	_Consumer
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    409 ;------------------------------------------------------------
                                    410 ;	testpreemptive.c:50: void _sdcc_gsinit_startup(void)
                                    411 ;	-----------------------------------------
                                    412 ;	 function _sdcc_gsinit_startup
                                    413 ;	-----------------------------------------
      000052                        414 __sdcc_gsinit_startup:
                                    415 ;	testpreemptive.c:54: __endasm;
      000052 02 01 1B         [24]  416 	ljmp _Bootstrap
      000055 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    420 ;------------------------------------------------------------
                                    421 ;	testpreemptive.c:56: void _mcs51_genRAMCLEAR(void) {}
                                    422 ;	-----------------------------------------
                                    423 ;	 function _mcs51_genRAMCLEAR
                                    424 ;	-----------------------------------------
      000056                        425 __mcs51_genRAMCLEAR:
      000056 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    429 ;------------------------------------------------------------
                                    430 ;	testpreemptive.c:57: void _mcs51_genXINIT(void) {}
                                    431 ;	-----------------------------------------
                                    432 ;	 function _mcs51_genXINIT
                                    433 ;	-----------------------------------------
      000057                        434 __mcs51_genXINIT:
      000057 22               [24]  435 	ret
                                    436 ;------------------------------------------------------------
                                    437 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    438 ;------------------------------------------------------------
                                    439 ;	testpreemptive.c:58: void _mcs51_genXRAMCLEAR(void) {}
                                    440 ;	-----------------------------------------
                                    441 ;	 function _mcs51_genXRAMCLEAR
                                    442 ;	-----------------------------------------
      000058                        443 __mcs51_genXRAMCLEAR:
      000058 22               [24]  444 	ret
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'Producer'
                                    447 ;------------------------------------------------------------
                                    448 ;	testpreemptive.c:59: void Producer(void)
                                    449 ;	-----------------------------------------
                                    450 ;	 function Producer
                                    451 ;	-----------------------------------------
      000059                        452 _Producer:
                                    453 ;	testpreemptive.c:61: idx = 0;
      000059 75 32 00         [24]  454 	mov	_idx,#0x00
                                    455 ;	testpreemptive.c:62: in = 0;
      00005C 75 30 00         [24]  456 	mov	_in,#0x00
                                    457 ;	testpreemptive.c:63: while(1){
      00005F                        458 00102$:
                                    459 ;	testpreemptive.c:64: imm = 'A';
      00005F 75 34 41         [24]  460 	mov	_imm,#0x41
                                    461 ;	testpreemptive.c:65: imm += idx % CH_NUM;
      000062 75 F0 1A         [24]  462 	mov	b,#0x1a
      000065 E5 32            [12]  463 	mov	a,_idx
      000067 C2 D5            [12]  464 	clr	F0
      000069 30 E7 04         [24]  465 	jnb	acc.7,00109$
      00006C D2 D5            [12]  466 	setb	F0
      00006E F4               [12]  467 	cpl	a
      00006F 04               [12]  468 	inc	a
      000070                        469 00109$:
      000070 84               [48]  470 	div	ab
      000071 E5 F0            [12]  471 	mov	a,b
      000073 30 D5 02         [24]  472 	jnb	F0,00110$
      000076 F4               [12]  473 	cpl	a
      000077 04               [12]  474 	inc	a
      000078                        475 00110$:
      000078 FF               [12]  476 	mov	r7,a
      000079 25 34            [12]  477 	add	a,_imm
      00007B F5 34            [12]  478 	mov	_imm,a
                                    479 ;	testpreemptive.c:66: SemaphoreWait(empty);
      00007D                        480 	 0$:
      00007D 85 37 E0         [24]  481 	MOV ACC, _empty 
      000080 20 E7 FA         [24]  482 	JB ACC.7, 0$ 
      000083 60 F8            [24]  483 	JZ 0$ 
      000085 15 37            [12]  484 	DEC _empty 
                                    485 ;	testpreemptive.c:67: SemaphoreWait(mutex);
      000087                        486 	 1$:
      000087 85 35 E0         [24]  487 	MOV ACC, _mutex 
      00008A 20 E7 FA         [24]  488 	JB ACC.7, 1$ 
      00008D 60 F8            [24]  489 	JZ 1$ 
      00008F 15 35            [12]  490 	DEC _mutex 
                                    491 ;	testpreemptive.c:68: buff[in] = imm;
      000091 E5 30            [12]  492 	mov	a,_in
      000093 24 38            [12]  493 	add	a,#_buff
      000095 F8               [12]  494 	mov	r0,a
      000096 A6 34            [24]  495 	mov	@r0,_imm
                                    496 ;	testpreemptive.c:69: SemaphoreSignal(mutex);
      000098 05 35            [12]  497 	INC _mutex 
                                    498 ;	testpreemptive.c:70: SemaphoreSignal(full);
      00009A 05 36            [12]  499 	INC _full 
                                    500 ;	testpreemptive.c:71: idx = (idx + 1) % CH_NUM;
      00009C AE 32            [24]  501 	mov	r6,_idx
      00009E E5 32            [12]  502 	mov	a,_idx
      0000A0 33               [12]  503 	rlc	a
      0000A1 95 E0            [12]  504 	subb	a,acc
      0000A3 FF               [12]  505 	mov	r7,a
      0000A4 8E 82            [24]  506 	mov	dpl,r6
      0000A6 8F 83            [24]  507 	mov	dph,r7
      0000A8 A3               [24]  508 	inc	dptr
      0000A9 75 08 1A         [24]  509 	mov	__modsint_PARM_2,#0x1A
      0000AC 75 09 00         [24]  510 	mov	(__modsint_PARM_2 + 1),#0x00
      0000AF 12 03 80         [24]  511 	lcall	__modsint
      0000B2 AE 82            [24]  512 	mov	r6,dpl
      0000B4 8E 32            [24]  513 	mov	_idx,r6
                                    514 ;	testpreemptive.c:72: in = (in + 1) % BUFF_SIZE;
      0000B6 AE 30            [24]  515 	mov	r6,_in
      0000B8 E5 30            [12]  516 	mov	a,_in
      0000BA 33               [12]  517 	rlc	a
      0000BB 95 E0            [12]  518 	subb	a,acc
      0000BD FF               [12]  519 	mov	r7,a
      0000BE 8E 82            [24]  520 	mov	dpl,r6
      0000C0 8F 83            [24]  521 	mov	dph,r7
      0000C2 A3               [24]  522 	inc	dptr
      0000C3 75 08 03         [24]  523 	mov	__modsint_PARM_2,#0x03
      0000C6 75 09 00         [24]  524 	mov	(__modsint_PARM_2 + 1),#0x00
      0000C9 12 03 80         [24]  525 	lcall	__modsint
      0000CC AE 82            [24]  526 	mov	r6,dpl
      0000CE AF 83            [24]  527 	mov	r7,dph
      0000D0 8E 30            [24]  528 	mov	_in,r6
      0000D2 80 8B            [24]  529 	sjmp	00102$
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'Consumer'
                                    532 ;------------------------------------------------------------
                                    533 ;	testpreemptive.c:75: void Consumer(void)
                                    534 ;	-----------------------------------------
                                    535 ;	 function Consumer
                                    536 ;	-----------------------------------------
      0000D4                        537 _Consumer:
                                    538 ;	testpreemptive.c:77: TI = 1;
      0000D4 D2 99            [12]  539 	setb	_TI
                                    540 ;	testpreemptive.c:78: out = 0;
      0000D6 75 31 00         [24]  541 	mov	_out,#0x00
                                    542 ;	testpreemptive.c:79: while(1){
      0000D9                        543 00105$:
                                    544 ;	testpreemptive.c:80: SemaphoreWait(full);
      0000D9                        545 	 2$:
      0000D9 85 36 E0         [24]  546 	MOV ACC, _full 
      0000DC 20 E7 FA         [24]  547 	JB ACC.7, 2$ 
      0000DF 60 F8            [24]  548 	JZ 2$ 
      0000E1 15 36            [12]  549 	DEC _full 
                                    550 ;	testpreemptive.c:81: SemaphoreWait(mutex);
      0000E3                        551 	 3$:
      0000E3 85 35 E0         [24]  552 	MOV ACC, _mutex 
      0000E6 20 E7 FA         [24]  553 	JB ACC.7, 3$ 
      0000E9 60 F8            [24]  554 	JZ 3$ 
      0000EB 15 35            [12]  555 	DEC _mutex 
                                    556 ;	testpreemptive.c:82: SBUF = buff[out];
      0000ED E5 31            [12]  557 	mov	a,_out
      0000EF 24 38            [12]  558 	add	a,#_buff
      0000F1 F9               [12]  559 	mov	r1,a
      0000F2 87 99            [24]  560 	mov	_SBUF,@r1
                                    561 ;	testpreemptive.c:83: SemaphoreSignal(mutex);
      0000F4 05 35            [12]  562 	INC _mutex 
                                    563 ;	testpreemptive.c:84: SemaphoreSignal(empty);
      0000F6 05 37            [12]  564 	INC _empty 
                                    565 ;	testpreemptive.c:85: while(!TI){} // not ready
      0000F8                        566 00101$:
      0000F8 30 99 FD         [24]  567 	jnb	_TI,00101$
                                    568 ;	testpreemptive.c:86: out = (out + 1) % BUFF_SIZE;
      0000FB AE 31            [24]  569 	mov	r6,_out
      0000FD E5 31            [12]  570 	mov	a,_out
      0000FF 33               [12]  571 	rlc	a
      000100 95 E0            [12]  572 	subb	a,acc
      000102 FF               [12]  573 	mov	r7,a
      000103 8E 82            [24]  574 	mov	dpl,r6
      000105 8F 83            [24]  575 	mov	dph,r7
      000107 A3               [24]  576 	inc	dptr
      000108 75 08 03         [24]  577 	mov	__modsint_PARM_2,#0x03
      00010B 75 09 00         [24]  578 	mov	(__modsint_PARM_2 + 1),#0x00
      00010E 12 03 80         [24]  579 	lcall	__modsint
      000111 AE 82            [24]  580 	mov	r6,dpl
      000113 AF 83            [24]  581 	mov	r7,dph
      000115 8E 31            [24]  582 	mov	_out,r6
                                    583 ;	testpreemptive.c:87: TI = 0;
      000117 C2 99            [12]  584 	clr	_TI
      000119 80 BE            [24]  585 	sjmp	00105$
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
                                    588 	.area XINIT   (CODE)
                                    589 	.area CABS    (ABS,CODE)
