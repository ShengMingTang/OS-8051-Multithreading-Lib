                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Apr  3 2018) (Linux)
                                      4 ; This file was generated Wed Dec 11 14:34:40 2019
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
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable items in internal ram 
                                    239 ;--------------------------------------------------------
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; indirectly addressable internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area ISEG    (DATA)
                                    245 ;--------------------------------------------------------
                                    246 ; absolute internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area IABS    (ABS,DATA)
                                    249 	.area IABS    (ABS,DATA)
                                    250 ;--------------------------------------------------------
                                    251 ; bit data
                                    252 ;--------------------------------------------------------
                                    253 	.area BSEG    (BIT)
                                    254 ;--------------------------------------------------------
                                    255 ; paged external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area PSEG    (PAG,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XSEG    (XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; absolute external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XABS    (ABS,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; external initialized ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XISEG   (XDATA)
                                    270 	.area HOME    (CODE)
                                    271 	.area GSINIT0 (CODE)
                                    272 	.area GSINIT1 (CODE)
                                    273 	.area GSINIT2 (CODE)
                                    274 	.area GSINIT3 (CODE)
                                    275 	.area GSINIT4 (CODE)
                                    276 	.area GSINIT5 (CODE)
                                    277 	.area GSINIT  (CODE)
                                    278 	.area GSFINAL (CODE)
                                    279 	.area CSEG    (CODE)
                                    280 ;--------------------------------------------------------
                                    281 ; global & static initialisations
                                    282 ;--------------------------------------------------------
                                    283 	.area HOME    (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; Home
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area HOME    (CODE)
                                    292 ;--------------------------------------------------------
                                    293 ; code
                                    294 ;--------------------------------------------------------
                                    295 	.area CSEG    (CODE)
                                    296 ;------------------------------------------------------------
                                    297 ;Allocation info for local variables in function 'Bootstrap'
                                    298 ;------------------------------------------------------------
                                    299 ;	preemptive.c:41: void Bootstrap(void)
                                    300 ;	-----------------------------------------
                                    301 ;	 function Bootstrap
                                    302 ;	-----------------------------------------
      00011B                        303 _Bootstrap:
                           000007   304 	ar7 = 0x07
                           000006   305 	ar6 = 0x06
                           000005   306 	ar5 = 0x05
                           000004   307 	ar4 = 0x04
                           000003   308 	ar3 = 0x03
                           000002   309 	ar2 = 0x02
                           000001   310 	ar1 = 0x01
                           000000   311 	ar0 = 0x00
                                    312 ;	preemptive.c:45: __endasm;
      00011B 75 AF 00         [24]  313 	MOV _EA, #0
                                    314 ;	preemptive.c:47: SP_saved[0] = 0x3f;
      00011E 75 20 3F         [24]  315 	mov	_SP_saved,#0x3F
                                    316 ;	preemptive.c:48: SP_saved[1] = 0x4f;
      000121 75 21 4F         [24]  317 	mov	(_SP_saved + 0x0001),#0x4F
                                    318 ;	preemptive.c:49: SP_saved[2] = 0x5f;
      000124 75 22 5F         [24]  319 	mov	(_SP_saved + 0x0002),#0x5F
                                    320 ;	preemptive.c:50: SP_saved[3] = 0x6f;
      000127 75 23 6F         [24]  321 	mov	(_SP_saved + 0x0003),#0x6F
                                    322 ;	preemptive.c:51: thread_bm = 0;
      00012A 75 25 00         [24]  323 	mov	_thread_bm,#0x00
                                    324 ;	preemptive.c:52: thread_id = -1;
      00012D 75 24 FF         [24]  325 	mov	_thread_id,#0xFF
                                    326 ;	preemptive.c:53: thread_ct = 0;
      000130 75 26 00         [24]  327 	mov	_thread_ct,#0x00
                                    328 ;	preemptive.c:55: TMOD = 0;
      000133 75 89 00         [24]  329 	mov	_TMOD,#0x00
                                    330 ;	preemptive.c:56: IE = 0x82;
      000136 75 A8 82         [24]  331 	mov	_IE,#0x82
                                    332 ;	preemptive.c:57: TR0 = 1;
      000139 D2 8C            [12]  333 	setb	_TR0
                                    334 ;	preemptive.c:58: PSW = 0;
      00013B 75 D0 00         [24]  335 	mov	_PSW,#0x00
                                    336 ;	preemptive.c:61: thread_id = ThreadCreate(&main);
      00013E 90 00 18         [24]  337 	mov	dptr,#_main
      000141 12 01 5F         [24]  338 	lcall	_ThreadCreate
      000144 85 82 24         [24]  339 	mov	_thread_id,dpl
                                    340 ;	preemptive.c:63: last_thread = 0;
      000147 75 2A 00         [24]  341 	mov	_last_thread,#0x00
                                    342 ;	preemptive.c:65: RESTORESTATE;
      00014A E5 24            [12]  343 	mov	a,_thread_id
      00014C 24 20            [12]  344 	add	a,#_SP_saved
      00014E F9               [12]  345 	mov	r1,a
      00014F 87 81            [24]  346 	mov	_SP,@r1
      000151 D0 D0            [24]  347 	POP PSW 
      000153 D0 83            [24]  348 	POP DPH 
      000155 D0 82            [24]  349 	POP DPL 
      000157 D0 F0            [24]  350 	POP B 
      000159 D0 E0            [24]  351 	POP ACC 
                                    352 ;	preemptive.c:69: __endasm;
      00015B 75 AF 01         [24]  353 	MOV _EA, #1
      00015E 22               [24]  354 	ret
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'ThreadCreate'
                                    357 ;------------------------------------------------------------
                                    358 ;fp                        Allocated to registers 
                                    359 ;------------------------------------------------------------
                                    360 ;	preemptive.c:71: ThreadID ThreadCreate(FunctionPtr fp)
                                    361 ;	-----------------------------------------
                                    362 ;	 function ThreadCreate
                                    363 ;	-----------------------------------------
      00015F                        364 _ThreadCreate:
                                    365 ;	preemptive.c:75: __endasm;
      00015F 75 AF 00         [24]  366 	MOV _EA, #0
                                    367 ;	preemptive.c:77: if(thread_ct >= MAXTHREADS){
      000162 C3               [12]  368 	clr	c
      000163 E5 26            [12]  369 	mov	a,_thread_ct
      000165 64 80            [12]  370 	xrl	a,#0x80
      000167 94 83            [12]  371 	subb	a,#0x83
      000169 40 07            [24]  372 	jc	00105$
                                    373 ;	preemptive.c:80: __endasm;
      00016B 75 AF 01         [24]  374 	MOV _EA, #1
                                    375 ;	preemptive.c:82: return -1;
      00016E 75 82 FF         [24]  376 	mov	dpl,#0xFF
      000171 22               [24]  377 	ret
      000172                        378 00105$:
                                    379 ;	preemptive.c:85: for(i = 0; i < MAXTHREADS; i++){
      000172 75 27 00         [24]  380 	mov	_i,#0x00
      000175                        381 00108$:
      000175 C3               [12]  382 	clr	c
      000176 E5 27            [12]  383 	mov	a,_i
      000178 64 80            [12]  384 	xrl	a,#0x80
      00017A 94 83            [12]  385 	subb	a,#0x83
      00017C 50 57            [24]  386 	jnc	00103$
                                    387 ;	preemptive.c:86: tmp = 1 << i;
      00017E 85 27 F0         [24]  388 	mov	b,_i
      000181 05 F0            [12]  389 	inc	b
      000183 74 01            [12]  390 	mov	a,#0x01
      000185 80 02            [24]  391 	sjmp	00128$
      000187                        392 00126$:
      000187 25 E0            [12]  393 	add	a,acc
      000189                        394 00128$:
      000189 D5 F0 FB         [24]  395 	djnz	b,00126$
      00018C F5 28            [12]  396 	mov	_tmp,a
                                    397 ;	preemptive.c:87: if( (thread_bm & tmp) == 0 ){
      00018E E5 28            [12]  398 	mov	a,_tmp
      000190 55 25            [12]  399 	anl	a,_thread_bm
      000192 70 3D            [24]  400 	jnz	00109$
                                    401 ;	preemptive.c:89: thread_bm |= tmp; // set the bit to 1
      000194 E5 28            [12]  402 	mov	a,_tmp
      000196 42 25            [12]  403 	orl	_thread_bm,a
                                    404 ;	preemptive.c:90: thread_ct++;
      000198 05 26            [12]  405 	inc	_thread_ct
                                    406 ;	preemptive.c:91: tmp = SP;
      00019A 85 81 28         [24]  407 	mov	_tmp,_SP
                                    408 ;	preemptive.c:92: SP = SP_saved[i]; // SP for the created thread
      00019D E5 27            [12]  409 	mov	a,_i
      00019F 24 20            [12]  410 	add	a,#_SP_saved
      0001A1 F9               [12]  411 	mov	r1,a
      0001A2 87 81            [24]  412 	mov	_SP,@r1
                                    413 ;	preemptive.c:93: tmp2 = i << 3; // for PSW.3 and PSW.4
      0001A4 E5 27            [12]  414 	mov	a,_i
      0001A6 C4               [12]  415 	swap	a
      0001A7 03               [12]  416 	rr	a
      0001A8 54 F8            [12]  417 	anl	a,#0xF8
      0001AA F5 29            [12]  418 	mov	_tmp2,a
                                    419 ;	preemptive.c:107: __endasm;
      0001AC 74 00            [12]  420 	MOV A, #0
      0001AE C0 82            [24]  421 	PUSH DPL
      0001B0 C0 83            [24]  422 	PUSH DPH
      0001B2 C0 E0            [24]  423 	PUSH ACC
      0001B4 C0 E0            [24]  424 	PUSH ACC
      0001B6 C0 E0            [24]  425 	PUSH ACC
      0001B8 C0 E0            [24]  426 	PUSH ACC
      0001BA E5 29            [12]  427 	MOV A, _tmp2
      0001BC C0 E0            [24]  428 	PUSH ACC
      0001BE 74 00            [12]  429 	MOV A, #0x00
                                    430 ;	preemptive.c:108: SP_saved[i] = SP; // save SP for that thread
      0001C0 E5 27            [12]  431 	mov	a,_i
      0001C2 24 20            [12]  432 	add	a,#_SP_saved
      0001C4 F8               [12]  433 	mov	r0,a
      0001C5 A6 81            [24]  434 	mov	@r0,_SP
                                    435 ;	preemptive.c:109: SP = tmp; // restore SP
      0001C7 85 28 81         [24]  436 	mov	_SP,_tmp
                                    437 ;	preemptive.c:113: __endasm;
      0001CA 75 AF 01         [24]  438 	MOV _EA, #1
                                    439 ;	preemptive.c:115: return i;
      0001CD 85 27 82         [24]  440 	mov	dpl,_i
      0001D0 22               [24]  441 	ret
      0001D1                        442 00109$:
                                    443 ;	preemptive.c:85: for(i = 0; i < MAXTHREADS; i++){
      0001D1 05 27            [12]  444 	inc	_i
      0001D3 80 A0            [24]  445 	sjmp	00108$
      0001D5                        446 00103$:
                                    447 ;	preemptive.c:120: __endasm;
      0001D5 75 AF 01         [24]  448 	MOV _EA, #1
                                    449 ;	preemptive.c:121: return -1;
      0001D8 75 82 FF         [24]  450 	mov	dpl,#0xFF
      0001DB 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'ThreadYield'
                                    454 ;------------------------------------------------------------
                                    455 ;	preemptive.c:124: void ThreadYield(void)
                                    456 ;	-----------------------------------------
                                    457 ;	 function ThreadYield
                                    458 ;	-----------------------------------------
      0001DC                        459 _ThreadYield:
                                    460 ;	preemptive.c:128: __endasm;
      0001DC 75 AF 00         [24]  461 	MOV _EA, #0
                                    462 ;	preemptive.c:129: SAVESTATE;
      0001DF C0 E0            [24]  463 	PUSH ACC 
      0001E1 C0 F0            [24]  464 	PUSH B 
      0001E3 C0 82            [24]  465 	PUSH DPL 
      0001E5 C0 83            [24]  466 	PUSH DPH 
      0001E7 C0 D0            [24]  467 	PUSH PSW 
      0001E9 E5 24            [12]  468 	mov	a,_thread_id
      0001EB 24 20            [12]  469 	add	a,#_SP_saved
      0001ED F8               [12]  470 	mov	r0,a
      0001EE A6 81            [24]  471 	mov	@r0,_SP
                                    472 ;	preemptive.c:130: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      0001F0 75 27 01         [24]  473 	mov	_i,#0x01
      0001F3                        474 00105$:
      0001F3 C3               [12]  475 	clr	c
      0001F4 74 83            [12]  476 	mov	a,#(0x03 ^ 0x80)
      0001F6 85 27 F0         [24]  477 	mov	b,_i
      0001F9 63 F0 80         [24]  478 	xrl	b,#0x80
      0001FC 95 F0            [12]  479 	subb	a,b
      0001FE 40 58            [24]  480 	jc	00103$
                                    481 ;	preemptive.c:131: tmp = thread_id + i;
      000200 E5 27            [12]  482 	mov	a,_i
      000202 25 24            [12]  483 	add	a,_thread_id
      000204 F5 28            [12]  484 	mov	_tmp,a
                                    485 ;	preemptive.c:132: tmp %= MAXTHREADS;
      000206 75 F0 03         [24]  486 	mov	b,#0x03
      000209 E5 28            [12]  487 	mov	a,_tmp
      00020B C2 D5            [12]  488 	clr	F0
      00020D 30 E7 04         [24]  489 	jnb	acc.7,00119$
      000210 D2 D5            [12]  490 	setb	F0
      000212 F4               [12]  491 	cpl	a
      000213 04               [12]  492 	inc	a
      000214                        493 00119$:
      000214 84               [48]  494 	div	ab
      000215 E5 F0            [12]  495 	mov	a,b
      000217 30 D5 02         [24]  496 	jnb	F0,00120$
      00021A F4               [12]  497 	cpl	a
      00021B 04               [12]  498 	inc	a
      00021C                        499 00120$:
      00021C F5 28            [12]  500 	mov	_tmp,a
                                    501 ;	preemptive.c:133: tmp = 1 << tmp;
      00021E 85 28 F0         [24]  502 	mov	b,_tmp
      000221 05 F0            [12]  503 	inc	b
      000223 74 01            [12]  504 	mov	a,#0x01
      000225 80 02            [24]  505 	sjmp	00123$
      000227                        506 00121$:
      000227 25 E0            [12]  507 	add	a,acc
      000229                        508 00123$:
      000229 D5 F0 FB         [24]  509 	djnz	b,00121$
      00022C F5 28            [12]  510 	mov	_tmp,a
                                    511 ;	preemptive.c:134: if(thread_bm & tmp){ // next thread found
      00022E E5 28            [12]  512 	mov	a,_tmp
      000230 55 25            [12]  513 	anl	a,_thread_bm
      000232 60 20            [24]  514 	jz	00106$
                                    515 ;	preemptive.c:135: thread_id += i;
      000234 E5 27            [12]  516 	mov	a,_i
      000236 25 24            [12]  517 	add	a,_thread_id
      000238 F5 24            [12]  518 	mov	_thread_id,a
                                    519 ;	preemptive.c:136: thread_id %= MAXTHREADS;
      00023A 75 F0 03         [24]  520 	mov	b,#0x03
      00023D E5 24            [12]  521 	mov	a,_thread_id
      00023F C2 D5            [12]  522 	clr	F0
      000241 30 E7 04         [24]  523 	jnb	acc.7,00125$
      000244 D2 D5            [12]  524 	setb	F0
      000246 F4               [12]  525 	cpl	a
      000247 04               [12]  526 	inc	a
      000248                        527 00125$:
      000248 84               [48]  528 	div	ab
      000249 E5 F0            [12]  529 	mov	a,b
      00024B 30 D5 02         [24]  530 	jnb	F0,00126$
      00024E F4               [12]  531 	cpl	a
      00024F 04               [12]  532 	inc	a
      000250                        533 00126$:
      000250 F5 24            [12]  534 	mov	_thread_id,a
                                    535 ;	preemptive.c:137: break;
      000252 80 04            [24]  536 	sjmp	00103$
      000254                        537 00106$:
                                    538 ;	preemptive.c:130: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      000254 05 27            [12]  539 	inc	_i
      000256 80 9B            [24]  540 	sjmp	00105$
      000258                        541 00103$:
                                    542 ;	preemptive.c:140: RESTORESTATE;
      000258 E5 24            [12]  543 	mov	a,_thread_id
      00025A 24 20            [12]  544 	add	a,#_SP_saved
      00025C F9               [12]  545 	mov	r1,a
      00025D 87 81            [24]  546 	mov	_SP,@r1
      00025F D0 D0            [24]  547 	POP PSW 
      000261 D0 83            [24]  548 	POP DPH 
      000263 D0 82            [24]  549 	POP DPL 
      000265 D0 F0            [24]  550 	POP B 
      000267 D0 E0            [24]  551 	POP ACC 
                                    552 ;	preemptive.c:143: __endasm;
      000269 75 AF 01         [24]  553 	MOV _EA, #1
      00026C 22               [24]  554 	ret
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function 'ThreadExit'
                                    557 ;------------------------------------------------------------
                                    558 ;	preemptive.c:145: void ThreadExit(void)
                                    559 ;	-----------------------------------------
                                    560 ;	 function ThreadExit
                                    561 ;	-----------------------------------------
      00026D                        562 _ThreadExit:
                                    563 ;	preemptive.c:149: __endasm;
      00026D 75 AF 00         [24]  564 	MOV _EA, #0
                                    565 ;	preemptive.c:150: tmp = 1 << thread_id;
      000270 85 24 F0         [24]  566 	mov	b,_thread_id
      000273 05 F0            [12]  567 	inc	b
      000275 74 01            [12]  568 	mov	a,#0x01
      000277 80 02            [24]  569 	sjmp	00105$
      000279                        570 00103$:
      000279 25 E0            [12]  571 	add	a,acc
      00027B                        572 00105$:
      00027B D5 F0 FB         [24]  573 	djnz	b,00103$
      00027E F5 28            [12]  574 	mov	_tmp,a
                                    575 ;	preemptive.c:151: tmp = ~tmp;
      000280 E5 28            [12]  576 	mov	a,_tmp
      000282 F4               [12]  577 	cpl	a
      000283 F5 28            [12]  578 	mov	_tmp,a
                                    579 ;	preemptive.c:152: thread_bm &= tmp; // clear bitmap
      000285 E5 28            [12]  580 	mov	a,_tmp
      000287 52 25            [12]  581 	anl	_thread_bm,a
                                    582 ;	preemptive.c:153: thread_ct--;
      000289 15 26            [12]  583 	dec	_thread_ct
                                    584 ;	preemptive.c:154: ThreadYield();
      00028B 12 01 DC         [24]  585 	lcall	_ThreadYield
                                    586 ;	preemptive.c:157: __endasm;
      00028E 75 AF 01         [24]  587 	MOV _EA, #1
      000291 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'myTimer0Handler'
                                    591 ;------------------------------------------------------------
                                    592 ;	preemptive.c:160: void myTimer0Handler(void)
                                    593 ;	-----------------------------------------
                                    594 ;	 function myTimer0Handler
                                    595 ;	-----------------------------------------
      000292                        596 _myTimer0Handler:
                                    597 ;	preemptive.c:164: __endasm;
      000292 75 AF 00         [24]  598 	MOV _EA, #0
                                    599 ;	preemptive.c:165: SAVESTATE;
      000295 C0 E0            [24]  600 	PUSH ACC 
      000297 C0 F0            [24]  601 	PUSH B 
      000299 C0 82            [24]  602 	PUSH DPL 
      00029B C0 83            [24]  603 	PUSH DPH 
      00029D C0 D0            [24]  604 	PUSH PSW 
      00029F E5 24            [12]  605 	mov	a,_thread_id
      0002A1 24 20            [12]  606 	add	a,#_SP_saved
      0002A3 F8               [12]  607 	mov	r0,a
      0002A4 A6 81            [24]  608 	mov	@r0,_SP
                                    609 ;	preemptive.c:171: __endasm;
      0002A6 75 24 03         [24]  610 	MOV _thread_id, #3
      0002A9 75 D0 18         [24]  611 	MOV _PSW, #24
                                    612 ;	preemptive.c:175: SP = SP_saved[3];
      0002AC 85 23 81         [24]  613 	mov	_SP,(_SP_saved + 0x0003)
                                    614 ;	preemptive.c:176: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      0002AF 75 27 01         [24]  615 	mov	_i,#0x01
      0002B2                        616 00105$:
      0002B2 C3               [12]  617 	clr	c
      0002B3 74 83            [12]  618 	mov	a,#(0x03 ^ 0x80)
      0002B5 85 27 F0         [24]  619 	mov	b,_i
      0002B8 63 F0 80         [24]  620 	xrl	b,#0x80
      0002BB 95 F0            [12]  621 	subb	a,b
      0002BD 40 58            [24]  622 	jc	00103$
                                    623 ;	preemptive.c:177: tmp2 = (last_thread + i);
      0002BF E5 27            [12]  624 	mov	a,_i
      0002C1 25 2A            [12]  625 	add	a,_last_thread
      0002C3 F5 29            [12]  626 	mov	_tmp2,a
                                    627 ;	preemptive.c:178: tmp2 %= MAXTHREADS;
      0002C5 75 F0 03         [24]  628 	mov	b,#0x03
      0002C8 E5 29            [12]  629 	mov	a,_tmp2
      0002CA C2 D5            [12]  630 	clr	F0
      0002CC 30 E7 04         [24]  631 	jnb	acc.7,00119$
      0002CF D2 D5            [12]  632 	setb	F0
      0002D1 F4               [12]  633 	cpl	a
      0002D2 04               [12]  634 	inc	a
      0002D3                        635 00119$:
      0002D3 84               [48]  636 	div	ab
      0002D4 E5 F0            [12]  637 	mov	a,b
      0002D6 30 D5 02         [24]  638 	jnb	F0,00120$
      0002D9 F4               [12]  639 	cpl	a
      0002DA 04               [12]  640 	inc	a
      0002DB                        641 00120$:
      0002DB F5 29            [12]  642 	mov	_tmp2,a
                                    643 ;	preemptive.c:179: tmp2 = 1 << tmp2;
      0002DD 85 29 F0         [24]  644 	mov	b,_tmp2
      0002E0 05 F0            [12]  645 	inc	b
      0002E2 74 01            [12]  646 	mov	a,#0x01
      0002E4 80 02            [24]  647 	sjmp	00123$
      0002E6                        648 00121$:
      0002E6 25 E0            [12]  649 	add	a,acc
      0002E8                        650 00123$:
      0002E8 D5 F0 FB         [24]  651 	djnz	b,00121$
      0002EB F5 29            [12]  652 	mov	_tmp2,a
                                    653 ;	preemptive.c:180: if( thread_bm & tmp2){ // next thread found
      0002ED E5 29            [12]  654 	mov	a,_tmp2
      0002EF 55 25            [12]  655 	anl	a,_thread_bm
      0002F1 60 20            [24]  656 	jz	00106$
                                    657 ;	preemptive.c:181: tmp = last_thread + i;
      0002F3 E5 27            [12]  658 	mov	a,_i
      0002F5 25 2A            [12]  659 	add	a,_last_thread
      0002F7 F5 28            [12]  660 	mov	_tmp,a
                                    661 ;	preemptive.c:182: tmp %= MAXTHREADS;
      0002F9 75 F0 03         [24]  662 	mov	b,#0x03
      0002FC E5 28            [12]  663 	mov	a,_tmp
      0002FE C2 D5            [12]  664 	clr	F0
      000300 30 E7 04         [24]  665 	jnb	acc.7,00125$
      000303 D2 D5            [12]  666 	setb	F0
      000305 F4               [12]  667 	cpl	a
      000306 04               [12]  668 	inc	a
      000307                        669 00125$:
      000307 84               [48]  670 	div	ab
      000308 E5 F0            [12]  671 	mov	a,b
      00030A 30 D5 02         [24]  672 	jnb	F0,00126$
      00030D F4               [12]  673 	cpl	a
      00030E 04               [12]  674 	inc	a
      00030F                        675 00126$:
      00030F F5 28            [12]  676 	mov	_tmp,a
                                    677 ;	preemptive.c:183: break;
      000311 80 04            [24]  678 	sjmp	00103$
      000313                        679 00106$:
                                    680 ;	preemptive.c:176: for(i = 1; i <= MAXTHREADS; i++){ // start from next thread
      000313 05 27            [12]  681 	inc	_i
      000315 80 9B            [24]  682 	sjmp	00105$
      000317                        683 00103$:
                                    684 ;	preemptive.c:186: last_thread = tmp;
      000317 85 28 2A         [24]  685 	mov	_last_thread,_tmp
                                    686 ;	preemptive.c:187: thread_id = last_thread;
      00031A 85 2A 24         [24]  687 	mov	_thread_id,_last_thread
                                    688 ;	preemptive.c:188: RESTORESTATE;
      00031D E5 24            [12]  689 	mov	a,_thread_id
      00031F 24 20            [12]  690 	add	a,#_SP_saved
      000321 F9               [12]  691 	mov	r1,a
      000322 87 81            [24]  692 	mov	_SP,@r1
      000324 D0 D0            [24]  693 	POP PSW 
      000326 D0 83            [24]  694 	POP DPH 
      000328 D0 82            [24]  695 	POP DPL 
      00032A D0 F0            [24]  696 	POP B 
      00032C D0 E0            [24]  697 	POP ACC 
                                    698 ;	preemptive.c:191: __endasm;
      00032E 75 AF 01         [24]  699 	MOV _EA, #1
                                    700 ;	preemptive.c:195: __endasm;
      000331 32               [24]  701 	RETI
      000332 22               [24]  702 	ret
                                    703 	.area CSEG    (CODE)
                                    704 	.area CONST   (CODE)
                                    705 	.area XINIT   (CODE)
                                    706 	.area CABS    (ABS,CODE)
