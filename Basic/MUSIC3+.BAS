0 'MUSIC3+                      ** WRITTEN BY GEORGE QUELHORST  ** COPYRIGHT (C) APRIL 1991     ** BY FALSOFT, INC.             ** RAINBOW MAGAZINE
1 CLEAR1380,&H4C8B:RGB:POKE59078,141:PALETTE0,56:PALETTE1,32:PALETTE2,63:PALETTE3,8:HBUFF1,1367:HBUFF2,2719:POKE65497,.:POKE41598,255:ONBRKGOTO132:Q=2:WIDTH80:CLS1:POKE65434,56:ATTR0,0:POKE&HF80F,0:POKE&HF84F,0:POKE&HF89C,0:POKE140,175
2 ONERRGOTO133:TT=17113:A1=19712:A2=20099:A3=20100:A4=20257:A5=20258:A6=19671:A7=19682:A8=20173:A9=20128:DEFUSR0=A3:DEFUSR1=A6:DEFUSR2=19627:DEFUSR3=19596:IFPEEK(20100)=22ANDPEEK(20101)=0ANDPEEK(20102)=136ANDPEEK(20103)=134 THEN5
3 LOCATE26,12:PRINT"POKING ML PROGRAM INTO MEMORY":FORT=1TO41:READA$:NEXTT:FORD=A1 TO A4:READT$:POKED,VAL("&H"+T$):NEXT:FORD=A6 TO A7:READP$:POKED,VAL("&H"+P$)
4 NEXT:FORT=19596TO19622:READP$:POKET,VAL("&H"+P$):NEXTT:FORT=19627TO19642:READP$:POKET,VAL("&H"+P$):NEXTT:C=USR1(0)
5 D=PEEK(2394):CLS1:LOCATE33,12:PRINT"DRAWING SCREEN":POKE59065,57:HSCREEN4:POKE59065,32:HCLS0:HCOLOR1:HPRINT(12,0),"MUSIC+ FOR THE COLOR COMPUTER III. BY: GEORGE QUELLHORST":EXEC43350:M=A5:ME=A5:LM=A5:A=3:P1=65496:P2=65497:GOSUB106
6 H=0:V=52:HCOLOR2:FORT=1TO5:V=V+8:GOSUB113:NEXTT:V=100:FORT=1TO5:V=V+8:GOSUB113:NEXTT:HLINE(0,60)-(0,140),PSET:HLINE(640,60)-(640,140),PSET:HCOLOR3:HDRAW"BM15,95"+TC$:HDRAW"BM7,138"+BC$:HCOLOR3:HPRINT(0,20),"Tempo:":HGET(40,8)-(72,159),1
7 HGET(0,40)-(640,56),2:HLINE(86,160)-(86,169),PSET:HLINE(239,160)-(239,169),PSET:HLINE(376,160)-(376,169),PSET:HLINE(510,160)-(510,169),PSET:HPRINT(48,20),"Crsr Note:":HCOLOR1:HPRINT(59,20),CN$:HCOLOR3:HPRINT(65,20),"Last Note: 0001"
8 GOSUB50:HPRINT(12,20),"Cursor mem: 20258":HPRINT(31,20),"High Mem:":HLINE(0,169)-(640,169),PSET:HCOLOR1:HPRINT(0,19),P1$:X=55:PX=90:Y=104:PY=108:HDRAW"BM55,104"+D$:GOSUB130:GOSUB110:HCOLOR1:HPRINT(0,19),"Drv.":HPRINT(3,19),STR$(D)
9 POKE59108,230:HSCREEN4:POKE65434,56:POKE59108,231:IFPEEK(A5)>0THENGOSUB114:GOSUB64:X=55:Y=104:GOSUB115
10 P$=INKEY$:IFP$="0"ORP$="1"ORP$="2"ORP$="3"THEN137ELSE11
11 P=INSTR(1,"gIPCLTSMDK@JW "+CHR$(4),P$)
12 IFP$=""THEN13ELSEON P GOTO 112,61,51,54,58,46,59,78,61,83,52,74,146,22,102
13 IFPEEK(343)=247THENPX=X:PY=Y:X=X-35:ME=M:M=M-5:GOSUB118:IFX=20THENRB=1 ELSE19
14 IFME=20258ANDRB=1 THENGOSUB101:M=A5:X=55:PY=90:RB=0:GOTO10ELSEIFRB=1 THEN99
15 IFPEEK(344)=247ANDPEEK(M)>0 THENPX=X:PY=Y:X=X+35:ME=M:M=M+5:GOSUB118:IFX=650THENRA=1ELSE19
16 IFRA=1 ANDM<32753 THENGOSUB114:RA=0:X=55:GOSUB129:SM=SM+65:EM=SM+80:X=55:GOSUB64:X=195:GOSUB118
17 IFPEEK(341)=247THENGOSUB104:PX=X:PY=Y:Y=Y-4:IFY=28 THENY=32:PY=36ELSE19
18 IFPEEK(342)=247THENGOSUB104:PX=X:PY=Y:Y=Y+4:IFY=164THENY=160:PY=156
19 IFHPOINT(X+5,Y-4)=3 THENHCOLOR2:GOSUB41:HDRAWD$ ELSEHCOLOR1:GOSUB41:HDRAWD$
20 IFHPOINT(PX+5,PY-4)=3 THENHCOLOR3:HDRAW"BM"+STR$(PX)+","+STR$(PY)+D$ ELSEHCOLOR0:HDRAW"BM"+STR$(PX)+","+STR$(PY)+D$
21 GOTO10
22 P$=INKEY$
23 IFP$="R"THENQ=1:GOSUB131
24 IFQ=1THENY=104:HCOLOR0:GOSUB41:HDRAWR$(7):HCOLOR3:GOSUB41:HDRAWR$(A)
25 IFP$="N"THENHCOLOR0:HDRAW"BM"+STR$(X)+",104"+R$(7):Q=2
26 IFP$=CHR$(13)THEN35
27 IFPEEK(343)=247THENA=A+1:IFA=8THENA=1
28 IFPEEK(344)=247THENA=A-1:IFA=0THENA=7
29 IFQ=2ANDHPOINT(X-3,101)=3 THENHCOLOR0:HDRAW"BM"+STR$(X)+",104"+R$(7) ELSEIFQ=2THENGOSUB42:HCOLOR3:GOSUB41:HDRAWN$(A)
30 IFQ=2ANDPEEK(343)=191 THENGOSUB43:HCOLOR3:GOSUB41:HDRAWF$
31 IFQ=2ANDPEEK(344)=191 THENGOSUB43:HCOLOR3:GOSUB41:HDRAWS$
32 IFQ=2ANDPEEK(342)=247 THENGOSUB43
33 IFP$=CHR$(12)ANDQ=2 THENGOSUB42:GOSUB43:T=Y:GOSUB45:GOTO35
34 GOTO22
35 W=0:FORT=32TO160STEP4:IFHPOINT(X-2,T-4)=3 THENW=W+1:N(W)=T
36 IFW=5 THENHCOLOR0:EXEC:GOSUB42:GOSUB43:T=Y:GOSUB45:GOTO35
37 NEXTT:TI=INT(128/2^(A-1)+.5):POKEM,TI:FORS=1TO4:IFN(S)=0THENPO(S)=0:GOTO39 ELSEP(S)=N(S)/4-8:PO(S)=VAL(MID$(NO$,P(S)*4+1,3))
38 IFHPOINT(X-5,N(S)-3)=3 THENPO(S)=PO(S)+2ELSEIFHPOINT(X-6,N(S)-5)=3 THENPO(S)=PO(S)-2:T=N(S):HCOLOR0:GOSUB44:HDRAWN$(A):GOSUB44:HDRAWF$:GOSUB45
39 POKEM+S,PO(S):N(S)=0:NEXTS:SM=M:EM=M:GOSUB131:X1=X:GOSUB64:X=X1
40 Q=2:EXEC:GOTO10
41 HDRAW"BM"+STR$(X)+","+STR$(Y):RETURN
42 HCOLOR0:GOSUB41:HDRAWN$(7):RETURN
43 HCOLOR0:GOSUB41:HDRAWF$:GOSUB41:HDRAWS$:RETURN
44 HDRAW"BM"+STR$(X)+","+STR$(T):RETURN
45 HCOLOR2:IFHPOINT(X-8,T-4)=2 THENHLINE(X-3,T-4)-(X+15,T-4),PSET:RETURNELSERETURN
46 EXEC:H=7:V=20:HPUT(54,159)-(82,167),2,PRESET
47 GOSUB89:H=6:TE=LO:IFTE=0THENTE=1
48 TE=INT(TT/TE):IFTE<18THENTE=18ELSEIFTE>600THENTE=600
49 T1=INT(TE/256):T2=TE-256*T1:POKEA8,T1:POKEA8+1,T2:LO$="":HPUT(54,159)-(82,167),2,PSET:GOSUB50:GOTO10
50 HCOLOR3:T9=256*PEEK(A8)+PEEK(A8+1):T9=INT(TT/T9):HPRINT(6,20),T9:RETURN
51 POKEA9,0:POKEA9+1,128:C=USR(0):GOTO10
52 ZT=INT((M-A5)/5)+1:GOSUB53:C=USR0(0):GOTO10
53 ZT=128+5*(ZT-1):ZU=INT(ZT/4096):ZV=ZT-4096*ZU:ZW=INT(ZV/256):ZL=ZV-256*ZW:ZU=16*ZU+ZW:POKEA9,ZU:POKEA9+1,ZL:RETURN
54 GOSUB101:GOSUB130:GOSUB125
55 P$=INKEY$:IFP$=""THEN55ELSEEXEC
56 IFP$=CHR$(13)THENGOSUB130:GOSUB110:GOTO10
57 IFP$="\"THENX=55:GOSUB129:C=USR1(0):HCOLOR0:X=55:Y=104:M=A5:LM=A5:DE=A5:GOSUB130:GOSUB110:GOSUB118:GOTO10ELSE55
58 IFPEEK(A5)<>0 THENGOSUB101:GOTO10 ELSEGOSUB130:GOSUB126:H=40:V=32:GOSUB94:POKEP1,.:LOADMLO$:LO$="":POKE&HFF40,0:POKEP2,.:GOSUB130:GOSUB110:HPUT(54,159)-(82,167),2,PSET:GOSUB50:GOSUB114:X=55:GOSUB64:M=A5:GOSUB115:X=55:Y=104:GOTO10
59 IFPEEK(A5)=0THENGOSUB101:GOTO10ELSEGOSUB130:GOSUB126:H=40:V=32:LO$="":GOSUB94
60 FORQ1=LM+5 TO LM+10:POKEQ1,0:NEXTQ1:POKEA9,0:POKEA9+1,128:POKEP1,.:VERIFYON:SAVEMLO$,A1,Q1,A3:POKE&HFF40,0:LO$="":GOSUB130:GOSUB110:POKEP2,.:GOTO10
61 EXEC:X1=X:SM=M:K=M:LC=(INT(X-55)/35)+2:LC=(17-LC):EM=K+(LC*5)+9:GOSUB129:IFP=2 THEN63
62 D1=INT((LM+4)/256):D2=(LM+4)-(D1*256):POKE&H4CBD,D1:POKE&H4CBE,D2:C=USR2(M):X=X1:EM=EM-4:GOSUB64:X=X1:Y=104:M=K:LM=LM-5:GOSUB118:GOTO10
63 HCOLOR1:LM=LM+5:IFLM>32753THEN10ELSE D1=INT(M/256):D2=M-(D1*256):POKE&H4CA8,D1:POKE&H4CA9,D2:C=USR3(LM):GOSUB64:X=X1:Y=104:M=K:GOSUB118:GOTO10
64 HCOLOR3:Y1=Y:NS=0:W=0:FORT=SM TO EM STEP5:NL=PEEK(T):IFNL=0 THENRETURNELSEIFNL=1 THENNL=2:POKET,2
65 A=INT(8-(LOG(NL)/LOG(2))):FORS=1TO4:NO=PEEK(T+S):IFNO=0THENW=W+1:GOTO72
66 N$=RIGHT$(STR$(NO),LEN(STR$(NO))-1):N$=STRING$(3-LEN(N$),"0")+N$:Y=INSTR(1,NO$,N$):IFY=0 THENNO=NO-2:NS=1:GOTO66ELSEY=(((Y-1)/4)+8)*4:IFY<>0 THENR=R+1:Y(R)=Y
67 HCOLOR2:IFQQ=1 THEN69ELSEIFY>=32ANDY<=56 THENIFINT(Y/8)=Y/8 THENG=Y-4ELSEG=Y
68 IFG>0 THENFORI=G TO 56STEP8:HLINE(X-6,I)-(X+18,I),PSET:NEXTI:QQ=1:G=0
69 IFY=152ORY=156 ANDHPOINT(X-2,148)<>3 THENHLINE(X-6,148)-(X+18,148),PSET ELSEIFY=160 THENHLINE(X-6,156)-(X+18,156),PSET:IFHPOINT(X-2,148)<>3 THENHLINE(X-6,148)-(X+18,148),PSET
70 QQ=0:GQ=0:HCOLOR3:IFY(R)-Y(R-1)<=20 ANDA>3 ANDY(R-1)<Y(R) THENGOSUB41:HDRAWN$(3) ELSEGOSUB41:HDRAWN$(A)
71 IFNS=1THENGOSUB41:HDRAWS$:NS=0
72 NEXTS:R=0:IFNL<>0 ANDW=4 THENHDRAW"BM"+STR$(X)+",104"+R$(A)
73 X=X+35:W=0:NEXTT:Y=Y1:X=X1:RETURN
74 GOSUB130:GOSUB124:H=44:V=23
75 GOSUB89:IFLO=<0ORLO>2498ORLO>VAL(LN$)THENGOSUB101:HCOLOR3:HPRINT(H,V),LO$:LO$="":GOTO75
76 X=55:GOSUB129:SM=(LO*5)+A5-5:EM=SM+80:GOSUB64:X=55:ME=M:M=SM
77 GOSUB130:LO$="":GOSUB110:GOSUB118:GOTO10
78 GOSUB130:GOSUB121:GOSUB128:H=34:V=23
79 GOSUB89:ZT=LO:IFZT=0 THENZT=1
80 OL$=LO$:LO$="":H=47:GOSUB89:SE=LO
81 IFZT>SE OR SE>2498THENHCOLOR3:GOSUB101:HPRINT(34,V),OL$:HPRINT(47,V),LO$:LO$="":OL$="":GOTO79ELSEGOSUB53:SE=(SE*5)+A5:TP=PEEK(SE):POKESE,0:C=USR(0):POKESE,TP
82 GOSUB130:OL$="":LO$="":GOSUB110:GOTO10
83 GOSUB130:GOSUB121
84 GOSUB123:H=24:V=23:GOSUB89:ST=LO:LO$="":H=37:GOSUB89:EN=LO:LO$="":H=58:GOSUB89:DE=LO:LO$=""
85 IF EN<ST OR DE<EN THENHCOLOR3:HPRINT(23,V),ST:HPRINT(36,V),EN:HPRINT(57,V),DE:GOSUB101:GOTO84
86 ST=A5+(ST*5)-5:EN=A5+(EN*5)-1:DE=A5+(DE*5)-5:AM=EN-ST:AM=DE+AM+1:IFAM>32762 ORPEEK(DE-5)=0 THENEN=1:ST=2:GOTO85
87 X=55:Z=0:GOSUB129:FORT=ST TO EN:L=PEEK(T):POKEDE,L:DE=DE+1:GOSUB152:NEXT
88 X=55:SM=AM-5:EM=SM+80:GOSUB64:GOSUB130:GOSUB110:M=AM-5:GOSUB118:X=55:GOTO10
89 P$=INKEY$:IFP$=""THEN89 ELSEIFP$=CHR$(8) ORP$=CHR$(13)THENEXEC:GOTO90 ELSEIFASC(P$)<48 ORASC(P$)>57THEN89ELSEEXEC
90 IFLO$=""ANDP$=CHR$(8)THENP$="":GOTO89 ELSEIFP$=CHR$(8)THENHCOLOR3:HPRINT(H,V),LO$:HCOLOR2:LO$=LEFT$(LO$,LEN(LO$)-1):HPRINT(H,V),LO$:GOTO89
91 IFP$=CHR$(13)ANDLO$=""THENGOSUB130:GOSUB110:GOTO10
92 IFP$=CHR$(13)THENLO=VAL(LO$):RETURNELSEIF(P=6ORP=13)ANDLEN(LO$)=>3THEN89ELSEIFLEN(LO$)=>4THEN89
93 LO$=LO$+P$:HCOLOR2:HPRINT(H,V),LO$:GOTO89
94 P$=INKEY$:IFP$=""THEN94ELSEEXEC
95 IFP$=CHR$(8)ANDLO$=""THENP$="":GOTO94 ELSEIFP$=CHR$(8)THENHCOLOR3:HPRINT(H,V),LO$:LO$=LEFT$(LO$,LEN(LO$)-1):HPRINT(H,V),LO$:HCOLOR2:HPRINT(H,V),LO$:GOTO94
96 IFP$=CHR$(13)ANDLO$=""THENGOSUB130:HCOLOR3:GOSUB110:GOTO10
97 IFP$=CHR$(13)THENRETURN ELSEIFLEN(LO$)=>8THEN94
98 LO$=LO$+P$:HCOLOR2:HPRINT(H,V),LO$:GOTO94
99 X=55:X1=475:GOSUB129:SM=SM-65:IFSM<=A5 THENSM=A5:X1=((M-A5)/5):X1=(X1*35)+55
100 EM=SM+80:X=55:GOSUB64:X=X1:GOSUB118:RB=0:GOTO10
101 FORU=1TO20:EXEC:NEXTU:RETURN
102 IFPEEK(19971)=55 THENGOSUB101:GOTO10 ELSEGOSUB130:RESTORE:PO=19967:Z=0:HCOLOR2:HPRINT(30,22),"CONVERT MUSIC FILE":HPRINT(18,23),"PRESS ENTER TO PROCEED / SPACEBAR TO ABORT":GOSUB101
103 P$=INKEY$:IFP$=" "THENGOSUB130:GOSUB110:GOTO10 ELSEIFP$=CHR$(13)THENFORT=1TO297:GOSUB152:READA$:NEXT:FORT=1TO132:PO=PO+1:GOSUB152:READP$:POKEPO,VAL("&H"+P$):NEXT:GOSUB130:GOSUB110:GOSUB101:TE=INT(T9/2):GOTO48 ELSEIFP$=""THEN103
104 IFY=32 OR Y=40 OR Y=48 ORY=56 ORY=152 ORY=160 THENHCOLOR2 ELSERETURN
105 IFHPOINT(X-2,Y-4)=3 THENHLINE(X-7,Y-4)-(X-4,Y-4),PSET:HLINE(X+15,Y-4)-(X+18,Y-4),PSET:XL=0:RETURN ELSEHLINE(X-7,Y-4)-(X+18,Y-4),PSET:XL=0:RETURN
106 N$(1)="BU2BLR12EU2HL12GD2FBFBD":N$(2)=N$(1)+"BUBR13U21BD22BL13":N$(3)=N$(2)+"BUBH2R14UL14UR14BD5BL12":N$(4)=N$(3)+"BR13BU22R4DBD21BL17":N$(5)=N$(4)+"BR13BU18R4DBD17BL17":N$(6)=N$(5)+"BR13BU14R4DBD13BL17":N$(7)=N$(6)+"BR13BU10R4DBD9BL17"
107 TC$="HL3GR5DL5FR3EU32E3R4F3D3G6L9G8D5F5R16E4U4H4L10G3D3RBD5BL4H5BRU4E7BR9BU2E5U3H2BD18RF3D4G3":BC$="E18BR4R2EUHL2GR4DL4BDBL3U6BR3FR2EUHL2GR4DL4BL3H4BDF3D6G4BU14BRL13G6DFR2EUHFL4DR4BU2BL2E4":D$="BRBU3R9BU2L9":F$="BL11BUU8BD3R5DG4LBDBR11"
108 S$="BL11BUU6BR4D6BU2BR2L8BU2R8BD5BR5":R$(1)="BU2L3UR3U3R11D3R3DL14":R$(2)=R$(1)+"BL3D16":R$(3)=R$(2)+"BU17R14UL11UR11":R$(4)=R$(3)+"BL14BD2D17R5":R$(5)=R$(4)+"BU4L5":R$(6)=R$(5)+"BU4R5":R$(7)=R$(6)+"BU4L5":CN$="0001":LN$=CN$
109 NO$="112,108,106,102,098,096,092,088,084,082,078,074,072,068,064,060,058,054,050,048,044,040,036,034,030,026,024,020,016,012,010,006,002":RETURN
110 HCOLOR2:HPRINT(0,22),"<L>OAD    <M>OVE    <T>EMPO    <I>NSERT    <P>LAY    <F1> MENUS     <W> WAVEFORM":HPRINT(0,23),"<S>AVE    <J>UMP    <C>LEAR    <D>ELETE    <K>OPY    <F2> CNVRT     <@> CRS.PLAY":PQ=1:RETURN
111 HCOLOR2:HPRINT(0,22),"<N> NOTE     -> RAISE LENGTH     <ENT> INSTAL NOTE     <F1>  FLAT     DWN. ARROW":HPRINT(0,23),"<R> REST     <- LOWER LENGTH     <CLR> CLEAR  NOTE     <F2> SHARP     CLEAR  F+S":PQ=0:RETURN
112 GOSUB130:IFPQ=1THENGOSUB111:GOTO10 ELSEGOSUB110:GOTO10
113 HLINE(H,V)-(640,V),PSET:RETURN
114 LC=INT((X-55)/35)+1:SM=M-(LC*5)+5:EM=SM+80:IFX=650THENRETURNELSERETURN
115 PE=PEEK(M):IFPE=0THEN117
116 M=M+25:GOSUB152:GOTO115
117 FORT=M TO M-25STEP-5:M=M-5:IFPEEK(M)=0 THEN117 ELSELM=M:M=A5:GOSUB118:GOSUB101:RETURN
118 HCOLOR3:IFM<20258 THENM=20258 ELSEIFM>LM THENLM=M
119 HPUT(189,159)-(233,167),2,PSET:HPUT(325,159)-(369,167),2,PSET:HPRINT(23,20),M:HPRINT(40,20),LM:HPUT(469,159)-(504,167),2,PSET:HPUT(605,159)-(640,167),2,PSET
120 CN$=STR$(INT((M-A5)/5)+1):CN$=RIGHT$(CN$,LEN(CN$)-1):CN$=STRING$(4-LEN(CN$),"0")+CN$:HCOLOR1:HPRINT(59,20),CN$:LN$=STR$(INT((LM-A5)/5)+1):LN$=RIGHT$(LN$,LEN(LN$)-1):LN$=STRING$(4-LEN(LN$),"0")+LN$:HCOLOR3:HPRINT(76,20),LN$:RETURN
121 HCOLOR2:IFP=8THENHPRINT(16,22),"PLAY"ELSEIFP=10THENHPRINT(16,22),"COPY"
122 HPRINT(21,22),"BLOCK OF MUSIC / PRESS ENTER ONLY TO ABORT":RETURN
123 HCOLOR2:HPRINT(17,23),"Start:":HPRINT(32,23),"End:":HPRINT(45,23),"Destination:":RETURN
124 HCOLOR2:HPRINT(16,22),"JUMP TO SPECIFIC COLUMN / PRESS ENTER TO ABORT":HPRINT(29,23),"Column number:":RETURN
125 HCOLOR2:HPRINT(30,22),"CLEAR MUSIC MEMORY":HPRINT(20,23),"SHIFT-CLEAR TO PROCEED / ENTER TO ABORT":RETURN
126 HCOLOR2:IFP=5 THENHPRINT(21,22),"LOAD" ELSEHPRINT(21,22),"SAVE"
127 HPRINT(26,22),"A PROGRAM / PRESS ENTER TO ABORT":HPRINT(30,23),"FILENAME: ":RETURN
128 HCOLOR2:HPRINT(27,23),"Start:":HPRINT(42,23),"End:":RETURN
129 FORT=X TO615STEP35:H=T-14:V=T+18:HPUT(H,8)-(V,159),1,PSET:NEXTT:RETURN
130 EXEC43350:HPUT(0,175)-(640,192),2,PRESET:RETURN
131 HPUT(X-14,8)-(X+18,159),1,PSET:RETURN
132 POKE41598,3:CLS1:ATTR0,0:STOP
133 POKEP2,.:RESTORE:LO$="":GOSUB101:FORT=0TO ERNO:READER$:NEXT:POKE59078,51:HSCREEN4:POKE65434,56:HCOLOR1:HPRINT(3,19),PEEK(2394)
134 GOSUB130:HCOLOR2:HPRINT(16,22),"YOU HAVE ENCOUNTERED A":HPRINT(39,22),ER$:HPRINT(42,22),"ERROR IN LINE NUMBER":HPRINT(62,22),ERLIN:HPRINT(19,23),"PRESS BAR TO RETRY / ENTER TO BREAK PROGRAM":POKE59078,141
135 P$=INKEY$:IFP$=""THEN135
136 IFP$=CHR$(32)THENGOSUB130:GOSUB110:GOTO10 ELSEIFP$=CHR$(13)THEN132 ELSE135
137 HCOLOR0:HPRINT(3,19),STR$(D):POKE59078,51:HSCREEN0:WIDTH80:D=VAL(P$):DRIVED:LOCATE20,0:PRINT"DIRECTORY OF DRIVE";D;"/";FREE(D);"FREE GRANULES":H=0:V=3
138 FORI=3TO11:DSKI$D,17,I,A1$,A2$:FORJ=1TO8:IFJ<5 THENK=(J-1)*32ELSEK=(J-5)*32
139 IFJ=5THENA1$=A2$
140 A3$=MID$(A1$,K+1,8)+"/"+MID$(A1$,K+9,3)
141 IFASC(LEFT$(A3$,1))=255THEN144ELSEIFASC(LEFT$(A3$,1))=0THEN143
142 LOCATEH,V:PRINTA3$;:H=H+17:IFH>68THENH=0:V=V+1
143 NEXTJ,I
144 LOCATE30,21:PRINT"== PRESS ANY KEY =="
145 IFINKEY$<>""THENHSCREEN4:POKE65434,56:HCOLOR1:HPRINT(3,19),PEEK(2394):POKE59078,141:GOTO10ELSE145
146 GOSUB130:HCOLOR2:HPRINT(6,22),"Fundamental....:        First  Harmonic:        Second Harmonic:":HPRINT(6,23),"Third  Harmonic:        Fourth Harmonic:"
147 H=23:V=22:GOSUB89:Z=0:LC(0)=LO:LO$="":H=47:GOSUB89:LC(1)=LO:LO$="":H=71:GOSUB89:LC(2)=LO:LO$="":H=23:V=23:GOSUB89:LC(3)=LO:LO$="":H=47:GOSUB89:LC(4)=LO
148 LO$="":LC=0:FORT=0TO4:LC=LC+LC(T):NEXT:IFLC<>100 THENGOSUB101:GOSUB130:HPRINT(17,23),"SUM OF PERCENTAGES MUST BE 100 / PRESS ANY KEY" ELSEGOSUB130:GOTO150
149 IFINKEY$<>""THENGOSUB130:GOTO146ELSE149
150 HPRINT(21,23),"CALCULATING NEW WAVEFORM - PLEASE WAIT"::FORI=0TO4:LC(I)=LC(I)/100:NEXT:FORI=0TO255:AR=2*3.14159*I/256:SC=LC(0)*SIN(AR)+LC(1)*SIN(2*AR)+LC(2)*SIN(3*AR)+LC(3)*SIN(4*AR)+LC(4)*SIN(5*AR):SC=32+INT(31*SC+.5):POKEA1+I,SC
151 GOSUB152:NEXT:GOSUB130:GOSUB101:GOSUB110:GOTO10
152 Z=Z+1:IFINT(Z/25)=Z/25THENEXEC:RETURNELSERETURN
153 DATA NF,SN,RG,OD,FC,OV,OM,UL,BS,DD,/0,ID,TM,OS,LS,ST,CN,FD,AO,DN,IO,FM,NO,IE,DS,UF,NE,BR,DF,OB,WP,FN,FS,AE,FO,SE,VF,ER,DS,HR,HP
154 DATA D,E,F,11,12,14,15,16,18,19,1B,1C,1D,1F,20,22,23,26,27,29,2A,2B,2D,2E,30
155 DATA 31,32,34,35,37,38,38,39,3B,3B,3C,3C,3E,3E,3E,3F,3F,3F,3F,3F,3F,3F,3E,3E
156 DATA 3E,3C,3C,3B,3B,39,38,37,37,35,34,32,31,30,2E,2E,2D,2B,2A,29,27,26,24,23
157 DATA 22,20,1F,1F,1D,1C,1B,1B,19,19,18,18,16,16,15,15,15,15,15,15,15,15,15,15
158 DATA 15,15,15,16,16,16,18,18,18,19,19,1A,1A,1B,1B,1B,1C,1C,1E,1F,1F,20,20,22
159 DATA 22,22,22,22,23,23,23,23,23,23,23,22,22,22,22,20,20,20,1F,1F,1D,1D,1C,1C
160 DATA 1B,19,19,18,16,15,15,14,12,12,11,F,E,E,D,B,B,A,8,8,7,7,6,6,4,4,3,3,3,1
161 DATA 1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,3,3,3,3,3,4,4,4,4,4,6,6,6,6,6,6,6,6,7
162 DATA 7,7,7,7,7,7,6,6,6,6,6,6,6,6,6,4,4,4,4,4,4,4,4,4,4,3,3,3,4,4,4,4,4,4,6,6
163 DATA 6,7,7,7,8,A,A,B,D,0,0,1,37,1,4A,1,5E,1,72,1,88,1,A0,1,B9,1,D3,1,EE,2,0C
164 DATA 2,2B,2,4C,2,6F,2,94,2,BB,2,E4,3,10,3,3F,3,71,3,A5,3,DC,4,17,4,56,4,98,4
165 DATA DD,5,28,5,76,5,C9,6,21,6,7F,6,E2,7,4A,7,B9,8,2F,8,AC,9,30,9,BB,A,50,A
166 DATA ED,B,93,C,43,C,FE,D,C4,E,95,F,73,10,5F,11,58,12,60,13,77,14,A0,15,DA,17
167 DATA 26,18,87,19,FC,1B,88,1D,2B,1E,E7,20,BE,22,B0,24,C0,26,EF,29,40,2B,B4,2E
168 DATA 4D,31,0E,16,0,88,86,4C,1F,8B,86,3F,B7,FF,23,1A,50,30,8D,FE,6A,9F,C3,9F
169 DATA C6,9F,C9,9F,CC,30,8D,0,80,9F,C0,39,9E,C0,A6,80,97,C2,39,31,8D,FF,50,A6
170 DATA 80,EE,A6,DF,CF,A6,80,EE,A6,DF,D1,A6,80,EE,A6,DF,D3,A6,80,EE,A6,DF,D5,9F
171 DATA C0,39,10,8E,0,BE,A6,9F,4C,C3,AB,9F,4C,C6,A9,9F,4C,C9,A9,9F,4C,CC,B7,FF
172 DATA 20,DC,C4,D3,CF,DD,C4,DC,C7,D3,D1,DD,C7,DC,CA,D3,D3,DD,CA,DC,CD,D3,D5,DD
173 DATA CD,31,A2,26,6,A,C2,27,C,20,C7,A6,80,20,0,20,0,20,0,20,C1,39,17,FF,75,8D
174 DATA 91,81,0,26,4,4F,1F,8B,39,8D,8E,8D,AB,20,F0,8E,4F,22,4F,A7,80,8C,7F,F1
175 DATA 26,F9,39,BD,B3,ED,1F,02,A6,A2,A7,25,10,BC,4C,A8,26,F6,CE,00,00,86,80
176 DATA A7,A0,EF,A1,EF,A4,39,BD,B3,ED,1F,02,A6,25,A7,A0,10,BC,4C,BD,26,F6,39
