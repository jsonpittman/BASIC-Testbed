0 PCLEAR4:CLEAR200:DM=80
1 PMODE4,1:PCLS:GOSUB15:PCLS:SCREEN1,1:GOSUB31:PCLS:GOSUB105:PCLS:GOSUB20
2 FORX=1TODM:READWD$(X):NEXT
3 '''''''MAIN PROGRAM'''''''''
4 FORNM=1TOD:CIRCLE(15,140),10,,.5:WD=RND(DM):ACU=0:LINE(15,10)-(15,140),PSET:MV=0:LN=LEN(WD$(WD)):WD$=WD$(WD):IFWD$(WD)="X"THEN3
5 FORXX=1TOLN:LINE((XX*10)+100,130)-((XX*10)+110,140),PSET,B:NEXT
6 GOSUB38:IFACU=LN THEN13
7 IFI$=CHR$(12)THENCLS:PRINT@39,"YOUR SCORE IS:"GT+SC:PRINT@232,"HAVE A GOOD DAY!!":END
8 IFI$>"@"ORI$<"^"GOSUB87
9 FORG=1TOLN:W$=MID$(WD$(WD),G,1):IFI$<>W$THENNEXTG
10 IFI$=W$THENMID$(WD$(WD),G,1)=CHR$(255):CI=CL:X=G*10+103:Y=138:LL$=I$:BP=0:GOSUB58:GOSUB90:NEXTG:GOTO6
11 IFBP=1THENCI=IL:GOSUB67:GOSUB90
12 GOTO 6
13 LINE(165,90)-(200,100),PRESET,BF:M=M-1:X=170:Y=100:NN$=STR$(M):GOSUB51:GT=GT+SC+CW:SC=-CL:GOSUB90:GOSUB93:GOSUB95:WD$(WD)="X"
14 FORPP=1TO1000:NEXT:LINE(40,130)-(255,169),PRESET,BF:H=42:Y=169:NEXTNM:GOTO115
15 '''INITIALIZE  VARIABLES'''
16 CLS:SCREEN0,1:DIMWD$(DM),N$(9),AL$(27),V1(18),V2(18):H=42:V=169
17 DRAW"BM100,100NU10NE7NR10NF7ND10NG7NL10NH7":GET(90,90)-(110,110),V1,G
18 DRAW"BM200,100NU5NE3NR5NF3ND5NG3NL5NH3":GET(190,90)-(210,110),V2,G
19 FORX=1TO27:READAL$(X):NEXT:FORX=0TO9:READN$(X):NEXT:RETURN
20 '''''''''DRAW TITLE''''''''
21 X=54:Y=15:S=10:SP=14:LL$=" W O R D   G U E S S":GOSUB58
22 LINE(42,5)-(205,20),PSET,B:CIRCLE(15,140),10,,.5:CIRCLE(15,180),10,,.5,0,.5:LINE(5,140)-(5,180),PSET:LINE(25,140)-(25,180),PSET:LINE(15,10)-(15,140),PSET
23 FOR X=40 TO 240 STEP 10:LINE(X,170)-(X+7,170),PSET:NEXT
24 X=35:Y=60:LL$="GAME TOTAL":GOSUB58:GOSUB93
25 X=160:Y=60:LL$="THIS WORD":GOSUB58
26 CI=0:GOSUB90
27 X=100:Y=40:LL$="LEVEL ":GOSUB58
28 X=145:Y=40:NN$=STR$(LV):GOSUB51
29 X=80:Y=185:LL$="PRESS CLEAR TO END":GOSUB58
30 X=90:Y=100:LL$="WORDS LEFT":GOSUB58:X=170:NN$=STR$(M):GOSUB51:RETURN
31 '''''''LEVEL INPUT'''''''''
32 X=90:Y=70:LL$="SELECT LEVEL":GOSUB58:X=100:Y=105:NN$="1":GOSUB51:X=125:Y=105:NN$="2":GOSUB51:X=150:Y=105:NN$="3":GOSUB51
33 GOSUB38:IFI$<"1"ORI$>"3"THEN33ELSELV=VAL(I$)
34 IFLV=1THENX1=98:Y1=106:X2=106:Y2=98:INC=8.5:CL=20:IL=-2:CW=10
35 IFLV=2THENX1=123:Y1=106:X2=131:Y2=98:INC=13:CL=30:IL=-4:CW=15
36 IFLV=3THENX1=148:Y1=106:X2=156:Y2=98:INC=26:CL=40:IL=-6:CW=20
37 FORZ=1TO10:LINE(X1,Y1)-(X2,Y2),PSET,B:FORPP=1TO50:NEXT:LINE(X1,Y1)-(X2,Y2),PRESET,B:FORPP=1TO50:NEXT:NEXT:RETURN
38 ''''''''''INKEY$'''''''''''
39 SOUND 200,2
40 I$=INKEY$:IFACU=LN THEN41ELSEIFI$=""THEN40
41 RETURN
42 ''LETTER AND NUMBER DATA''
43 DATA BU1U4E1R2F1NG4D4G1L2H1BD1
44 DATAU5E1R2F1D2NL4D3BL4,U6R3F1D1G1NL3F1D1G1L3,BU1U4E1R2F1BD4G1L2H1BD1,U6R2F2D2G2L2,U6R4BD3BL1L3D3NR4
45 DATA U6R4BD3BL1L3D3,BU1U4E1R3BD4NL1D2L3H1BD1,U6BR4D3NL4D3BL4,BU6BR1R2L1D6NR1L1BL1,BU6BR4D5G1L2H1BD1,U6D3R1NE3NF3BD3BL1
46 DATA NU6NR4,U6F2ND1E2D6BL4,U6D1F4NU5D1BL4,BU1U4E1R2F1D4G1L2H1BD1,U6R3F1D1G1L3D3,BU1U4E1R2F1D3G1NH1NF1G1L1H1BD1
47 DATA U6R3F1D1G1L3R1F3BL4,BU5BR4H1L2G1D1F1R2F1D1G1L2H1BD1,BU6R4L2D6BL2,BU1U5BR4D5G1L2H1BD1,BU6BR4D2G1D1G1ND1H1U1H1NU2BD4,NU6E2NU1F2NU6BL4
48 DATA BU6D1F2E2NU1BD4ND1H2G2D1,BU6BR4D1G2ND3H2NU1BD5,BU6R4D1G4D1NR4
49 DATA BU1U4E1R2F1NG4D4G1L2H1BD1,BU6BR2NG1D6R1L2BL1,BU5E1R2F1D1G1L1G2D1NR4,BU5E1R2F1D1G1NL1F1D1G1L2H1BD1,BU2NR4U1E3D6BL3
50 DATA BU6NR4D3E1R2F1D2G1L2H1BD1,BU6BR2NR2G2D3U2R3F1D1G1L2H1BD1,BU6R4D1G3D2BL1,BU1U1E1NR1H1U1E1R2F1D1G1NL1F1D1G1L2H1BD1,BU4NF1U1E1R2F1D2NL3D1G2L2
51 ''''''DRAWING NUMBERS''''''
52 FORNN=1TOLEN(NN$)
53 N1$=MID$(NN$,NN,1)
54 N=ASC(N1$)-48
55 IFN<0THEN57
56 DRAW"BM=X;,=Y;XN$(N);"
57 X=X+7:NEXT:RETURN
58 '''''DRAWING LETTERS'''''''
59 IFBP=1THENSOUND1,2
60 IFBP=0THENACU=ACU+1:SOUND100,2
61 FORLL=1TOLEN(LL$)
62 L1$=MID$(LL$,LL,1)
63 L=ASC(L1$)-63
64 IFL<0THEN66
65 DRAW"BM=X;,=Y;XAL$(L);"
66 X=X+7:NEXT:C=0:RETURN
67 '''''''''FUSE BURN'''''''''
68 FORBR=1TO10:PUT(5,MV)-(25,MV+20),V1,PSET:PUT(5,MV)-(25,MV+20),V2,PSET:NEXTBR
69 MV=MV+INC:IFMV>119THEN70ELSELINE(0,0)-(25,MV+20),PRESET,BF:RETURN
70 ''''''''''EXPLOSION''''''''
71 FORX=1TO20:PLAY"L255T255O1V31CGEF":NEXT
72 FORX=1TO10:IFC=1THENC=0ELSEC=1
73 PLAYSTR$(RND(12)):PCLSC:SCREEN1,C:NEXTX
74 SCREEN1,1:PCLS1:DRAW"C0":GT=GT+SC
75 X=90:Y=30:LL$="YOU  BLEW  IT":GOSUB58
76 X=130:Y=50:LL$="ON":GOSUB58
77 X=90:Y=70:LL$="LEVEL":GOSUB58
78 X=170:Y=70:NN$=STR$(LV):GOSUB51
79 X=90:Y=80:LL$="SCORE":GOSUB58:X=170:NN$=STR$(GT):GOSUB51:IFGT<0THENDRAW"BM164,77R5"
80 X=40:Y=120:LL$="THE WORD WAS ":GOSUB58
81 LINE(130,112)-(LN*10+123,123),PRESET,BF
82 X=132:Y=120:DRAW"C1":IFLN>4THENLL$=" "+WD$:GOSUB58ELSELL$=WD$:GOSUB58
83 X=60:Y=150:DRAW"C0":LL$="PRESS ENTER TO REPLAY":GOSUB58
84 X=60:Y=160:LL$="PRESS CLEAR TO STOP":GOSUB58
85 GOSUB 38
86 IFI$=CHR$(12)THENCLS:PRINT@232,"HAVE A NICE DAY!!":ENDELSEIFI$=CHR$(13)THENRUNELSE85
87 ''''''''GUESSES''''''''''
88 X=H:Y=V:IFI$<>""THENLL$=I$
89 BP=1:GOSUB58:H=H+10:RETURN
90 ''''''''WORD SCORES''''''''
91 LINE(150,76)-(220,66),PRESET,BF:SC=SC+CI:X=180:Y=75:NN$=STR$(SC):GOSUB51:IFSC<0THENDRAW"BM178,72R5"
92 RETURN
93 ''''''''GAME TOTAL'''''''''
94 LINE(50,75)-(100,65),PRESET,BF:X=60:Y=75:NN$=STR$(GT):GOSUB51:RETURN
95 ''''''''''REWARD''''''''''
96 FORPP=1TO5
97 AA=(LN*10)+115
98 LINE(105,125)-(AA,145),PSET,B:SOUND10,1
99 LINE(100,120)-(AA+5,150),PSET,B:SOUND30,1
100 LINE(95,115)-(AA+10,155),PSET,B:SOUND50,1
101 LINE(105,125)-(AA,145),PRESET,B:SOUND10,1
102 LINE(100,120)-(AA+5,150),PRESET,B:SOUND30,1
103 LINE(95,115)-(AA+10,155),PRESET,B:SOUND50,1
104 NEXT:RETURN
105 ''''''NUMBER OF WORDS''''''
106 X=30:Y=30:LL$="PLEASE ENTER NUMBER OF WORDS":GOSUB58
107 FORPP=1TODM/10:READX,Y,LL$,NN$
108 IFLEN(NN$)<3THENNN$="      "+NN$ELSENN$="     "+NN$
109 GOSUB58:GOSUB51:NEXT
110 GOSUB38:IFI$<"A"ORI$>"L"THEN110
111 D=(ASC(I$)-64)*10:IFD>DM THEND=DM
112 DRAW"S6":FORPP=1TO5:X=200:Y=100:LL$=I$:SOUND150,1:GOSUB58:FORP=1TO50:NEXT:LINE(195,105)-(210,90),PRESET,BF:FORP=1TO50:NEXT:NEXT:DRAW"S4"
113 M=D:RETURN
114 DATA60,50,A,10,60,60,B,20,60,70,C,30,60,80,D,40,60,90,E,50,60,100,F,60,60,110,G,70,60,120,H,80
115 ''''''''ENDING''''''''''
116 DRAW"C1"
117 PCLS:X=30:Y=40:LL$="I DONT HAVE ANY MORE WORDS":GOSUB58
118 X=65:Y=50:LL$="FOR YOU TO GUESS":GOSUB58
119 X=70:Y=70:LL$="LEVEL":GOSUB58
120 X=120:Y=70:NN$=STR$(LV):GOSUB51
121 X=70:Y=80:LL$="SCORE":GOSUB58
122 X=120:Y=80:NN$=STR$(GT):GOSUB51
123 X=40:Y=100:LL$="PRESS E TO END":GOSUB58
124 X=40:Y=110:LL$="PRESS R TO REPLAY":GOSUB58
125 GOSUB38:IFI$="E"THENCLS:PRINT@232,"HAVE A GOOD DAY!!"ELSEIFI$="R"THENRUNELSE125
126 '''''''''WORD DATA''''''''''
127 DATA DIVISION,HELLO,SIMPLE,LAST,GENESIS,TAPE,HOUSE,GENTLE,QUIET,HAPPY
128 DATA SUBTLE,LIZARD,FLOWER,MAN,CHILD,WOMAN,BOY,GIRL,GOODNESS,THRIFTY
129 DATA ACHE,BACKGROUND,CABBAGE,DAIRY,EAGER,FACT,GAIN,ICY,KEEN,LACK
130 DATA MACHINE,OBJECT,PACE,QUART,RANGE,SABBATH,TABLET,UGLY,VAIN,WAGES
131 DATA YIELD,ZERO,ABILITY,BAGGAGE,CALENDAR,DAILY,EARNEST,FACTOR,GARAGE,HANDSOME
132 DATA IDEAL,JANITOR,KEROSENE,MACHINERY,NAMELY,OBSERVATION,PAJAMAS,QUALIFIED,RADAR,SALESMAN
133 DATA TABERNACLE,UNBELIEVER,VACANT,WANDER,YOURSELVES,ZEBRA,ABOARD,BACHELOR,CABINET,DAMNATION
134 DATA EDUCATIONAL,FACULTY,GENIUS,HARASS,IDENTIFY,JEWELRY,KIDNAPPED,LEGAL,MAINTENANCE,NATURALLY
