5 CLEAR:RGB:HSCREEN0:WIDTH40:ONBRKGOTO135:POKE&HF80F,0:POKE&HF84F,0:POKE&HF89C,0:PALETTE0,0:PALETTE2,28:HCOLOR4,2:CLS3:POKE65497,0:DIMDE(52),CO(7,20),C$(4),S$(4),N$(14),YC(7),ST(4):R=RND(-TIMER):GOSUB130:GOTO24
6 N$=INKEY$:IF N$=""THEN6ELSERETURN
7 HLINE(272,9)-(286,32),PRESET,BF:N1=INT(D/10):N2=D-N1*10:IF N2=1THEN N2=14
8 IF N1=1THEN N1=14
9 IF N1=0THEN10ELSEHDRAW"BM272,32;XN$(N1);BR4XN$(N2);":RETURN
10 HDRAW"BM272,32;XN$(N2);":RETURN
11 IF CA<14THEN RA=CA:SU=1:RETURN
12 IF CA<27THEN RA=CA-13:SU=2:RETURN
13 IF CA<40THEN RA=CA-26:SU=3:RETURN
14 RA=CA-39:SU=4:RETURN
15 HLINE(XC,YC)-(XC+11,YC+1),PSET,B:RETURN
16 HLINE(231,0)-(263,39),PRESET,BF:RETURN
17 HLINE(XC,YC)-(XC+32,YC+39),PRESET,BF:RETURN
18 IFSU=1ORSU=3THENHLINE(XC,YC)-(XC+32,YC+39),PSET,B:HCOLOR3,2:HDRAW"BM"+STR$(XC+5)+","+STR$(YC+8)+"XN$(RA);":HDRAW"BM"+STR$(XC+24)+","+STR$(YC+8)+"XS$(SU);":HDRAW"BM"+STR$(XC+17)+","+STR$(YC+32)+"XC$(SU);":HCOLOR4,2:HPAINT(XC+11,YC+22),3,3
19 IFSU=2ORSU=4THENHLINE(XC,YC)-(XC+32,YC+39),PSET,B:HCOLOR12,2:HDRAW"BM"+STR$(XC+5)+","+STR$(YC+8)+"XN$(RA);":HDRAW"BM"+STR$(XC+24)+","+STR$(YC+8)+"XS$(SU);":HDRAW"BM"+STR$(XC+17)+","+STR$(YC+32)+"XC$(SU);":HCOLOR4,2:HPAINT(XC+11,YC+22),12,12
20 RETURN
21 IF CO(F,1)=0 ORCO(F,2)=0THEN22ELSERETURN
22 HLINE(XC,43)-(XC+32,44),PRESET,B:RETURN
23 XC=186:YC=1:GOSUB17:HDRAW"BM195,20;U6F4D2U6BR5R2FD4GL2HU4E":FORN=1TO500:NEXT:GOSUB17:GOTO34
24 LOCATE11,0:ATTR3,2:PRINT"S O L I T A I R E";:LOCATE11,1:PRINT"*****************":LOCATE1,4:ATTR1,2:PRINT"PRESS: - SPACEBAR -";:ATTR3,2:LOCATE1,5:PRINT"TO DISPLAY YOUR NEXT CARD":LOCATE1,7:ATTR1,2:PRINT"- DOWN ARROW AND COLUMN NUMBER -";:ATTR3,2
25 LOCATE1,8:PRINT"TO MOVE CARDS FROM DISPLAY TO COLUMNS":LOCATE1,10:ATTR1,2:PRINT"- LEFT ARROW -";:ATTR3,2:LOCATE1,11:PRINT"TO MOVE CARD FROM DISPLAY TO TOP STACK":LOCATE1,13:ATTR1,2:PRINT"- UP ARROW AND COLUMN NUMBER -";:ATTR3,2
26 LOCATE1,14:PRINT"TO MOVE CARD FROM COLUMN TO TOP STACK":LOCATE1,16:ATTR1,2:PRINT"- RIGHT ARROW AND COLUMN NUMBERS -";:ATTR3,2
27 LOCATE1,17:PRINT"TO MOVE CARDS FROM COLUMN TO COLUMN":LOCATE6,20:ATTR7,0:PRINT"PRESS [Q] TO QUIT AT ANY TIME";:ATTR3,2:LOCATE3,21:ATTR7,0:PRINT"MOVE ALL CARDS TO TOP STACK TO WIN";:ATTR3,2:LOCATE3,23:ATTR3,2,B:PRINT"DECK BEING SHUFFLED";:ATTR3,2
28 FORI=1TO4:ST(I)=0:NEXT:FORI=1TO7:YC(I)=45:FORJ=1TO20:CO(I,J)=0:NEXT:NEXT
29 FORI=1TO52:DE(I)=I:NEXT:FORI=1TO52:J=RND(52):N=DE(J):DE(J)=DE(I):DE(I)=N:NEXT:LOCATE3,23:PRINT"DECK BEING SHUFFLED";:ATTR3,2,B:LOCATE25,23:ATTR3,2,B:PRINT"PRESS <ENTER>";:ATTR3,2:GOSUB6:ATTR3,2
30 HSCREEN2:POKE65434,8:HCLS2:HCOLOR4,2:POKE59078,141
31 HDRAW"BM26,190;XN$(14);":J=26:FORI=2TO7:J=J+44:HDRAW"BM"+STR$(J)+",190;XN$(I);":NEXT
32 J=0:K=24:FORI=1TO7:J=J+1:FOR N=1TO J:K=K+1:CO(I,N)=DE(K):DE(K)=-1:NEXT:NEXT:XC=-33:YC=45:FORI=1TO7:CA=CO(I,I):GOSUB11:XC=XC+44:GOSUB18:IF I=1THEN NEXT ELSE HLINE(XC,43)-(XC+32,44),PSET,B:NEXT
33 CA=DE(3):GOSUB11:XC=231:YC=0:GOSUB18:D=3:GOSUB7
34 IF DE(1)>0THEN37
35 N=0:FORI=28TO292STEP44:IFHPOINT(I,43)=4THEN I=292:N=1
36 NEXT:IF N=0THEN137
37 XC=186:YC=1:GOSUB17:IFST(1)+ST(2)+ST(3)+ST(4)=52THEN39ELSE XC=187:YC=15:GOSUB15
38 GOSUB6:IF N$="Q"THEN5ELSEIF N$=CHR$(32)THEN41ELSEIF N$=CHR$(10)THEN62ELSEIF N$=CHR$(9)THEN85ELSEIF N$=CHR$(94)THEN48ELSEIF N$=CHR$(8)THEN128ELSEGOTO38
39 HDRAW"BM122,110;F4NE4D6BR10H2U6E2R4F2D6G2NL4BR9H2U8BR8D8G2NL3BR3BE10D7F3E2F2E3U7BR7D10BR7U10F8D2U10":FORZ=1TO10:SOUND180,1:NEXTZ:HPRINT(14,17),"PRESS ANY KEY":GOSUB6:RUN
40 ' Start of spacebar.
41 HDRAW"BM188,13;E4NL4NH4NU4NE4NR4NF4D4":XC=231:YC=0:GOSUB17
42 IF DE(1)=-1THEN23
43 D=D+3:IF DE(D)>0THEN46
44 D=D-1:IF DE(D)>0THEN46
45 D=D-1:IF DE(D)<0THEN D=0:XC=231:YC=0:GOSUB17:GOTO42
46 CA=DE(D):GOSUB11:XC=231:YC=0:GOSUB18:GOSUB7:GOTO34
47 ' Start of up-arrow
48 HDRAW"BM191,13;U5L2E4F4L2D5L4":XC=204:YC=15:GOSUB15
49 GOSUB6:IF N$="Q"THEN34ELSEIF N$<"1"OR N$>"7"THEN49
50 F=VAL(N$):IF COL(F,1)=0THEN23
51 IF F=1THEN F=14
52 I=20:HDRAW"BM207,13;XN$(F);":IF F=14THEN F=1
53 I=I-1:IF CO(F,I)=0THEN53ELSE CA=CO(F,I):GOSUB11
54 IF RA<>ST(SU)+1THEN23
55 ST(SU)=ST(SU)+1:XC=SU*44-33:YC=0:GOSUB17:GOSUB18
56 XC=F*44-33:YC=YC(F):GOSUB17
57 CO(F,I)=0:IF YC(F)>45THEN YC(F)=YC(F)-9
58 GOSUB21
59 IF CO(F,1)=0THEN YC=45:GOSUB17:GOTO34
60 CA=CO(F,I-1):GOSUB11:YC=YC(F):GOSUB18:GOTO34
61 ' Start of down-arrow.
62 HDRAW"BM193,13;H4R2U5R4D5R2G4":IF DECK(1)=-1THEN23
63 CA=DE(D):GOSUB11:IF RA<>1THEN70
64 GOSUB 16
65 ST(SU)=ST(SU)+1:XC=SU*44-33:YC=0:GOSUB17:GOSUB18
66 IF D=0THEN46
67 I=D:D=D-1:CA=DE(D):GOSUB11:XC=231:YC=0:GOSUB7:IF D>0THEN GOSUB18
68 IF DE(I+1)=-1THEN DE(I)=-1:GOTO34
69 DE(I)=DE(I+1):I=I+1:GOTO68
70 XC=204:YC=15:GOSUB15
71 GOSUB6:IF N$="Q"THEN34ELSEIF N$<"1"OR N$>"7"THEN71
72 F=VAL(N$):IF F=1THEN F=14
73 HDRAW"BM207,13;XN$(F);":IF F=14THEN F=1
74 IF RA=13AND CO(F,1)<>0THEN23
75 IF RA=13 AND CO(F,1)=0THEN GOSUB16:CO(F,1)=DE(D):XC=F*44-33:YC=YC(F):GOSUB18:GOTO66
76 C1=RA:S1=SU:I=20
77 IF CO(F,1)=0THEN23
78 I=I-1:IF CO(F,I)=0THEN78
79 CA=CO(F,I):GOSUB11:N=SU+2:IF N>4THEN N=N-4
80 IF N=S1 OR SU=S1 THEN 23
81 IF C1<>RA-1 THEN 23
82 GOSUB16
83 YC(F)=YC(F)+9:XC=F*44-33:YC=YC(F):GOSUB17:CO(F,I+1)=DE(D):CA=DE(D):GOSUB11:GOSUB18:GOTO66
84 ' Start of right-arrow.
85 HDRAW"BM188,11;U4R5U2F4G4U2L5":XC=204:YC=15:GOSUB15
86 GOSUB6:IF N$="Q"THEN34ELSEIF N$<"1"OR N$>"7"THEN86
87 F=VAL(N$):IF F=1THEN F=14
88 HDRAW"BM207,13;XN$(F);":IF F=14THEN F=1
89 XC=186:YC=30:GOSUB15
90 GOSUB6:IF N$="Q"THEN34ELSEIF N$<"1"OR N$>"7"THEN90
91 T=VAL(N$):IF T=1THEN T=14
92 HDRAW"BM190,28;XN$(T);":IF T=14THEN T=1
93 J=20:IF CO(T,1)=0THEN115
94 J=J-1:IF COL(T,J)=0THEN94
95 CA=CO(T,J):GOSUB11:HR=RA:HS=SU:HY=YC(F):HJ=J:I=20
96 I=I-1:IF I=0THEN23
97 IF CO(F,I)=0THEN96
98 CA=CO(F,I):GOSUB11:IF HR=RA+1 THEN 101
99 I=I-1:IF I=0THEN23
100 HY=HY-9:IF HY=36THEN23ELSE98
101 N=SU+2:IF N>4THEN N=N-4
102 IF N=HS OR SU=HS THEN 23
103 HI=I:YC(F)=HY
104 J=J+1:CO(T,J)=CO(F,I):CO(F,I)=0:I=I+1:IF CO(F,I)>0THEN104
105 I=HI:XC=F*44-33:IF CO(F,1)=0THEN HLINE(XC,45)-(XC+32,183),PRESET,BF
106 GOSUB21
107 IF HY>45THEN YC(F)=HY-9
108 HLINE(XC,HY)-(XC+32,183),PRESET,BF:I=20
109 I=I-1:IF I=0THEN YC(F)=45:YC=45:GOSUB17:GOTO112
110 IF CO(F,I)=0THEN109
111 CA=CO(F,I):GOSUB11:YC=YC(F):GOSUB18
112 J=HJ:YC(T)=YC(T)-9:XC=T*44-33
113 IF CO(T,J)=0THEN34
114 YC(T)=YC(T)+9:CA=CO(T,J):GOSUB11:YC=YC(T):GOSUB17:GOSUB18:J=J+1:GOTO113
115 I=20:HY=YC(F)
116 I=I-1:IF I=0THEN23
117 IF CO(F,I)=0THEN116
118 CA=CO(F,I):GOSUB11:IF RA=13 THEN 121
119 I=I-1:IF I=0THEN23
120 HY=HY-9:IF HY=36THEN23ELSE118
121 YC(T)=45:YC(F)=45:HI=I:J=0:XC=F*44-33:HLINE(XC,45)-(XC+32,183),PRESET,BF:XC=T*44-33:YC=45
122 J=J+1:CO(T,J)=CO(F,I):CO(F,I)=0:CA=CO(T,J):GOSUB11:GOSUB18:I=I+1:IF CO(F,I)=0THEN123ELSE YC(T)=YC(T)+9:YC=YC(T):GOSUB17:GOTO122
123 XC=F*44-33:I=HI-1:IF CO(F,1)=0THEN YC=45:GOSUB17:GOSUB22:GOTO34
124 IF CO(F,2)=0THEN GOSUB22
125 CA=CO(F,I):GOSUB11:YC=YC(F):GOSUB18
126 I=I+1:IF CO(F,I)=0THEN34ELSE CO(F,I)=0:GOTO126
127 ' Start of left-arrow.
128 HDRAW"BM192,13;H4E4D2R5D4L5D2":IF DE(1)=-1THEN23
129 CA=DE(D):GOSUB11:IF RA=ST(SU)+1THEN64ELSE23
130 N$(0)="BUU4ER2FD4GL2H":N$(1)="U4E2F2D2L3R3D2":N$(2)="BU5ER2FDGL2GD2R4":N$(3)="BR3L2HBU4ER2FDGLRFDG":N$(4)="BR3U6G3DR4":N$(5)="BR3L2HBU5R4L4D2R3FD2G":N$(6)="BR3L2HU4ER2FBD2BL3R2FDG"
131 N$(7)="BU6R4DG3D2":N$(8)="BR3L2HUEHUER2FDGL2R2FDG":N$(9)="BUFR2EU2L3HUER2FD4":N$(10)="R2LU5LRUBR5R2FD4GL2HU4E":N$(11)="UDR3U6L2R4":N$(12)="BR1HU4ER2FD4GLBUF2":N$(13)="U6BR4G3F3":N$(14)="R2LU6DLRBRBD5"
132 S$(1)="BR2H3UERFERFDG3U3GU2GUR4DLD":S$(2)="R3HUEFU3GHEL3FGHD3EFD2U4RDL":S$(3)="BU3F2E2H2G2R3HD2":S$(4)="BRR2LU2L2R4UL4E2FL"
133 C$(1)="HUH2UH2UH2UHU3EUE2R3F2E2R3F2DFD3GDG2DG2DG2DG":C$(2)="L3ER2HU5G3L3H2U3E2R3FEH2U3E2R3F2D3G2FER3F2D3G2L3H3D5F2L2":C$(3)="H3UH2UH3E3UE2UE3F3DF2DF3G3DG2DG3":C$(4)="L2EU7G3L2H2U4EUE7F7DFD4G2L2H3D7FL2"
134 RETURN
135 HSCREEN0:CLS:PRINT"YOU PRESSED BREAK":PRINT:PRINT"PRESS ENTER TO CONTINUE GAME":PRINT:PRINT"PRESS SPACEBAR TO STOP"
136 Z$=INKEY$:IFZ$=" "THENEND ELSEIFZ$=CHR$(13)THENPOKE59078,51:HSCREEN2:POKE65434,8:GOTO38 ELSE136
137 XC=186:YC=0:GOSUB17:FORF=1TO7:I=20
138 IF CO(F,I)=0 THEN I=I-1 ELSE P(F)=I:GOTO140
139 IF I>0THEN138
140 NEXT
141 IF ST(1)+ST(2)+ST(3)+ST(4)=52THEN39
142 IF INKEY$="Q"THEN5
143 FORF=1TO7:I=P(F):IF I=0THEN150
144 CA=CO(F,I):N=CA:GOSUB11:IF RA<>ST(SU)+1THEN150
145 XC=F*44-33:YC=YC(F):GOSUB17
146 CO(F,I)=0:IF YC(F)>45THEN YC(F)=YC(F)-9
147 IF CO(F,1)=0THEN YC=45:GOSUB17:GOTO149
148 CA=CO(F,I-1):GOSUB11:YC=YC(F):GOSUB18:P(F)=P(F)-1
149 CA=N:GOSUB11:ST(SU)=ST(SU)+1:XC=SU*44-33:YC=0:GOSUB17:GOSUB18
150 NEXT:GOTO141
