                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Fri Jan 10 21:00:48 2020
                                      5 ;--------------------------------------------------------
                                      6 	.module cooperative
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
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
                           000020   228 _SP_saved	=	0x0020
                           000024   229 _thread_id	=	0x0024
                           000025   230 _thread_bm	=	0x0025
                           000026   231 _thread_ct	=	0x0026
                           000027   232 _i	=	0x0027
                           000028   233 _tmp	=	0x0028
                           000029   234 _tmp2	=	0x0029
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 	.area	OSEG    (OVR,DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
                                    247 	.area IABS    (ABS,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; bit data
                                    250 ;--------------------------------------------------------
                                    251 	.area BSEG    (BIT)
                                    252 ;--------------------------------------------------------
                                    253 ; paged external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area PSEG    (PAG,XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XSEG    (XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XABS    (ABS,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; external initialized ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XISEG   (XDATA)
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT0 (CODE)
                                    270 	.area GSINIT1 (CODE)
                                    271 	.area GSINIT2 (CODE)
                                    272 	.area GSINIT3 (CODE)
                                    273 	.area GSINIT4 (CODE)
                                    274 	.area GSINIT5 (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 	.area GSFINAL (CODE)
                                    277 	.area CSEG    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; global & static initialisations
                                    280 ;--------------------------------------------------------
                                    281 	.area HOME    (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 ;--------------------------------------------------------
                                    286 ; Home
                                    287 ;--------------------------------------------------------
                                    288 	.area HOME    (CODE)
                                    289 	.area HOME    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; code
                                    292 ;--------------------------------------------------------
                                    293 	.area CSEG    (CODE)
                                    294 ;------------------------------------------------------------
                                    295 ;Allocation info for local variables in function 'Bootstrap'
                                    296 ;------------------------------------------------------------
                                    297 ;	cooperative.c:40: void Bootstrap(void)
                                    298 ;	-----------------------------------------
                                    299 ;	 function Bootstrap
                                    300 ;	-----------------------------------------
      0000FD                        301 _Bootstrap:
                           000007   302 	ar7 = 0x07
                           000006   303 	ar6 = 0x06
                           000005   304 	ar5 = 0x05
                           000004   305 	ar4 = 0x04
                           000003   306 	ar3 = 0x03
                           000002   307 	ar2 = 0x02
                           000001   308 	ar1 = 0x01
                           000000   309 	ar0 = 0x00
                                    310 ;	cooperative.c:43: SP_saved[0] = 0x3f;
      0000FD 75 20 3F         [24]  311 	mov	_SP_saved,#0x3F
                                    312 ;	cooperative.c:44: SP_saved[1] = 0x4f;
      000100 75 21 4F         [24]  313 	mov	(_SP_saved + 0x0001),#0x4F
                                    314 ;	cooperative.c:45: SP_saved[2] = 0x5f;
      000103 75 22 5F         [24]  315 	mov	(_SP_saved + 0x0002),#0x5F
                                    316 ;	cooperative.c:46: SP_saved[3] = 0x6f;
      000106 75 23 6F         [24]  317 	mov	(_SP_saved + 0x0003),#0x6F
                                    318 ;	cooperative.c:47: thread_bm = 0;
      000109 75 25 00         [24]  319 	mov	_thread_bm,#0x00
                                    320 ;	cooperative.c:48: thread_id = -1;
      00010C 75 24 FF         [24]  321 	mov	_thread_id,#0xFF
                                    322 ;	cooperative.c:49: thread_ct = 0;
      00010F 75 26 00         [24]  323 	mov	_thread_ct,#0x00
                                    324 ;	cooperative.c:50: PSW = 0;
      000112 75 D0 00         [24]  325 	mov	_PSW,#0x00
                                    326 ;	cooperative.c:52: thread_id = ThreadCreate(&main);
      000115 90 00 09         [24]  327 	mov	dptr,#_main
      000118 12 01 30         [24]  328 	lcall	_ThreadCreate
      00011B 85 82 24         [24]  329 	mov	_thread_id,dpl
                                    330 ;	cooperative.c:53: RESTORESTATE;
      00011E E5 24            [12]  331 	mov	a,_thread_id
      000120 24 20            [12]  332 	add	a,#_SP_saved
      000122 F9               [12]  333 	mov	r1,a
      000123 87 81            [24]  334 	mov	_SP,@r1
      000125 D0 D0            [24]  335 	POP PSW 
      000127 D0 83            [24]  336 	POP DPH 
      000129 D0 82            [24]  337 	POP DPL 
      00012B D0 F0            [24]  338 	POP B 
      00012D D0 E0            [24]  339 	POP ACC 
      00012F 22               [24]  340 	ret
                                    341 ;------------------------------------------------------------
                                    342 ;Allocation info for local variables in function 'ThreadCreate'
                                    343 ;------------------------------------------------------------
                                    344 ;fp                        Allocated to registers 
                                    345 ;------------------------------------------------------------
                                    346 ;	cooperative.c:55: ThreadID ThreadCreate(FunctionPtr fp)
                                    347 ;	-----------------------------------------
                                    348 ;	 function ThreadCreate
                                    349 ;	-----------------------------------------
      000130                        350 _ThreadCreate:
                                    351 ;	cooperative.c:57: if(thread_ct >= MAXTHREADS)
      000130 C3               [12]  352 	clr	c
      000131 E5 26            [12]  353 	mov	a,_thread_ct
      000133 64 80            [12]  354 	xrl	a,#0x80
      000135 94 84            [12]  355 	subb	a,#0x84
      000137 40 04            [24]  356 	jc	00105$
                                    357 ;	cooperative.c:58: return -1;
      000139 75 82 FF         [24]  358 	mov	dpl,#0xFF
      00013C 22               [24]  359 	ret
      00013D                        360 00105$:
                                    361 ;	cooperative.c:60: for(i = 0; i < MAXTHREADS; i++){
      00013D 75 27 00         [24]  362 	mov	_i,#0x00
      000140                        363 00108$:
      000140 C3               [12]  364 	clr	c
      000141 E5 27            [12]  365 	mov	a,_i
      000143 64 80            [12]  366 	xrl	a,#0x80
      000145 94 84            [12]  367 	subb	a,#0x84
      000147 50 54            [24]  368 	jnc	00103$
                                    369 ;	cooperative.c:61: tmp = 1 << i;
      000149 85 27 F0         [24]  370 	mov	b,_i
      00014C 05 F0            [12]  371 	inc	b
      00014E 74 01            [12]  372 	mov	a,#0x01
      000150 80 02            [24]  373 	sjmp	00128$
      000152                        374 00126$:
      000152 25 E0            [12]  375 	add	a,acc
      000154                        376 00128$:
      000154 D5 F0 FB         [24]  377 	djnz	b,00126$
      000157 F5 28            [12]  378 	mov	_tmp,a
                                    379 ;	cooperative.c:62: if( (thread_bm & tmp) == 0 ){
      000159 E5 28            [12]  380 	mov	a,_tmp
      00015B 55 25            [12]  381 	anl	a,_thread_bm
      00015D 70 3A            [24]  382 	jnz	00109$
                                    383 ;	cooperative.c:64: thread_bm |= tmp; // set the bit to 1
      00015F E5 28            [12]  384 	mov	a,_tmp
      000161 42 25            [12]  385 	orl	_thread_bm,a
                                    386 ;	cooperative.c:65: thread_ct++;
      000163 05 26            [12]  387 	inc	_thread_ct
                                    388 ;	cooperative.c:66: tmp = SP;
      000165 85 81 28         [24]  389 	mov	_tmp,_SP
                                    390 ;	cooperative.c:67: SP = SP_saved[i]; // SP for the created thread
      000168 E5 27            [12]  391 	mov	a,_i
      00016A 24 20            [12]  392 	add	a,#_SP_saved
      00016C F9               [12]  393 	mov	r1,a
      00016D 87 81            [24]  394 	mov	_SP,@r1
                                    395 ;	cooperative.c:68: tmp2 = i << 3; // for PSW.3 and PSW.4
      00016F E5 27            [12]  396 	mov	a,_i
      000171 C4               [12]  397 	swap	a
      000172 03               [12]  398 	rr	a
      000173 54 F8            [12]  399 	anl	a,#0xF8
      000175 F5 29            [12]  400 	mov	_tmp2,a
                                    401 ;	cooperative.c:82: __endasm;
      000177 74 00            [12]  402 	MOV A, #0
      000179 C0 82            [24]  403 	PUSH DPL
      00017B C0 83            [24]  404 	PUSH DPH
      00017D C0 E0            [24]  405 	PUSH ACC
      00017F C0 E0            [24]  406 	PUSH ACC
      000181 C0 E0            [24]  407 	PUSH ACC
      000183 C0 E0            [24]  408 	PUSH ACC
      000185 E5 29            [12]  409 	MOV A, _tmp2
      000187 C0 E0            [24]  410 	PUSH ACC
      000189 74 00            [12]  411 	MOV A, #0x00
                                    412 ;	cooperative.c:83: SP_saved[i] = SP; // save SP for that thread
      00018B E5 27            [12]  413 	mov	a,_i
      00018D 24 20            [12]  414 	add	a,#_SP_saved
      00018F F8               [12]  415 	mov	r0,a
      000190 A6 81            [24]  416 	mov	@r0,_SP
                                    417 ;	cooperative.c:84: SP = tmp; // restore SP
      000192 85 28 81         [24]  418 	mov	_SP,_tmp
                                    419 ;	cooperative.c:85: return i;
      000195 85 27 82         [24]  420 	mov	dpl,_i
      000198 22               [24]  421 	ret
      000199                        422 00109$:
                                    423 ;	cooperative.c:60: for(i = 0; i < MAXTHREADS; i++){
      000199 05 27            [12]  424 	inc	_i
      00019B 80 A3            [24]  425 	sjmp	00108$
      00019D                        426 00103$:
                                    427 ;	cooperative.c:88: return -1;
      00019D 75 82 FF         [24]  428 	mov	dpl,#0xFF
      0001A0 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'ThreadYield'
                                    432 ;------------------------------------------------------------
                                    433 ;	cooperative.c:91: void ThreadYield(void)
                                    434 ;	-----------------------------------------
                                    435 ;	 function ThreadYield
                                    436 ;	-----------------------------------------
      0001A1                        437 _ThreadYield:
                                    438 ;	cooperative.c:93: SAVESTATE;
      0001A1 C0 E0            [24]  439 	PUSH ACC 
      0001A3 C0 F0            [24]  440 	PUSH B 
      0001A5 C0 82            [24]  441 	PUSH DPL 
      0001A7 C0 83            [24]  442 	PUSH DPH 
      0001A9 C0 D0            [24]  443 	PUSH PSW 
      0001AB E5 24            [12]  444 	mov	a,_thread_id
      0001AD 24 20            [12]  445 	add	a,#_SP_saved
      0001AF F8               [12]  446 	mov	r0,a
      0001B0 A6 81            [24]  447 	mov	@r0,_SP
                                    448 ;	cooperative.c:94: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      0001B2 75 27 01         [24]  449 	mov	_i,#0x01
      0001B5                        450 00105$:
      0001B5 C3               [12]  451 	clr	c
      0001B6 74 84            [12]  452 	mov	a,#(0x04 ^ 0x80)
      0001B8 85 27 F0         [24]  453 	mov	b,_i
      0001BB 63 F0 80         [24]  454 	xrl	b,#0x80
      0001BE 95 F0            [12]  455 	subb	a,b
      0001C0 40 44            [24]  456 	jc	00103$
                                    457 ;	cooperative.c:95: tmp = thread_id + i;
      0001C2 E5 27            [12]  458 	mov	a,_i
      0001C4 25 24            [12]  459 	add	a,_thread_id
      0001C6 F5 28            [12]  460 	mov	_tmp,a
                                    461 ;	cooperative.c:96: tmp %= MAXTHREADS;
      0001C8 E5 28            [12]  462 	mov	a,_tmp
      0001CA A2 E7            [12]  463 	mov	c,acc.7
      0001CC 54 03            [12]  464 	anl	a,#0x03
      0001CE 60 04            [24]  465 	jz	00119$
      0001D0 50 02            [24]  466 	jnc	00119$
      0001D2 44 FC            [12]  467 	orl	a,#0xfc
      0001D4                        468 00119$:
      0001D4 F5 28            [12]  469 	mov	_tmp,a
                                    470 ;	cooperative.c:97: tmp = 1 << tmp;
      0001D6 85 28 F0         [24]  471 	mov	b,_tmp
      0001D9 05 F0            [12]  472 	inc	b
      0001DB 74 01            [12]  473 	mov	a,#0x01
      0001DD 80 02            [24]  474 	sjmp	00122$
      0001DF                        475 00120$:
      0001DF 25 E0            [12]  476 	add	a,acc
      0001E1                        477 00122$:
      0001E1 D5 F0 FB         [24]  478 	djnz	b,00120$
      0001E4 F5 28            [12]  479 	mov	_tmp,a
                                    480 ;	cooperative.c:98: if(thread_bm & tmp){ // next thread found
      0001E6 E5 28            [12]  481 	mov	a,_tmp
      0001E8 55 25            [12]  482 	anl	a,_thread_bm
      0001EA 60 16            [24]  483 	jz	00106$
                                    484 ;	cooperative.c:99: thread_id += i;
      0001EC E5 27            [12]  485 	mov	a,_i
      0001EE 25 24            [12]  486 	add	a,_thread_id
      0001F0 F5 24            [12]  487 	mov	_thread_id,a
                                    488 ;	cooperative.c:100: thread_id %= MAXTHREADS;
      0001F2 E5 24            [12]  489 	mov	a,_thread_id
      0001F4 A2 E7            [12]  490 	mov	c,acc.7
      0001F6 54 03            [12]  491 	anl	a,#0x03
      0001F8 60 04            [24]  492 	jz	00124$
      0001FA 50 02            [24]  493 	jnc	00124$
      0001FC 44 FC            [12]  494 	orl	a,#0xfc
      0001FE                        495 00124$:
      0001FE F5 24            [12]  496 	mov	_thread_id,a
                                    497 ;	cooperative.c:101: break;
      000200 80 04            [24]  498 	sjmp	00103$
      000202                        499 00106$:
                                    500 ;	cooperative.c:94: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      000202 05 27            [12]  501 	inc	_i
      000204 80 AF            [24]  502 	sjmp	00105$
      000206                        503 00103$:
                                    504 ;	cooperative.c:104: RESTORESTATE;
      000206 E5 24            [12]  505 	mov	a,_thread_id
      000208 24 20            [12]  506 	add	a,#_SP_saved
      00020A F9               [12]  507 	mov	r1,a
      00020B 87 81            [24]  508 	mov	_SP,@r1
      00020D D0 D0            [24]  509 	POP PSW 
      00020F D0 83            [24]  510 	POP DPH 
      000211 D0 82            [24]  511 	POP DPL 
      000213 D0 F0            [24]  512 	POP B 
      000215 D0 E0            [24]  513 	POP ACC 
      000217 22               [24]  514 	ret
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'ThreadExit'
                                    517 ;------------------------------------------------------------
                                    518 ;	cooperative.c:106: void ThreadExit(void)
                                    519 ;	-----------------------------------------
                                    520 ;	 function ThreadExit
                                    521 ;	-----------------------------------------
      000218                        522 _ThreadExit:
                                    523 ;	cooperative.c:108: tmp = 1 << thread_id;
      000218 85 24 F0         [24]  524 	mov	b,_thread_id
      00021B 05 F0            [12]  525 	inc	b
      00021D 74 01            [12]  526 	mov	a,#0x01
      00021F 80 02            [24]  527 	sjmp	00105$
      000221                        528 00103$:
      000221 25 E0            [12]  529 	add	a,acc
      000223                        530 00105$:
      000223 D5 F0 FB         [24]  531 	djnz	b,00103$
      000226 F5 28            [12]  532 	mov	_tmp,a
                                    533 ;	cooperative.c:109: tmp = ~tmp;
      000228 E5 28            [12]  534 	mov	a,_tmp
      00022A F4               [12]  535 	cpl	a
      00022B F5 28            [12]  536 	mov	_tmp,a
                                    537 ;	cooperative.c:110: thread_bm &= tmp; // clear bitmap
      00022D E5 28            [12]  538 	mov	a,_tmp
      00022F 52 25            [12]  539 	anl	_thread_bm,a
                                    540 ;	cooperative.c:111: thread_ct--;
      000231 15 26            [12]  541 	dec	_thread_ct
                                    542 ;	cooperative.c:112: ThreadYield();
      000233 02 01 A1         [24]  543 	ljmp	_ThreadYield
                                    544 	.area CSEG    (CODE)
                                    545 	.area CONST   (CODE)
                                    546 	.area XINIT   (CODE)
                                    547 	.area CABS    (ABS,CODE)
