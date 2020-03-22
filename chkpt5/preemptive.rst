                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Jan 15 13:09:18 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module preemptive
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _Bootstrap
                                     13 	.globl _main
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _i
                                    111 	.globl _ThreadManager
                                    112 	.globl _delay
                                    113 	.globl _myTimer0Handler
                                    114 	.globl _ThreadCreate
                                    115 	.globl _ThreadYield
                                    116 	.globl _ThreadExit
                                    117 	.globl _now
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
                           000020   233 _SP_saved	=	0x0020
                           000024   234 _thread_id	=	0x0024
                           000025   235 _thread_bm	=	0x0025
                           000026   236 _thread_ct	=	0x0026
                           000027   237 _i	=	0x0027
                           000028   238 _tmp	=	0x0028
                           00002A   239 _last_thread	=	0x002a
                           00002B   240 _time_elapsed	=	0x002b
                           00002C   241 _time_quatum	=	0x002c
                           00002D   242 _time_delay_record	=	0x002d
                           00002F   243 _time_sem	=	0x002f
                           000030   244 _time_remain	=	0x0030
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable items in internal ram 
                                    247 ;--------------------------------------------------------
                                    248 	.area	OSEG    (OVR,DATA)
                                    249 	.area	OSEG    (OVR,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; indirectly addressable internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area ISEG    (DATA)
                                    254 ;--------------------------------------------------------
                                    255 ; absolute internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area IABS    (ABS,DATA)
                                    258 	.area IABS    (ABS,DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; bit data
                                    261 ;--------------------------------------------------------
                                    262 	.area BSEG    (BIT)
                                    263 ;--------------------------------------------------------
                                    264 ; paged external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area PSEG    (PAG,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XSEG    (XDATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute external ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area XABS    (ABS,XDATA)
                                    275 ;--------------------------------------------------------
                                    276 ; external initialized ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area XISEG   (XDATA)
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT0 (CODE)
                                    281 	.area GSINIT1 (CODE)
                                    282 	.area GSINIT2 (CODE)
                                    283 	.area GSINIT3 (CODE)
                                    284 	.area GSINIT4 (CODE)
                                    285 	.area GSINIT5 (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area CSEG    (CODE)
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.area GSFINAL (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 ;--------------------------------------------------------
                                    297 ; Home
                                    298 ;--------------------------------------------------------
                                    299 	.area HOME    (CODE)
                                    300 	.area HOME    (CODE)
                                    301 ;--------------------------------------------------------
                                    302 ; code
                                    303 ;--------------------------------------------------------
                                    304 	.area CSEG    (CODE)
                                    305 ;------------------------------------------------------------
                                    306 ;Allocation info for local variables in function 'Bootstrap'
                                    307 ;------------------------------------------------------------
                                    308 ;	preemptive.c:52: void Bootstrap(void)
                                    309 ;	-----------------------------------------
                                    310 ;	 function Bootstrap
                                    311 ;	-----------------------------------------
      00065A                        312 _Bootstrap:
                           000007   313 	ar7 = 0x07
                           000006   314 	ar6 = 0x06
                           000005   315 	ar5 = 0x05
                           000004   316 	ar4 = 0x04
                           000003   317 	ar3 = 0x03
                           000002   318 	ar2 = 0x02
                           000001   319 	ar1 = 0x01
                           000000   320 	ar0 = 0x00
                                    321 ;	preemptive.c:56: __endasm;
      00065A 75 AF 00         [24]  322 	MOV _EA, #0
                                    323 ;	preemptive.c:58: thread_bm = 0;
      00065D 75 25 00         [24]  324 	mov	_thread_bm,#0x00
                                    325 ;	preemptive.c:59: SemaphoreCreate(thread_ct, MAXTHREADS);
      000660 75 26 04         [24]  326 	mov	_thread_ct,#0x04
                                    327 ;	preemptive.c:60: SemaphoreCreate(time_sem, 1);
      000663 75 2F 01         [24]  328 	mov	_time_sem,#0x01
                                    329 ;	preemptive.c:62: TMOD = 0;
      000666 75 89 00         [24]  330 	mov	_TMOD,#0x00
                                    331 ;	preemptive.c:63: IE = 0x82;
      000669 75 A8 82         [24]  332 	mov	_IE,#0x82
                                    333 ;	preemptive.c:64: TR0 = 1;
      00066C D2 8C            [12]  334 	setb	_TR0
                                    335 ;	preemptive.c:65: PSW = 0;
      00066E 75 D0 00         [24]  336 	mov	_PSW,#0x00
                                    337 ;	preemptive.c:69: ThreadCreate(ThreadManager);
      000671 90 06 A0         [24]  338 	mov	dptr,#_ThreadManager
      000674 12 08 7B         [24]  339 	lcall	_ThreadCreate
                                    340 ;	preemptive.c:70: thread_id = ThreadCreate(&main);
      000677 90 00 18         [24]  341 	mov	dptr,#_main
      00067A 12 08 7B         [24]  342 	lcall	_ThreadCreate
      00067D 85 82 24         [24]  343 	mov	_thread_id,dpl
                                    344 ;	preemptive.c:71: last_thread = thread_id;
      000680 85 24 2A         [24]  345 	mov	_last_thread,_thread_id
                                    346 ;	preemptive.c:74: time_quatum = -1;
      000683 75 2C FF         [24]  347 	mov	_time_quatum,#0xFF
                                    348 ;	preemptive.c:75: time_elapsed = 0;
                                    349 ;	preemptive.c:76: time_delay_record = 0;
                                    350 ;	preemptive.c:78: RESTORESTATE;
      000686 E4               [12]  351 	clr	a
      000687 F5 2B            [12]  352 	mov	_time_elapsed,a
      000689 F5 2D            [12]  353 	mov	_time_delay_record,a
      00068B E5 24            [12]  354 	mov	a,_thread_id
      00068D 24 20            [12]  355 	add	a,#_SP_saved
      00068F F9               [12]  356 	mov	r1,a
      000690 87 81            [24]  357 	mov	_SP,@r1
      000692 D0 D0            [24]  358 	POP PSW 
      000694 D0 83            [24]  359 	POP DPH 
      000696 D0 82            [24]  360 	POP DPL 
      000698 D0 F0            [24]  361 	POP B 
      00069A D0 E0            [24]  362 	POP ACC 
                                    363 ;	preemptive.c:81: __endasm;
      00069C 75 AF 01         [24]  364 	MOV _EA, #1
      00069F 22               [24]  365 	ret
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'ThreadManager'
                                    368 ;------------------------------------------------------------
                                    369 ;	preemptive.c:83: void ThreadManager(void)
                                    370 ;	-----------------------------------------
                                    371 ;	 function ThreadManager
                                    372 ;	-----------------------------------------
      0006A0                        373 _ThreadManager:
                                    374 ;	preemptive.c:85: while(1){
      0006A0                        375 00102$:
                                    376 ;	preemptive.c:86: ThreadYield();
      0006A0 12 09 10         [24]  377 	lcall	_ThreadYield
      0006A3 80 FB            [24]  378 	sjmp	00102$
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'delay'
                                    381 ;------------------------------------------------------------
                                    382 ;n                         Allocated to registers 
                                    383 ;------------------------------------------------------------
                                    384 ;	preemptive.c:89: void delay(unsigned char n)
                                    385 ;	-----------------------------------------
                                    386 ;	 function delay
                                    387 ;	-----------------------------------------
      0006A5                        388 _delay:
                                    389 ;	preemptive.c:91: SemaphoreWait(time_sem);
      0006A5                        390 	 0$:
      0006A5 85 2F E0         [24]  391 	MOV ACC, _time_sem 
      0006A8 20 E7 FA         [24]  392 	JB ACC.7, 0$ 
      0006AB 60 F8            [24]  393 	JZ 0$ 
      0006AD 15 2F            [12]  394 	DEC _time_sem 
                                    395 ;	preemptive.c:94: __endasm;
      0006AF 75 AF 00         [24]  396 	MOV _EA, #0
                                    397 ;	preemptive.c:95: tmp = 3 << (2 * thread_id);
      0006B2 E5 24            [12]  398 	mov	a,_thread_id
      0006B4 25 E0            [12]  399 	add	a,acc
      0006B6 FF               [12]  400 	mov	r7,a
      0006B7 8F F0            [24]  401 	mov	b,r7
      0006B9 05 F0            [12]  402 	inc	b
      0006BB 74 03            [12]  403 	mov	a,#0x03
      0006BD 80 02            [24]  404 	sjmp	00114$
      0006BF                        405 00112$:
      0006BF 25 E0            [12]  406 	add	a,acc
      0006C1                        407 00114$:
      0006C1 D5 F0 FB         [24]  408 	djnz	b,00112$
      0006C4 F5 28            [12]  409 	mov	_tmp,a
                                    410 ;	preemptive.c:96: time_delay_record &= (~tmp); // clear
      0006C6 E5 28            [12]  411 	mov	a,_tmp
      0006C8 F4               [12]  412 	cpl	a
      0006C9 52 2D            [12]  413 	anl	_time_delay_record,a
                                    414 ;	preemptive.c:97: tmp = time_quatum << (2 * thread_id);
      0006CB E5 24            [12]  415 	mov	a,_thread_id
      0006CD 25 E0            [12]  416 	add	a,acc
      0006CF FF               [12]  417 	mov	r7,a
      0006D0 8F F0            [24]  418 	mov	b,r7
      0006D2 05 F0            [12]  419 	inc	b
      0006D4 E5 2C            [12]  420 	mov	a,_time_quatum
      0006D6 80 02            [24]  421 	sjmp	00117$
      0006D8                        422 00115$:
      0006D8 25 E0            [12]  423 	add	a,acc
      0006DA                        424 00117$:
      0006DA D5 F0 FB         [24]  425 	djnz	b,00115$
      0006DD F5 28            [12]  426 	mov	_tmp,a
                                    427 ;	preemptive.c:98: time_delay_record |= tmp;
      0006DF E5 28            [12]  428 	mov	a,_tmp
      0006E1 42 2D            [12]  429 	orl	_time_delay_record,a
                                    430 ;	preemptive.c:100: tmp = 1 << (4 + thread_id);
      0006E3 74 04            [12]  431 	mov	a,#0x04
      0006E5 25 24            [12]  432 	add	a,_thread_id
      0006E7 F5 F0            [12]  433 	mov	b,a
      0006E9 05 F0            [12]  434 	inc	b
      0006EB 74 01            [12]  435 	mov	a,#0x01
      0006ED 80 02            [24]  436 	sjmp	00120$
      0006EF                        437 00118$:
      0006EF 25 E0            [12]  438 	add	a,acc
      0006F1                        439 00120$:
      0006F1 D5 F0 FB         [24]  440 	djnz	b,00118$
      0006F4 F5 28            [12]  441 	mov	_tmp,a
                                    442 ;	preemptive.c:101: thread_bm &= (~tmp);
      0006F6 E5 28            [12]  443 	mov	a,_tmp
      0006F8 F4               [12]  444 	cpl	a
      0006F9 FF               [12]  445 	mov	r7,a
      0006FA 52 25            [12]  446 	anl	_thread_bm,a
                                    447 ;	preemptive.c:102: thread_bm |= tmp;
      0006FC E5 28            [12]  448 	mov	a,_tmp
      0006FE 42 25            [12]  449 	orl	_thread_bm,a
                                    450 ;	preemptive.c:109: __endasm;
      000700 E5 24            [12]  451 	MOV A, _thread_id
      000702 14               [12]  452 	DEC A
      000703 24 30            [12]  453 	ADD A, #_time_remain
      000705 F8               [12]  454 	MOV R0, A
      000706 A6 82            [24]  455 	MOV @R0, DPL
                                    456 ;	preemptive.c:110: SemaphoreSignal(time_sem);
      000708 05 2F            [12]  457 	INC _time_sem 
                                    458 ;	preemptive.c:113: __endasm;
      00070A 75 AF 01         [24]  459 	MOV _EA, #1
                                    460 ;	preemptive.c:115: while(time_remain[thread_id - 1]){
      00070D                        461 00101$:
      00070D E5 24            [12]  462 	mov	a,_thread_id
      00070F 14               [12]  463 	dec	a
      000710 24 30            [12]  464 	add	a,#_time_remain
      000712 F9               [12]  465 	mov	r1,a
      000713 E7               [12]  466 	mov	a,@r1
      000714 70 F7            [24]  467 	jnz	00101$
                                    468 ;	preemptive.c:118: SemaphoreWait(time_sem);
      000716                        469 	 1$:
      000716 85 2F E0         [24]  470 	MOV ACC, _time_sem 
      000719 20 E7 FA         [24]  471 	JB ACC.7, 1$ 
      00071C 60 F8            [24]  472 	JZ 1$ 
      00071E 15 2F            [12]  473 	DEC _time_sem 
                                    474 ;	preemptive.c:121: __endasm;
      000720 75 AF 00         [24]  475 	MOV _EA, #0
                                    476 ;	preemptive.c:122: tmp = 3 << (2 * thread_id);
      000723 E5 24            [12]  477 	mov	a,_thread_id
      000725 25 E0            [12]  478 	add	a,acc
      000727 FF               [12]  479 	mov	r7,a
      000728 8F F0            [24]  480 	mov	b,r7
      00072A 05 F0            [12]  481 	inc	b
      00072C 74 03            [12]  482 	mov	a,#0x03
      00072E 80 02            [24]  483 	sjmp	00124$
      000730                        484 00122$:
      000730 25 E0            [12]  485 	add	a,acc
      000732                        486 00124$:
      000732 D5 F0 FB         [24]  487 	djnz	b,00122$
      000735 F5 28            [12]  488 	mov	_tmp,a
                                    489 ;	preemptive.c:123: time_delay_record &= (~tmp);
      000737 E5 28            [12]  490 	mov	a,_tmp
      000739 F4               [12]  491 	cpl	a
      00073A FF               [12]  492 	mov	r7,a
      00073B 52 2D            [12]  493 	anl	_time_delay_record,a
                                    494 ;	preemptive.c:124: tmp = 1 << (4 + thread_id);
      00073D 74 04            [12]  495 	mov	a,#0x04
      00073F 25 24            [12]  496 	add	a,_thread_id
      000741 F5 F0            [12]  497 	mov	b,a
      000743 05 F0            [12]  498 	inc	b
      000745 74 01            [12]  499 	mov	a,#0x01
      000747 80 02            [24]  500 	sjmp	00127$
      000749                        501 00125$:
      000749 25 E0            [12]  502 	add	a,acc
      00074B                        503 00127$:
      00074B D5 F0 FB         [24]  504 	djnz	b,00125$
      00074E F5 28            [12]  505 	mov	_tmp,a
                                    506 ;	preemptive.c:125: thread_bm &= (~tmp); // clear waiting
      000750 E5 28            [12]  507 	mov	a,_tmp
      000752 F4               [12]  508 	cpl	a
      000753 FF               [12]  509 	mov	r7,a
      000754 52 25            [12]  510 	anl	_thread_bm,a
                                    511 ;	preemptive.c:126: SemaphoreSignal(time_sem);
      000756 05 2F            [12]  512 	INC _time_sem 
                                    513 ;	preemptive.c:129: __endasm;
      000758 75 AF 01         [24]  514 	MOV _EA, #1
      00075B 22               [24]  515 	ret
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'myTimer0Handler'
                                    518 ;------------------------------------------------------------
                                    519 ;	preemptive.c:131: void myTimer0Handler(void)
                                    520 ;	-----------------------------------------
                                    521 ;	 function myTimer0Handler
                                    522 ;	-----------------------------------------
      00075C                        523 _myTimer0Handler:
                                    524 ;	preemptive.c:135: __endasm;
      00075C 75 AF 00         [24]  525 	MOV _EA, #0
                                    526 ;	preemptive.c:136: SAVESTATE;
      00075F C0 E0            [24]  527 	PUSH ACC 
      000761 C0 F0            [24]  528 	PUSH B 
      000763 C0 82            [24]  529 	PUSH DPL 
      000765 C0 83            [24]  530 	PUSH DPH 
      000767 C0 D0            [24]  531 	PUSH PSW 
      000769 E5 24            [12]  532 	mov	a,_thread_id
      00076B 24 20            [12]  533 	add	a,#_SP_saved
      00076D F8               [12]  534 	mov	r0,a
      00076E A6 81            [24]  535 	mov	@r0,_SP
                                    536 ;	preemptive.c:142: __endasm;
      000770 75 24 00         [24]  537 	MOV _thread_id, #0
      000773 75 D0 00         [24]  538 	MOV _PSW, #0
                                    539 ;	preemptive.c:143: SP = SP_saved[0];
      000776 85 20 81         [24]  540 	mov	_SP,_SP_saved
                                    541 ;	preemptive.c:145: RESTORESTATE;
      000779 E5 24            [12]  542 	mov	a,_thread_id
      00077B 24 20            [12]  543 	add	a,#_SP_saved
      00077D F9               [12]  544 	mov	r1,a
      00077E 87 81            [24]  545 	mov	_SP,@r1
      000780 D0 D0            [24]  546 	POP PSW 
      000782 D0 83            [24]  547 	POP DPH 
      000784 D0 82            [24]  548 	POP DPL 
      000786 D0 F0            [24]  549 	POP B 
      000788 D0 E0            [24]  550 	POP ACC 
                                    551 ;	preemptive.c:146: time_quatum++;
      00078A 05 2C            [12]  552 	inc	_time_quatum
                                    553 ;	preemptive.c:147: time_quatum &= 3;
      00078C 53 2C 03         [24]  554 	anl	_time_quatum,#0x03
                                    555 ;	preemptive.c:149: for(i = 1; i < MAXTHREADS; i++){ // i is the i-th thread
      00078F 75 27 01         [24]  556 	mov	_i,#0x01
      000792                        557 00114$:
      000792 C3               [12]  558 	clr	c
      000793 E5 27            [12]  559 	mov	a,_i
      000795 64 80            [12]  560 	xrl	a,#0x80
      000797 94 84            [12]  561 	subb	a,#0x84
      000799 50 47            [24]  562 	jnc	00103$
                                    563 ;	preemptive.c:150: tmp = time_delay_record >> (2 * i);
      00079B C2 D5            [12]  564 	clr	F0
      00079D 75 F0 02         [24]  565 	mov	b,#0x02
      0007A0 E5 27            [12]  566 	mov	a,_i
      0007A2 30 E7 04         [24]  567 	jnb	acc.7,00143$
      0007A5 B2 D5            [12]  568 	cpl	F0
      0007A7 F4               [12]  569 	cpl	a
      0007A8 04               [12]  570 	inc	a
      0007A9                        571 00143$:
      0007A9 A4               [48]  572 	mul	ab
      0007AA 30 D5 0A         [24]  573 	jnb	F0,00144$
      0007AD F4               [12]  574 	cpl	a
      0007AE 24 01            [12]  575 	add	a,#0x01
      0007B0 C5 F0            [12]  576 	xch	a,b
      0007B2 F4               [12]  577 	cpl	a
      0007B3 34 00            [12]  578 	addc	a,#0x00
      0007B5 C5 F0            [12]  579 	xch	a,b
      0007B7                        580 00144$:
      0007B7 F5 F0            [12]  581 	mov	b,a
      0007B9 05 F0            [12]  582 	inc	b
      0007BB E5 2D            [12]  583 	mov	a,_time_delay_record
      0007BD 33               [12]  584 	rlc	a
      0007BE 92 D2            [24]  585 	mov	ov,c
      0007C0 E5 2D            [12]  586 	mov	a,_time_delay_record
      0007C2 80 03            [24]  587 	sjmp	00146$
      0007C4                        588 00145$:
      0007C4 A2 D2            [12]  589 	mov	c,ov
      0007C6 13               [12]  590 	rrc	a
      0007C7                        591 00146$:
      0007C7 D5 F0 FA         [24]  592 	djnz	b,00145$
      0007CA F5 28            [12]  593 	mov	_tmp,a
                                    594 ;	preemptive.c:151: tmp &= 3;
      0007CC 53 28 03         [24]  595 	anl	_tmp,#0x03
                                    596 ;	preemptive.c:152: if(time_quatum == tmp){
      0007CF E5 28            [12]  597 	mov	a,_tmp
      0007D1 B5 2C 0A         [24]  598 	cjne	a,_time_quatum,00115$
                                    599 ;	preemptive.c:153: time_remain[i - 1]--; // its epoch to decrement
      0007D4 E5 27            [12]  600 	mov	a,_i
      0007D6 14               [12]  601 	dec	a
      0007D7 24 30            [12]  602 	add	a,#_time_remain
      0007D9 F9               [12]  603 	mov	r1,a
      0007DA E7               [12]  604 	mov	a,@r1
      0007DB FF               [12]  605 	mov	r7,a
      0007DC 14               [12]  606 	dec	a
      0007DD F7               [12]  607 	mov	@r1,a
      0007DE                        608 00115$:
                                    609 ;	preemptive.c:149: for(i = 1; i < MAXTHREADS; i++){ // i is the i-th thread
      0007DE 05 27            [12]  610 	inc	_i
      0007E0 80 B0            [24]  611 	sjmp	00114$
      0007E2                        612 00103$:
                                    613 ;	preemptive.c:157: if(time_quatum == 0){
      0007E2 E5 2C            [12]  614 	mov	a,_time_quatum
      0007E4 70 40            [24]  615 	jnz	00105$
                                    616 ;	preemptive.c:158: LOG('X');
      0007E6 85 00 AF         [24]  617 	MOV _EA, 0x0 
      0007E9                        618 	 2$:
      0007E9 85 38 E0         [24]  619 	MOV ACC, _empty 
      0007EC 20 E7 FA         [24]  620 	JB ACC.7, 2$ 
      0007EF 60 F8            [24]  621 	JZ 2$ 
      0007F1 15 38            [12]  622 	DEC _empty 
      0007F3                        623 	 3$:
      0007F3 85 37 E0         [24]  624 	MOV ACC, _mutex 
      0007F6 20 E7 FA         [24]  625 	JB ACC.7, 3$ 
      0007F9 60 F8            [24]  626 	JZ 3$ 
      0007FB 15 37            [12]  627 	DEC _mutex 
      0007FD E5 34            [12]  628 	mov	a,_in
      0007FF 24 39            [12]  629 	add	a,#_buff
      000801 F8               [12]  630 	mov	r0,a
      000802 76 58            [12]  631 	mov	@r0,#0x58
      000804 E5 34            [12]  632 	mov	a,_in
      000806 FE               [12]  633 	mov	r6,a
      000807 33               [12]  634 	rlc	a
      000808 95 E0            [12]  635 	subb	a,acc
      00080A FF               [12]  636 	mov	r7,a
      00080B 8E 82            [24]  637 	mov	dpl,r6
      00080D 8F 83            [24]  638 	mov	dph,r7
      00080F A3               [24]  639 	inc	dptr
      000810 75 08 07         [24]  640 	mov	__modsint_PARM_2,#0x07
      000813 75 09 00         [24]  641 	mov	(__modsint_PARM_2 + 1),#0x00
      000816 12 0A 33         [24]  642 	lcall	__modsint
      000819 AE 82            [24]  643 	mov	r6,dpl
      00081B AF 83            [24]  644 	mov	r7,dph
      00081D 8E 34            [24]  645 	mov	_in,r6
      00081F 05 37            [12]  646 	INC _mutex 
      000821 85 01 AF         [24]  647 	MOV _EA, 0x1 
                                    648 ;	preemptive.c:159: time_elapsed++;
      000824 05 2B            [12]  649 	inc	_time_elapsed
      000826                        650 00105$:
                                    651 ;	preemptive.c:161: if(time_quatum % 2){
      000826 E5 2C            [12]  652 	mov	a,_time_quatum
      000828 A2 E7            [12]  653 	mov	c,acc.7
      00082A 54 01            [12]  654 	anl	a,#0x01
      00082C 60 04            [24]  655 	jz	00150$
      00082E 50 02            [24]  656 	jnc	00150$
      000830 44 FE            [12]  657 	orl	a,#0xfe
      000832                        658 00150$:
      000832 60 42            [24]  659 	jz	00112$
                                    660 ;	preemptive.c:162: PRINT();
      000834 E5 35            [12]  661 	mov	a,_out
      000836 B5 34 02         [24]  662 	cjne	a,_in,00152$
      000839 80 3B            [24]  663 	sjmp	00112$
      00083B                        664 00152$:
      00083B 85 00 AF         [24]  665 	MOV _EA, 0x0 
      00083E                        666 	 4$:
      00083E 85 37 E0         [24]  667 	MOV ACC, _mutex 
      000841 20 E7 FA         [24]  668 	JB ACC.7, 4$ 
      000844 60 F8            [24]  669 	JZ 4$ 
      000846 15 37            [12]  670 	DEC _mutex 
      000848 E5 35            [12]  671 	mov	a,_out
      00084A 24 39            [12]  672 	add	a,#_buff
      00084C F9               [12]  673 	mov	r1,a
      00084D 87 99            [24]  674 	mov	_SBUF,@r1
      00084F E5 35            [12]  675 	mov	a,_out
      000851 FE               [12]  676 	mov	r6,a
      000852 33               [12]  677 	rlc	a
      000853 95 E0            [12]  678 	subb	a,acc
      000855 FF               [12]  679 	mov	r7,a
      000856 8E 82            [24]  680 	mov	dpl,r6
      000858 8F 83            [24]  681 	mov	dph,r7
      00085A A3               [24]  682 	inc	dptr
      00085B 75 08 07         [24]  683 	mov	__modsint_PARM_2,#0x07
      00085E 75 09 00         [24]  684 	mov	(__modsint_PARM_2 + 1),#0x00
      000861 12 0A 33         [24]  685 	lcall	__modsint
      000864 AE 82            [24]  686 	mov	r6,dpl
      000866 AF 83            [24]  687 	mov	r7,dph
      000868 8E 35            [24]  688 	mov	_out,r6
      00086A                        689 00106$:
      00086A 10 99 02         [24]  690 	jbc	_TI,00153$
      00086D 80 FB            [24]  691 	sjmp	00106$
      00086F                        692 00153$:
      00086F 05 37            [12]  693 	INC _mutex 
      000871 05 38            [12]  694 	INC _empty 
      000873 85 01 AF         [24]  695 	MOV _EA, 0x1 
      000876                        696 00112$:
                                    697 ;	preemptive.c:167: __endasm;
      000876 75 AF 01         [24]  698 	MOV _EA, #1
                                    699 ;	preemptive.c:171: __endasm;
      000879 32               [24]  700 	RETI
      00087A 22               [24]  701 	ret
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'ThreadCreate'
                                    704 ;------------------------------------------------------------
                                    705 ;fp                        Allocated to registers 
                                    706 ;------------------------------------------------------------
                                    707 ;	preemptive.c:173: ThreadID ThreadCreate(FunctionPtr fp)
                                    708 ;	-----------------------------------------
                                    709 ;	 function ThreadCreate
                                    710 ;	-----------------------------------------
      00087B                        711 _ThreadCreate:
                                    712 ;	preemptive.c:175: SemaphoreWait(thread_ct);
      00087B                        713 	 5$:
      00087B 85 26 E0         [24]  714 	MOV ACC, _thread_ct 
      00087E 20 E7 FA         [24]  715 	JB ACC.7, 5$ 
      000881 60 F8            [24]  716 	JZ 5$ 
      000883 15 26            [12]  717 	DEC _thread_ct 
                                    718 ;	preemptive.c:178: __endasm;
      000885 75 AF 00         [24]  719 	MOV _EA, #0
                                    720 ;	preemptive.c:180: for(i = 0; i < MAXTHREADS; i++){
      000888 75 27 00         [24]  721 	mov	_i,#0x00
      00088B                        722 00105$:
      00088B C3               [12]  723 	clr	c
      00088C E5 27            [12]  724 	mov	a,_i
      00088E 64 80            [12]  725 	xrl	a,#0x80
      000890 94 84            [12]  726 	subb	a,#0x84
      000892 50 75            [24]  727 	jnc	00103$
                                    728 ;	preemptive.c:181: tmp = 1 << i;
      000894 85 27 F0         [24]  729 	mov	b,_i
      000897 05 F0            [12]  730 	inc	b
      000899 74 01            [12]  731 	mov	a,#0x01
      00089B 80 02            [24]  732 	sjmp	00121$
      00089D                        733 00119$:
      00089D 25 E0            [12]  734 	add	a,acc
      00089F                        735 00121$:
      00089F D5 F0 FB         [24]  736 	djnz	b,00119$
      0008A2 F5 28            [12]  737 	mov	_tmp,a
                                    738 ;	preemptive.c:182: if( (thread_bm & tmp) == 0 ){
      0008A4 E5 28            [12]  739 	mov	a,_tmp
      0008A6 55 25            [12]  740 	anl	a,_thread_bm
      0008A8 70 5A            [24]  741 	jnz	00106$
                                    742 ;	preemptive.c:184: thread_bm |= tmp; // set the bit to 1
      0008AA E5 28            [12]  743 	mov	a,_tmp
      0008AC 42 25            [12]  744 	orl	_thread_bm,a
                                    745 ;	preemptive.c:185: tmp = SP; // save current SP
      0008AE 85 81 28         [24]  746 	mov	_tmp,_SP
                                    747 ;	preemptive.c:186: SP = (0x40 + 0x10 * i) - 1; // init SP for SP_saved
      0008B1 E5 27            [12]  748 	mov	a,_i
      0008B3 C4               [12]  749 	swap	a
      0008B4 54 F0            [12]  750 	anl	a,#0xF0
      0008B6 FF               [12]  751 	mov	r7,a
      0008B7 24 3F            [12]  752 	add	a,#0x3F
      0008B9 F5 81            [12]  753 	mov	_SP,a
                                    754 ;	preemptive.c:187: i <<= 3;
      0008BB E5 27            [12]  755 	mov	a,_i
      0008BD C4               [12]  756 	swap	a
      0008BE 03               [12]  757 	rr	a
      0008BF 54 F8            [12]  758 	anl	a,#0xF8
      0008C1 F5 27            [12]  759 	mov	_i,a
                                    760 ;	preemptive.c:207: __endasm;
      0008C3 E5 82            [12]  761 	MOV A, DPL
      0008C5 85 83 F0         [24]  762 	MOV B, DPH
      0008C8 90 09 B2         [24]  763 	MOV DPTR, #_ThreadExit
      0008CB C0 82            [24]  764 	PUSH DPL
      0008CD C0 83            [24]  765 	PUSH DPH
      0008CF F5 82            [12]  766 	MOV DPL, A
      0008D1 85 F0 83         [24]  767 	MOV DPH, B
      0008D4 C0 82            [24]  768 	PUSH DPL
      0008D6 C0 83            [24]  769 	PUSH DPH
      0008D8 74 00            [12]  770 	MOV A, #0
      0008DA C0 E0            [24]  771 	PUSH ACC
      0008DC C0 E0            [24]  772 	PUSH ACC
      0008DE C0 E0            [24]  773 	PUSH ACC
      0008E0 C0 E0            [24]  774 	PUSH ACC
      0008E2 C0 27            [24]  775 	PUSH _i
      0008E4 74 00            [12]  776 	MOV A, #0x00
                                    777 ;	preemptive.c:208: i >>= 3;
      0008E6 E5 27            [12]  778 	mov	a,_i
      0008E8 C4               [12]  779 	swap	a
      0008E9 23               [12]  780 	rl	a
      0008EA 54 1F            [12]  781 	anl	a,#0x1F
      0008EC 30 E4 02         [24]  782 	jnb	acc.4,00123$
      0008EF 44 E0            [12]  783 	orl	a,#0xE0
      0008F1                        784 00123$:
      0008F1 F5 27            [12]  785 	mov	_i,a
                                    786 ;	preemptive.c:209: SP_saved[i] = SP; // save SP for that thread
      0008F3 E5 27            [12]  787 	mov	a,_i
      0008F5 24 20            [12]  788 	add	a,#_SP_saved
      0008F7 F8               [12]  789 	mov	r0,a
      0008F8 A6 81            [24]  790 	mov	@r0,_SP
                                    791 ;	preemptive.c:211: SP = tmp; // restore SP
      0008FA 85 28 81         [24]  792 	mov	_SP,_tmp
                                    793 ;	preemptive.c:214: __endasm;
      0008FD 75 AF 00         [24]  794 	MOV _EA, #0
                                    795 ;	preemptive.c:215: return i;
      000900 85 27 82         [24]  796 	mov	dpl,_i
      000903 22               [24]  797 	ret
      000904                        798 00106$:
                                    799 ;	preemptive.c:180: for(i = 0; i < MAXTHREADS; i++){
      000904 05 27            [12]  800 	inc	_i
      000906 02 08 8B         [24]  801 	ljmp	00105$
      000909                        802 00103$:
                                    803 ;	preemptive.c:220: __endasm;
      000909 75 AF 01         [24]  804 	MOV _EA, #1
                                    805 ;	preemptive.c:222: return -1;
      00090C 75 82 FF         [24]  806 	mov	dpl,#0xFF
      00090F 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'ThreadYield'
                                    810 ;------------------------------------------------------------
                                    811 ;	preemptive.c:224: void ThreadYield(void)
                                    812 ;	-----------------------------------------
                                    813 ;	 function ThreadYield
                                    814 ;	-----------------------------------------
      000910                        815 _ThreadYield:
                                    816 ;	preemptive.c:228: __endasm;
      000910 75 AF 00         [24]  817 	MOV _EA, #0
                                    818 ;	preemptive.c:229: SAVESTATE;
      000913 C0 E0            [24]  819 	PUSH ACC 
      000915 C0 F0            [24]  820 	PUSH B 
      000917 C0 82            [24]  821 	PUSH DPL 
      000919 C0 83            [24]  822 	PUSH DPH 
      00091B C0 D0            [24]  823 	PUSH PSW 
      00091D E5 24            [12]  824 	mov	a,_thread_id
      00091F 24 20            [12]  825 	add	a,#_SP_saved
      000921 F8               [12]  826 	mov	r0,a
      000922 A6 81            [24]  827 	mov	@r0,_SP
                                    828 ;	preemptive.c:230: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      000924 75 27 01         [24]  829 	mov	_i,#0x01
      000927                        830 00109$:
      000927 C3               [12]  831 	clr	c
      000928 74 84            [12]  832 	mov	a,#(0x04 ^ 0x80)
      00092A 85 27 F0         [24]  833 	mov	b,_i
      00092D 63 F0 80         [24]  834 	xrl	b,#0x80
      000930 95 F0            [12]  835 	subb	a,b
      000932 40 2E            [24]  836 	jc	00103$
                                    837 ;	preemptive.c:231: tmp = last_thread + i;
      000934 E5 27            [12]  838 	mov	a,_i
      000936 25 2A            [12]  839 	add	a,_last_thread
      000938 F5 28            [12]  840 	mov	_tmp,a
                                    841 ;	preemptive.c:232: tmp &= 3;
      00093A 53 28 03         [24]  842 	anl	_tmp,#0x03
                                    843 ;	preemptive.c:233: tmp = 1 << tmp;
      00093D 85 28 F0         [24]  844 	mov	b,_tmp
      000940 05 F0            [12]  845 	inc	b
      000942 74 01            [12]  846 	mov	a,#0x01
      000944 80 02            [24]  847 	sjmp	00140$
      000946                        848 00138$:
      000946 25 E0            [12]  849 	add	a,acc
      000948                        850 00140$:
      000948 D5 F0 FB         [24]  851 	djnz	b,00138$
      00094B F5 28            [12]  852 	mov	_tmp,a
                                    853 ;	preemptive.c:234: if(thread_bm & tmp){ // next thread found
      00094D E5 28            [12]  854 	mov	a,_tmp
      00094F 55 25            [12]  855 	anl	a,_thread_bm
      000951 60 0B            [24]  856 	jz	00110$
                                    857 ;	preemptive.c:235: last_thread += i;
      000953 E5 27            [12]  858 	mov	a,_i
      000955 25 2A            [12]  859 	add	a,_last_thread
      000957 F5 2A            [12]  860 	mov	_last_thread,a
                                    861 ;	preemptive.c:236: last_thread &= 3;
      000959 53 2A 03         [24]  862 	anl	_last_thread,#0x03
                                    863 ;	preemptive.c:237: break;
      00095C 80 04            [24]  864 	sjmp	00103$
      00095E                        865 00110$:
                                    866 ;	preemptive.c:230: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      00095E 05 27            [12]  867 	inc	_i
      000960 80 C5            [24]  868 	sjmp	00109$
      000962                        869 00103$:
                                    870 ;	preemptive.c:242: for(i = 1; i < MAXTHREADS; i++){ // search for thread that finishes its delay
      000962 75 27 01         [24]  871 	mov	_i,#0x01
      000965                        872 00112$:
      000965 C3               [12]  873 	clr	c
      000966 E5 27            [12]  874 	mov	a,_i
      000968 64 80            [12]  875 	xrl	a,#0x80
      00096A 94 84            [12]  876 	subb	a,#0x84
      00096C 50 2B            [24]  877 	jnc	00107$
                                    878 ;	preemptive.c:243: tmp = 1 << (4 + i);
      00096E 74 04            [12]  879 	mov	a,#0x04
      000970 25 27            [12]  880 	add	a,_i
      000972 F5 F0            [12]  881 	mov	b,a
      000974 05 F0            [12]  882 	inc	b
      000976 74 01            [12]  883 	mov	a,#0x01
      000978 80 02            [24]  884 	sjmp	00145$
      00097A                        885 00143$:
      00097A 25 E0            [12]  886 	add	a,acc
      00097C                        887 00145$:
      00097C D5 F0 FB         [24]  888 	djnz	b,00143$
      00097F F5 28            [12]  889 	mov	_tmp,a
                                    890 ;	preemptive.c:244: if((tmp & (0xF0)) && !time_remain[i - 1]){
      000981 E5 28            [12]  891 	mov	a,_tmp
      000983 54 F0            [12]  892 	anl	a,#0xF0
      000985 60 0E            [24]  893 	jz	00113$
      000987 E5 27            [12]  894 	mov	a,_i
      000989 14               [12]  895 	dec	a
      00098A 24 30            [12]  896 	add	a,#_time_remain
      00098C F9               [12]  897 	mov	r1,a
      00098D E7               [12]  898 	mov	a,@r1
      00098E 70 05            [24]  899 	jnz	00113$
                                    900 ;	preemptive.c:245: last_thread = i;
      000990 85 27 2A         [24]  901 	mov	_last_thread,_i
                                    902 ;	preemptive.c:246: break;  
      000993 80 04            [24]  903 	sjmp	00107$
      000995                        904 00113$:
                                    905 ;	preemptive.c:242: for(i = 1; i < MAXTHREADS; i++){ // search for thread that finishes its delay
      000995 05 27            [12]  906 	inc	_i
      000997 80 CC            [24]  907 	sjmp	00112$
      000999                        908 00107$:
                                    909 ;	preemptive.c:251: thread_id = last_thread;
      000999 85 2A 24         [24]  910 	mov	_thread_id,_last_thread
                                    911 ;	preemptive.c:252: RESTORESTATE;
      00099C E5 24            [12]  912 	mov	a,_thread_id
      00099E 24 20            [12]  913 	add	a,#_SP_saved
      0009A0 F9               [12]  914 	mov	r1,a
      0009A1 87 81            [24]  915 	mov	_SP,@r1
      0009A3 D0 D0            [24]  916 	POP PSW 
      0009A5 D0 83            [24]  917 	POP DPH 
      0009A7 D0 82            [24]  918 	POP DPL 
      0009A9 D0 F0            [24]  919 	POP B 
      0009AB D0 E0            [24]  920 	POP ACC 
                                    921 ;	preemptive.c:257: __endasm;
      0009AD 75 AF 01         [24]  922 	MOV _EA, #1
      0009B0 32               [24]  923 	RETI
      0009B1 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'ThreadExit'
                                    927 ;------------------------------------------------------------
                                    928 ;	preemptive.c:259: void ThreadExit(void)
                                    929 ;	-----------------------------------------
                                    930 ;	 function ThreadExit
                                    931 ;	-----------------------------------------
      0009B2                        932 _ThreadExit:
                                    933 ;	preemptive.c:263: __endasm;
      0009B2 75 AF 00         [24]  934 	MOV _EA, #0
                                    935 ;	preemptive.c:265: tmp = 1 << thread_id;
      0009B5 85 24 F0         [24]  936 	mov	b,_thread_id
      0009B8 05 F0            [12]  937 	inc	b
      0009BA 74 01            [12]  938 	mov	a,#0x01
      0009BC 80 02            [24]  939 	sjmp	00111$
      0009BE                        940 00109$:
      0009BE 25 E0            [12]  941 	add	a,acc
      0009C0                        942 00111$:
      0009C0 D5 F0 FB         [24]  943 	djnz	b,00109$
      0009C3 F5 28            [12]  944 	mov	_tmp,a
                                    945 ;	preemptive.c:266: thread_bm &= (~tmp); // clear bitmap
      0009C5 E5 28            [12]  946 	mov	a,_tmp
      0009C7 F4               [12]  947 	cpl	a
      0009C8 FF               [12]  948 	mov	r7,a
      0009C9 52 25            [12]  949 	anl	_thread_bm,a
                                    950 ;	preemptive.c:268: SemaphoreSignal(thread_ct);
      0009CB 05 26            [12]  951 	INC _thread_ct 
                                    952 ;	preemptive.c:271: __endasm;
      0009CD 75 AF 01         [24]  953 	MOV _EA, #1
                                    954 ;	preemptive.c:272: while(1) {} // wait for context switch
      0009D0                        955 00102$:
      0009D0 80 FE            [24]  956 	sjmp	00102$
                                    957 ;------------------------------------------------------------
                                    958 ;Allocation info for local variables in function 'now'
                                    959 ;------------------------------------------------------------
                                    960 ;	preemptive.c:274: unsigned char now()
                                    961 ;	-----------------------------------------
                                    962 ;	 function now
                                    963 ;	-----------------------------------------
      0009D2                        964 _now:
                                    965 ;	preemptive.c:276: return time_quatum >= 2 ? time_elapsed + 1 : time_elapsed;
      0009D2 C3               [12]  966 	clr	c
      0009D3 E5 2C            [12]  967 	mov	a,_time_quatum
      0009D5 64 80            [12]  968 	xrl	a,#0x80
      0009D7 94 82            [12]  969 	subb	a,#0x82
      0009D9 40 06            [24]  970 	jc	00103$
      0009DB E5 2B            [12]  971 	mov	a,_time_elapsed
      0009DD 04               [12]  972 	inc	a
      0009DE FF               [12]  973 	mov	r7,a
      0009DF 80 02            [24]  974 	sjmp	00104$
      0009E1                        975 00103$:
      0009E1 AF 2B            [24]  976 	mov	r7,_time_elapsed
      0009E3                        977 00104$:
      0009E3 8F 82            [24]  978 	mov	dpl,r7
      0009E5 22               [24]  979 	ret
                                    980 	.area CSEG    (CODE)
                                    981 	.area CONST   (CODE)
                                    982 	.area XINIT   (CODE)
                                    983 	.area CABS    (ABS,CODE)
