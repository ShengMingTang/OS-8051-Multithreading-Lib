                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Dec 11 18:49:39 2019
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
                                    110 	.globl _ThreadCreate
                                    111 	.globl _ThreadYield
                                    112 	.globl _ThreadExit
                                    113 	.globl _myTimer0Handler
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
                           000020   229 _SP_saved	=	0x0020
                           000024   230 _thread_id	=	0x0024
                           000025   231 _thread_bm	=	0x0025
                           000026   232 _thread_ct	=	0x0026
                           000027   233 _i	=	0x0027
                           000028   234 _tmp	=	0x0028
                           000029   235 _tmp2	=	0x0029
                           00002A   236 _last_thread	=	0x002a
                           00002B   237 _dir	=	0x002b
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable items in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	OSEG    (OVR,DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; external initialized ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; global & static initialisations
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; Home
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area HOME    (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; code
                                    295 ;--------------------------------------------------------
                                    296 	.area CSEG    (CODE)
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'Bootstrap'
                                    299 ;------------------------------------------------------------
                                    300 ;	preemptive.c:44: void Bootstrap(void)
                                    301 ;	-----------------------------------------
                                    302 ;	 function Bootstrap
                                    303 ;	-----------------------------------------
      0001A0                        304 _Bootstrap:
                           000007   305 	ar7 = 0x07
                           000006   306 	ar6 = 0x06
                           000005   307 	ar5 = 0x05
                           000004   308 	ar4 = 0x04
                           000003   309 	ar3 = 0x03
                           000002   310 	ar2 = 0x02
                           000001   311 	ar1 = 0x01
                           000000   312 	ar0 = 0x00
                                    313 ;	preemptive.c:48: __endasm;
      0001A0 75 AF 00         [24]  314 	MOV _EA, #0
                                    315 ;	preemptive.c:50: SP_saved[0] = 0x3f;
      0001A3 75 20 3F         [24]  316 	mov	_SP_saved,#0x3F
                                    317 ;	preemptive.c:51: SP_saved[1] = 0x4f;
      0001A6 75 21 4F         [24]  318 	mov	(_SP_saved + 0x0001),#0x4F
                                    319 ;	preemptive.c:52: SP_saved[2] = 0x5f;
      0001A9 75 22 5F         [24]  320 	mov	(_SP_saved + 0x0002),#0x5F
                                    321 ;	preemptive.c:53: SP_saved[3] = 0x6f;
      0001AC 75 23 6F         [24]  322 	mov	(_SP_saved + 0x0003),#0x6F
                                    323 ;	preemptive.c:54: thread_bm = 0;
      0001AF 75 25 00         [24]  324 	mov	_thread_bm,#0x00
                                    325 ;	preemptive.c:55: thread_id = -1;
      0001B2 75 24 FF         [24]  326 	mov	_thread_id,#0xFF
                                    327 ;	preemptive.c:56: thread_ct = 0;
      0001B5 75 26 00         [24]  328 	mov	_thread_ct,#0x00
                                    329 ;	preemptive.c:58: TMOD = 0;
      0001B8 75 89 00         [24]  330 	mov	_TMOD,#0x00
                                    331 ;	preemptive.c:59: IE = 0x82;
      0001BB 75 A8 82         [24]  332 	mov	_IE,#0x82
                                    333 ;	preemptive.c:60: TR0 = 1;
      0001BE D2 8C            [12]  334 	setb	_TR0
                                    335 ;	preemptive.c:61: PSW = 0;
      0001C0 75 D0 00         [24]  336 	mov	_PSW,#0x00
                                    337 ;	preemptive.c:64: thread_id = ThreadCreate(&main);
      0001C3 90 00 18         [24]  338 	mov	dptr,#_main
      0001C6 12 01 E4         [24]  339 	lcall	_ThreadCreate
      0001C9 85 82 24         [24]  340 	mov	_thread_id,dpl
                                    341 ;	preemptive.c:66: last_thread = 0;
      0001CC 75 2A 00         [24]  342 	mov	_last_thread,#0x00
                                    343 ;	preemptive.c:68: RESTORESTATE;
      0001CF E5 24            [12]  344 	mov	a,_thread_id
      0001D1 24 20            [12]  345 	add	a,#_SP_saved
      0001D3 F9               [12]  346 	mov	r1,a
      0001D4 87 81            [24]  347 	mov	_SP,@r1
      0001D6 D0 D0            [24]  348 	POP PSW 
      0001D8 D0 83            [24]  349 	POP DPH 
      0001DA D0 82            [24]  350 	POP DPL 
      0001DC D0 F0            [24]  351 	POP B 
      0001DE D0 E0            [24]  352 	POP ACC 
                                    353 ;	preemptive.c:72: __endasm;
      0001E0 75 AF 01         [24]  354 	MOV _EA, #1
      0001E3 22               [24]  355 	ret
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'ThreadCreate'
                                    358 ;------------------------------------------------------------
                                    359 ;fp                        Allocated to registers 
                                    360 ;------------------------------------------------------------
                                    361 ;	preemptive.c:74: ThreadID ThreadCreate(FunctionPtr fp)
                                    362 ;	-----------------------------------------
                                    363 ;	 function ThreadCreate
                                    364 ;	-----------------------------------------
      0001E4                        365 _ThreadCreate:
                                    366 ;	preemptive.c:78: __endasm;
      0001E4 75 AF 00         [24]  367 	MOV _EA, #0
                                    368 ;	preemptive.c:80: if(thread_ct >= MAXTHREADS){
      0001E7 C3               [12]  369 	clr	c
      0001E8 E5 26            [12]  370 	mov	a,_thread_ct
      0001EA 64 80            [12]  371 	xrl	a,#0x80
      0001EC 94 83            [12]  372 	subb	a,#0x83
      0001EE 40 07            [24]  373 	jc	00105$
                                    374 ;	preemptive.c:83: __endasm;
      0001F0 75 AF 01         [24]  375 	MOV _EA, #1
                                    376 ;	preemptive.c:85: return -1;
      0001F3 75 82 FF         [24]  377 	mov	dpl,#0xFF
      0001F6 22               [24]  378 	ret
      0001F7                        379 00105$:
                                    380 ;	preemptive.c:88: for(i = 0; i < MAXTHREADS; i++){
      0001F7 75 27 00         [24]  381 	mov	_i,#0x00
      0001FA                        382 00108$:
      0001FA C3               [12]  383 	clr	c
      0001FB E5 27            [12]  384 	mov	a,_i
      0001FD 64 80            [12]  385 	xrl	a,#0x80
      0001FF 94 83            [12]  386 	subb	a,#0x83
      000201 50 57            [24]  387 	jnc	00103$
                                    388 ;	preemptive.c:89: tmp = 1 << i;
      000203 85 27 F0         [24]  389 	mov	b,_i
      000206 05 F0            [12]  390 	inc	b
      000208 74 01            [12]  391 	mov	a,#0x01
      00020A 80 02            [24]  392 	sjmp	00128$
      00020C                        393 00126$:
      00020C 25 E0            [12]  394 	add	a,acc
      00020E                        395 00128$:
      00020E D5 F0 FB         [24]  396 	djnz	b,00126$
      000211 F5 28            [12]  397 	mov	_tmp,a
                                    398 ;	preemptive.c:90: if( (thread_bm & tmp) == 0 ){
      000213 E5 28            [12]  399 	mov	a,_tmp
      000215 55 25            [12]  400 	anl	a,_thread_bm
      000217 70 3D            [24]  401 	jnz	00109$
                                    402 ;	preemptive.c:92: thread_bm |= tmp; // set the bit to 1
      000219 E5 28            [12]  403 	mov	a,_tmp
      00021B 42 25            [12]  404 	orl	_thread_bm,a
                                    405 ;	preemptive.c:93: thread_ct++;
      00021D 05 26            [12]  406 	inc	_thread_ct
                                    407 ;	preemptive.c:94: tmp = SP;
      00021F 85 81 28         [24]  408 	mov	_tmp,_SP
                                    409 ;	preemptive.c:95: SP = SP_saved[i]; // SP for the created thread
      000222 E5 27            [12]  410 	mov	a,_i
      000224 24 20            [12]  411 	add	a,#_SP_saved
      000226 F9               [12]  412 	mov	r1,a
      000227 87 81            [24]  413 	mov	_SP,@r1
                                    414 ;	preemptive.c:96: tmp2 = i << 3; // for PSW.3 and PSW.4
      000229 E5 27            [12]  415 	mov	a,_i
      00022B C4               [12]  416 	swap	a
      00022C 03               [12]  417 	rr	a
      00022D 54 F8            [12]  418 	anl	a,#0xF8
      00022F F5 29            [12]  419 	mov	_tmp2,a
                                    420 ;	preemptive.c:110: __endasm;
      000231 74 00            [12]  421 	MOV A, #0
      000233 C0 82            [24]  422 	PUSH DPL
      000235 C0 83            [24]  423 	PUSH DPH
      000237 C0 E0            [24]  424 	PUSH ACC
      000239 C0 E0            [24]  425 	PUSH ACC
      00023B C0 E0            [24]  426 	PUSH ACC
      00023D C0 E0            [24]  427 	PUSH ACC
      00023F E5 29            [12]  428 	MOV A, _tmp2
      000241 C0 E0            [24]  429 	PUSH ACC
      000243 74 00            [12]  430 	MOV A, #0x00
                                    431 ;	preemptive.c:111: SP_saved[i] = SP; // save SP for that thread
      000245 E5 27            [12]  432 	mov	a,_i
      000247 24 20            [12]  433 	add	a,#_SP_saved
      000249 F8               [12]  434 	mov	r0,a
      00024A A6 81            [24]  435 	mov	@r0,_SP
                                    436 ;	preemptive.c:112: SP = tmp; // restore SP
      00024C 85 28 81         [24]  437 	mov	_SP,_tmp
                                    438 ;	preemptive.c:116: __endasm;
      00024F 75 AF 01         [24]  439 	MOV _EA, #1
                                    440 ;	preemptive.c:118: return i;
      000252 85 27 82         [24]  441 	mov	dpl,_i
      000255 22               [24]  442 	ret
      000256                        443 00109$:
                                    444 ;	preemptive.c:88: for(i = 0; i < MAXTHREADS; i++){
      000256 05 27            [12]  445 	inc	_i
      000258 80 A0            [24]  446 	sjmp	00108$
      00025A                        447 00103$:
                                    448 ;	preemptive.c:123: __endasm;
      00025A 75 AF 01         [24]  449 	MOV _EA, #1
                                    450 ;	preemptive.c:124: return -1;
      00025D 75 82 FF         [24]  451 	mov	dpl,#0xFF
      000260 22               [24]  452 	ret
                                    453 ;------------------------------------------------------------
                                    454 ;Allocation info for local variables in function 'ThreadYield'
                                    455 ;------------------------------------------------------------
                                    456 ;	preemptive.c:127: void ThreadYield(void)
                                    457 ;	-----------------------------------------
                                    458 ;	 function ThreadYield
                                    459 ;	-----------------------------------------
      000261                        460 _ThreadYield:
                                    461 ;	preemptive.c:131: __endasm;
      000261 75 AF 00         [24]  462 	MOV _EA, #0
                                    463 ;	preemptive.c:132: SAVESTATE;
      000264 C0 E0            [24]  464 	PUSH ACC 
      000266 C0 F0            [24]  465 	PUSH B 
      000268 C0 82            [24]  466 	PUSH DPL 
      00026A C0 83            [24]  467 	PUSH DPH 
      00026C C0 D0            [24]  468 	PUSH PSW 
      00026E E5 24            [12]  469 	mov	a,_thread_id
      000270 24 20            [12]  470 	add	a,#_SP_saved
      000272 F8               [12]  471 	mov	r0,a
      000273 A6 81            [24]  472 	mov	@r0,_SP
                                    473 ;	preemptive.c:133: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      000275 75 27 01         [24]  474 	mov	_i,#0x01
      000278                        475 00105$:
      000278 C3               [12]  476 	clr	c
      000279 74 83            [12]  477 	mov	a,#(0x03 ^ 0x80)
      00027B 85 27 F0         [24]  478 	mov	b,_i
      00027E 63 F0 80         [24]  479 	xrl	b,#0x80
      000281 95 F0            [12]  480 	subb	a,b
      000283 40 58            [24]  481 	jc	00103$
                                    482 ;	preemptive.c:134: tmp = thread_id + i;
      000285 E5 27            [12]  483 	mov	a,_i
      000287 25 24            [12]  484 	add	a,_thread_id
      000289 F5 28            [12]  485 	mov	_tmp,a
                                    486 ;	preemptive.c:135: tmp %= MAXTHREADS;
      00028B 75 F0 03         [24]  487 	mov	b,#0x03
      00028E E5 28            [12]  488 	mov	a,_tmp
      000290 C2 D5            [12]  489 	clr	F0
      000292 30 E7 04         [24]  490 	jnb	acc.7,00119$
      000295 D2 D5            [12]  491 	setb	F0
      000297 F4               [12]  492 	cpl	a
      000298 04               [12]  493 	inc	a
      000299                        494 00119$:
      000299 84               [48]  495 	div	ab
      00029A E5 F0            [12]  496 	mov	a,b
      00029C 30 D5 02         [24]  497 	jnb	F0,00120$
      00029F F4               [12]  498 	cpl	a
      0002A0 04               [12]  499 	inc	a
      0002A1                        500 00120$:
      0002A1 F5 28            [12]  501 	mov	_tmp,a
                                    502 ;	preemptive.c:136: tmp = 1 << tmp;
      0002A3 85 28 F0         [24]  503 	mov	b,_tmp
      0002A6 05 F0            [12]  504 	inc	b
      0002A8 74 01            [12]  505 	mov	a,#0x01
      0002AA 80 02            [24]  506 	sjmp	00123$
      0002AC                        507 00121$:
      0002AC 25 E0            [12]  508 	add	a,acc
      0002AE                        509 00123$:
      0002AE D5 F0 FB         [24]  510 	djnz	b,00121$
      0002B1 F5 28            [12]  511 	mov	_tmp,a
                                    512 ;	preemptive.c:137: if(thread_bm & tmp){ // next thread found
      0002B3 E5 28            [12]  513 	mov	a,_tmp
      0002B5 55 25            [12]  514 	anl	a,_thread_bm
      0002B7 60 20            [24]  515 	jz	00106$
                                    516 ;	preemptive.c:138: thread_id += i;
      0002B9 E5 27            [12]  517 	mov	a,_i
      0002BB 25 24            [12]  518 	add	a,_thread_id
      0002BD F5 24            [12]  519 	mov	_thread_id,a
                                    520 ;	preemptive.c:139: thread_id %= MAXTHREADS;
      0002BF 75 F0 03         [24]  521 	mov	b,#0x03
      0002C2 E5 24            [12]  522 	mov	a,_thread_id
      0002C4 C2 D5            [12]  523 	clr	F0
      0002C6 30 E7 04         [24]  524 	jnb	acc.7,00125$
      0002C9 D2 D5            [12]  525 	setb	F0
      0002CB F4               [12]  526 	cpl	a
      0002CC 04               [12]  527 	inc	a
      0002CD                        528 00125$:
      0002CD 84               [48]  529 	div	ab
      0002CE E5 F0            [12]  530 	mov	a,b
      0002D0 30 D5 02         [24]  531 	jnb	F0,00126$
      0002D3 F4               [12]  532 	cpl	a
      0002D4 04               [12]  533 	inc	a
      0002D5                        534 00126$:
      0002D5 F5 24            [12]  535 	mov	_thread_id,a
                                    536 ;	preemptive.c:140: break;
      0002D7 80 04            [24]  537 	sjmp	00103$
      0002D9                        538 00106$:
                                    539 ;	preemptive.c:133: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      0002D9 05 27            [12]  540 	inc	_i
      0002DB 80 9B            [24]  541 	sjmp	00105$
      0002DD                        542 00103$:
                                    543 ;	preemptive.c:143: RESTORESTATE;
      0002DD E5 24            [12]  544 	mov	a,_thread_id
      0002DF 24 20            [12]  545 	add	a,#_SP_saved
      0002E1 F9               [12]  546 	mov	r1,a
      0002E2 87 81            [24]  547 	mov	_SP,@r1
      0002E4 D0 D0            [24]  548 	POP PSW 
      0002E6 D0 83            [24]  549 	POP DPH 
      0002E8 D0 82            [24]  550 	POP DPL 
      0002EA D0 F0            [24]  551 	POP B 
      0002EC D0 E0            [24]  552 	POP ACC 
                                    553 ;	preemptive.c:146: __endasm;
      0002EE 75 AF 01         [24]  554 	MOV _EA, #1
      0002F1 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'ThreadExit'
                                    558 ;------------------------------------------------------------
                                    559 ;	preemptive.c:148: void ThreadExit(void)
                                    560 ;	-----------------------------------------
                                    561 ;	 function ThreadExit
                                    562 ;	-----------------------------------------
      0002F2                        563 _ThreadExit:
                                    564 ;	preemptive.c:152: __endasm;
      0002F2 75 AF 00         [24]  565 	MOV _EA, #0
                                    566 ;	preemptive.c:153: tmp = 1 << thread_id;
      0002F5 85 24 F0         [24]  567 	mov	b,_thread_id
      0002F8 05 F0            [12]  568 	inc	b
      0002FA 74 01            [12]  569 	mov	a,#0x01
      0002FC 80 02            [24]  570 	sjmp	00105$
      0002FE                        571 00103$:
      0002FE 25 E0            [12]  572 	add	a,acc
      000300                        573 00105$:
      000300 D5 F0 FB         [24]  574 	djnz	b,00103$
      000303 F5 28            [12]  575 	mov	_tmp,a
                                    576 ;	preemptive.c:154: tmp = ~tmp;
      000305 E5 28            [12]  577 	mov	a,_tmp
      000307 F4               [12]  578 	cpl	a
      000308 F5 28            [12]  579 	mov	_tmp,a
                                    580 ;	preemptive.c:155: thread_bm &= tmp; // clear bitmap
      00030A E5 28            [12]  581 	mov	a,_tmp
      00030C 52 25            [12]  582 	anl	_thread_bm,a
                                    583 ;	preemptive.c:156: thread_ct--;
      00030E 15 26            [12]  584 	dec	_thread_ct
                                    585 ;	preemptive.c:157: ThreadYield();
      000310 12 02 61         [24]  586 	lcall	_ThreadYield
                                    587 ;	preemptive.c:160: __endasm;
      000313 75 AF 01         [24]  588 	MOV _EA, #1
      000316 22               [24]  589 	ret
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'myTimer0Handler'
                                    592 ;------------------------------------------------------------
                                    593 ;	preemptive.c:163: void myTimer0Handler(void)
                                    594 ;	-----------------------------------------
                                    595 ;	 function myTimer0Handler
                                    596 ;	-----------------------------------------
      000317                        597 _myTimer0Handler:
                                    598 ;	preemptive.c:167: __endasm;
      000317 75 AF 00         [24]  599 	MOV _EA, #0
                                    600 ;	preemptive.c:168: SAVESTATE;
      00031A C0 E0            [24]  601 	PUSH ACC 
      00031C C0 F0            [24]  602 	PUSH B 
      00031E C0 82            [24]  603 	PUSH DPL 
      000320 C0 83            [24]  604 	PUSH DPH 
      000322 C0 D0            [24]  605 	PUSH PSW 
      000324 E5 24            [12]  606 	mov	a,_thread_id
      000326 24 20            [12]  607 	add	a,#_SP_saved
      000328 F8               [12]  608 	mov	r0,a
      000329 A6 81            [24]  609 	mov	@r0,_SP
                                    610 ;	preemptive.c:174: __endasm;
      00032B 75 24 03         [24]  611 	MOV _thread_id, #3
      00032E 75 D0 18         [24]  612 	MOV _PSW, #24
                                    613 ;	preemptive.c:178: if(last_thread == 0){
      000331 E5 2A            [12]  614 	mov	a,_last_thread
      000333 70 09            [24]  615 	jnz	00102$
                                    616 ;	preemptive.c:179: dir = !dir;
      000335 E5 2B            [12]  617 	mov	a,_dir
      000337 B4 01 00         [24]  618 	cjne	a,#0x01,00136$
      00033A                        619 00136$:
      00033A E4               [12]  620 	clr	a
      00033B 33               [12]  621 	rlc	a
      00033C F5 2B            [12]  622 	mov	_dir,a
      00033E                        623 00102$:
                                    624 ;	preemptive.c:181: SP = SP_saved[3];
      00033E 85 23 81         [24]  625 	mov	_SP,(_SP_saved + 0x0003)
                                    626 ;	preemptive.c:182: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      000341 75 27 01         [24]  627 	mov	_i,#0x01
      000344                        628 00113$:
      000344 C3               [12]  629 	clr	c
      000345 74 83            [12]  630 	mov	a,#(0x03 ^ 0x80)
      000347 85 27 F0         [24]  631 	mov	b,_i
      00034A 63 F0 80         [24]  632 	xrl	b,#0x80
      00034D 95 F0            [12]  633 	subb	a,b
      00034F 40 77            [24]  634 	jc	00111$
                                    635 ;	preemptive.c:183: if(dir){
      000351 E5 2B            [12]  636 	mov	a,_dir
      000353 60 08            [24]  637 	jz	00104$
                                    638 ;	preemptive.c:184: tmp2 = (last_thread + i);
      000355 E5 27            [12]  639 	mov	a,_i
      000357 25 2A            [12]  640 	add	a,_last_thread
      000359 F5 29            [12]  641 	mov	_tmp2,a
      00035B 80 09            [24]  642 	sjmp	00105$
      00035D                        643 00104$:
                                    644 ;	preemptive.c:188: tmp2 = last_thread + (MAXTHREADS - i);
      00035D 74 03            [12]  645 	mov	a,#0x03
      00035F C3               [12]  646 	clr	c
      000360 95 27            [12]  647 	subb	a,_i
      000362 25 2A            [12]  648 	add	a,_last_thread
      000364 F5 29            [12]  649 	mov	_tmp2,a
      000366                        650 00105$:
                                    651 ;	preemptive.c:191: tmp2 %= MAXTHREADS;
      000366 75 F0 03         [24]  652 	mov	b,#0x03
      000369 E5 29            [12]  653 	mov	a,_tmp2
      00036B C2 D5            [12]  654 	clr	F0
      00036D 30 E7 04         [24]  655 	jnb	acc.7,00139$
      000370 D2 D5            [12]  656 	setb	F0
      000372 F4               [12]  657 	cpl	a
      000373 04               [12]  658 	inc	a
      000374                        659 00139$:
      000374 84               [48]  660 	div	ab
      000375 E5 F0            [12]  661 	mov	a,b
      000377 30 D5 02         [24]  662 	jnb	F0,00140$
      00037A F4               [12]  663 	cpl	a
      00037B 04               [12]  664 	inc	a
      00037C                        665 00140$:
      00037C F5 29            [12]  666 	mov	_tmp2,a
                                    667 ;	preemptive.c:192: tmp2 = 1 << tmp2;
      00037E 85 29 F0         [24]  668 	mov	b,_tmp2
      000381 05 F0            [12]  669 	inc	b
      000383 74 01            [12]  670 	mov	a,#0x01
      000385 80 02            [24]  671 	sjmp	00143$
      000387                        672 00141$:
      000387 25 E0            [12]  673 	add	a,acc
      000389                        674 00143$:
      000389 D5 F0 FB         [24]  675 	djnz	b,00141$
      00038C F5 29            [12]  676 	mov	_tmp2,a
                                    677 ;	preemptive.c:193: if( thread_bm & tmp2){ // next thread found
      00038E E5 29            [12]  678 	mov	a,_tmp2
      000390 55 25            [12]  679 	anl	a,_thread_bm
      000392 60 2F            [24]  680 	jz	00114$
                                    681 ;	preemptive.c:194: if(dir){
      000394 E5 2B            [12]  682 	mov	a,_dir
      000396 60 08            [24]  683 	jz	00107$
                                    684 ;	preemptive.c:195: tmp = last_thread + i;
      000398 E5 27            [12]  685 	mov	a,_i
      00039A 25 2A            [12]  686 	add	a,_last_thread
      00039C F5 28            [12]  687 	mov	_tmp,a
      00039E 80 09            [24]  688 	sjmp	00108$
      0003A0                        689 00107$:
                                    690 ;	preemptive.c:198: tmp = last_thread + (MAXTHREADS - i);
      0003A0 74 03            [12]  691 	mov	a,#0x03
      0003A2 C3               [12]  692 	clr	c
      0003A3 95 27            [12]  693 	subb	a,_i
      0003A5 25 2A            [12]  694 	add	a,_last_thread
      0003A7 F5 28            [12]  695 	mov	_tmp,a
      0003A9                        696 00108$:
                                    697 ;	preemptive.c:200: tmp %= MAXTHREADS;
      0003A9 75 F0 03         [24]  698 	mov	b,#0x03
      0003AC E5 28            [12]  699 	mov	a,_tmp
      0003AE C2 D5            [12]  700 	clr	F0
      0003B0 30 E7 04         [24]  701 	jnb	acc.7,00146$
      0003B3 D2 D5            [12]  702 	setb	F0
      0003B5 F4               [12]  703 	cpl	a
      0003B6 04               [12]  704 	inc	a
      0003B7                        705 00146$:
      0003B7 84               [48]  706 	div	ab
      0003B8 E5 F0            [12]  707 	mov	a,b
      0003BA 30 D5 02         [24]  708 	jnb	F0,00147$
      0003BD F4               [12]  709 	cpl	a
      0003BE 04               [12]  710 	inc	a
      0003BF                        711 00147$:
      0003BF F5 28            [12]  712 	mov	_tmp,a
                                    713 ;	preemptive.c:201: break;
      0003C1 80 05            [24]  714 	sjmp	00111$
      0003C3                        715 00114$:
                                    716 ;	preemptive.c:182: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      0003C3 05 27            [12]  717 	inc	_i
      0003C5 02 03 44         [24]  718 	ljmp	00113$
      0003C8                        719 00111$:
                                    720 ;	preemptive.c:204: last_thread = tmp;
      0003C8 85 28 2A         [24]  721 	mov	_last_thread,_tmp
                                    722 ;	preemptive.c:205: thread_id = last_thread;
      0003CB 85 2A 24         [24]  723 	mov	_thread_id,_last_thread
                                    724 ;	preemptive.c:207: RESTORESTATE;
      0003CE E5 24            [12]  725 	mov	a,_thread_id
      0003D0 24 20            [12]  726 	add	a,#_SP_saved
      0003D2 F9               [12]  727 	mov	r1,a
      0003D3 87 81            [24]  728 	mov	_SP,@r1
      0003D5 D0 D0            [24]  729 	POP PSW 
      0003D7 D0 83            [24]  730 	POP DPH 
      0003D9 D0 82            [24]  731 	POP DPL 
      0003DB D0 F0            [24]  732 	POP B 
      0003DD D0 E0            [24]  733 	POP ACC 
                                    734 ;	preemptive.c:210: __endasm;
      0003DF 75 AF 01         [24]  735 	MOV _EA, #1
                                    736 ;	preemptive.c:214: __endasm;
      0003E2 32               [24]  737 	RETI
      0003E3 22               [24]  738 	ret
                                    739 	.area CSEG    (CODE)
                                    740 	.area CONST   (CODE)
                                    741 	.area XINIT   (CODE)
                                    742 	.area CABS    (ABS,CODE)
