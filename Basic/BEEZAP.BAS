1 '****************************
2 '*  WRITTEN BY DAREN KOCH   *
3 '*    ORIGINAL IDEA BY      *
4 '*     FRANCOIS GAGNE       *
5 '****************************
6 POKE 65495,0
7 GOSUB21
8 PMODE4,1:PCLS
9 GOSUB37
10 B1=1:P=100:H=180:O1=210:O=5:B=5:X=160:D=40:N=9:W=1:V=1:A2=5
11 GOSUB24
12 GOSUB78
13 GOSUB18
14 PMODE4,1:SCREEN1,1
15 GOSUB85
16 GOSUB99
17 GOTO15
18 LINE(220,100)-(240,191),PRESET,BF:IFV>-1 THENFOR A=170 TO170-(V*20) STEP -20:PUT(220,A)-(238,A+18),C,PSET:NEXTA
19 IFV=-2 THENCLS(7):PRINT@43,"GAME OVER";:PRINT@128,"YOUR SCORE IS ";L1;:PRINT@256,"DO YOU WANT TO PLAY AGAIN? (Y/N)";:INPUTA$:IFA$="Y" THENRUN ELSE END
20 RETURN
21 CLS7:PRINT@43,"CHAMELEON";
22 PRINT@263,"ONE MOMENT PLEASE";
23 RETURN
24 FORQ=1TON:X(Q)=31:Y(Q)=(RND(0)*4)+2:NEXTQ:RETURN
25 CLS(RND(8)):IFL3<6 THENPRINT@192,"BONUS ";100*B1;:L1=L1+100*B1
26 IFL3>5 THENPRINT@192,"NO BONUS";
27 PRINT@256,"YOUR SCORE IS ";L1;
28 PRINT@6,"LEVEL ";B1;" COMPLETE";
29 IFB1=4 THENA2=0
30 IFB1=5 THENV=V+1:GOSUB18
31 PRINT@480,"PRESS FIRE TO CONTINUE";
32 IF(PEEK(65280) AND3)=2 THEN 33 ELSE32
33 IFV=-2 THENRETURN ELSEPMODE4,1:SCREEN1,1
34 M1=0:L3=0:B=B-A2:IFB<0 THENB=0
35 GOSUB78:B1=B1+1:P=P-20:IFP<20 THENP=20:A1=0
36 RETURN
37 DATA 1,10,16,2,9,13,3,3,4,3,7,10,4,2,2,4,4,13,5,0,18,6,2,4,6,6,14,7,8,12,10,3,4,10,7,11,11,2,2,11,4,13,12,0,18,13,2,4,13,6,14,14,7,10,15,9,13,16,10,16
38 DATA-1,,
39 READ A,B,C:IFA=-1 THEN42
40 FORX=B TOC:PSET(X+100,A):NEXTX
41 GOTO39
42 DATA 1,3,3,1,15,15,2,3,15,3,2,16,4,2,16,5,2,4,5,7,11,5,14,16,6,1,4,6,7,11,6,14,17,7,1,17,8,1,17,9,1,3,9,5,13,9,15,17,10,1,4,10,6,7,10,9,9,10,11,12,10,14,17,11,1,5,11,7,11,11,13,17,12,1,6,12,9,9,12,12,17,13,2,2,13,16,16,13,4,8,13,10,14,14,2,3,14,6,12
43 DATA 14,15,16,15,2,5,15,7,11,15,13,16,16,0,6,16,12,18,17,0,18,18,0,4,18,7,11,18,14,18
44 DATA -1,,
45 READA,B,C:IFA=-1 THEN48
46 FOR X=B TOC:PSET(X+200,A):NEXTX
47 GOTO45
48 DATA 1,3,3,1,15,15,2,3,15,3,2,16,4,2,16,5,2,4,5,7,11,5,14,16,6,1,4,6,7,11,6,14,17,7,1,17,8,1,17,9,1,3,9,5,13,9,15,17,10,1,3,10,6,7,10,9,9,10,11,12,10,15,17,11,1,3,11,7,11,11,15,17,12,1,3,12,9,9,12,15,17,13,1,4,13,14,16,14,2,2,14,4,5,14,13,14
49 DATA 14,16,16,15,2,3,15,5,6,15,12,13,15,15,16,16,0,4,16,6,7,16,11,12,16,14,18,17,0,7,17,11,18,18,0,4,18,7,7,18,11,11,18,14,18
50 DATA -1,,
51 READA,B,C:IFA=-1 THEN 54
52 FORX=B TO C:PSET(X+200,A+25):NEXTX
53 GOTO51
54 DATA 5,8,9,6,2,5,6,7,8,6,10,10,7,1,5,7,7,9,8,0,4,8,6,6,9,0,1,9,5,5,9,7,9,10,0,4,10,9,9
55 DATA -1,,
56 ZZ=50
57 READ A,B,C:IFA=-1 THEN 60
58 FORX=B TO C:PSET(X+200,A+70):NEXTX
59 GOTO57
60 DATA 1,0,1,2,0,3,3,0,4,4,1,4,5,4,5,5,8,9,6,2,5,6,7,8,6,10,10,7,1,9,8,0,6,9,0,5,9,7,9,10,0,4,10,9,9
61 DATA-1,,
62 READ A,B,C:IFA=-1 THEN65
63 FORX=B TOC:PSET(X+200,A+90):NEXTX
64 GOTO62
65 DATA 1,1,1,2,0,2,3,1,1,4,0,2,5,1,1,6,0,2,7,1,1,8,0,2,9,1,1,10,0,2,15,1,1,16,0,2,17,0,2,18,0,2,19,0,2,-1,,
66 READ A,B,C:IFA=-1 THEN 69
67 FORX=B TO C:PSET(X+200,A+110):NEXTX
68 GOTO66
69 DIMC(18,18),C1(18,18),C2(18,18),B(10,10),B1(10,10),B2(10,10),F(3,10),F2(3,10),F1(3,5),F3(3,5),X(10),P(10),Y(10),O(18,7),O1(18,7),O2(18,7),O3(18,7)
70 GET(200,1)-(218,19),C,G:GET(200,26)-(218,44),C1,G:GET(0,0)-(18,18),C2,G:GET(200,71)-(210,81),B,G:GET(200,91)-(210,101),B1,G:GET(0,0)-(10,10),B2,G:GET(200,111)-(203,121),F,G:GET(0,0)-(3,10),F2,G:GET(200,125)-(203,130),F1,G:GET(0,0)-(3,5),F3,G
71 GET(100,0)-(118,7),O,G:GET(100,10)-(118,17),O1,G:GET(0,0)-(18,7),O2,G
72 PCLS
73 LINE(180,0)-(200,191),PSET,BF
74 LINE(5,165)-(15,170),PSET,BF:LINE(0,170)-(20,175),PSET,BF:LINE(0,175)-(25,180),PSET,BF:LINE(0,180)-(30,190),PSET,BF:LINE(5,170)-(15,170),PRESET:LINE(0,175)-(20,175),PRESET:LINE(0,180)-(25,180),PRESET:LINE(0,185)-(30,185),PRESET
75 FOR X=0TO5:CIRCLE(182,100),2,0,X:NEXTX
76 GET(180,95)-(198,102),O3,G
77 RETURN
78 IFB=14 THENB=16:F=0
79 LINE(30,36)-(180,40),PRESET,BF
80 LINE(30+(10*B),36)-(180,40),PSET,BF
81 S=30+(10*B)
82 IFB=16 THENFORJ=17 TO170 STEP4:PUT(X,J)-(X+18,J+18),C,PSET:PUT(X,J)-(X+18,J+18),C2,PSET:NEXTJ:B=5:LINE(30+(10*B),36)-(180,40),PSET,BF:S=30+(10*B1):V=V-1:GOSUB18:F=0:RETURN
83 IFX<S ANDB<16THENPUT(X,17)-(X+18,35),C2,PSET:PUT(X+10,17)-(X+28,35),C1,PSET:X=X+10:IFD>40 THENLINE(X-3,41)-(X,D+15),PRESET,BF:F=0:D=40
84 RETURN
85 IFF=0 THEN86 ELSE89
86 J=JOYSTK(0):PUT(X,17)-(X+18,35),C2,PSET:IFJ=<20 ANDX>S+4 THENX=X-5 ELSEIFJ=>40 ANDX<160 THENX=X+5
87 PUT(X,17)-(X+18,35),C,PSET
88 IF(PEEK(65280) AND3)=2 THENF=1
89 IFF=2 THEN96
90 IFF=1 THEN91 ELSERETURN
91 PUT(X,17)-(X+18,35),C1,PSET:PUT(X+8,D+1)-(X+11,D+11),F,PSET:PUT(X+8,D+11)-(X+11,D+16),F1,PSET:D=D+10:IFD+6=96 ANDX+9>H ANDX+9<H+18 THENPUT(H,95)-(H+18,102),O2M,PSET:M1=0:F=2:H=180:M=0:L1=L1+200
92 IFD=180 THEN93 ELSERETURN
93 F=2:FORR=1 TON:IFX+11>X(R) ANDX+8<X(R)+10 THENPUT(X(R),180)-(X(R)+10,190),B2,PSET:X(R)=31:Y(R)=(RND(0)*4)+2:K=1:PUT(O1,O)-(O1+10,O+10),B1,PSET:O=O+15:L=L+1:L1=L1+50+(25*B1):IFO=110 THENO=5:O1=230
94 IFL=14 THENL2=L2+25:LINE(31,180)-(180,191),PRESET,BF:PUT(X,17)-(X+18,35),C2,PSET:LINE(201,0)-(256,120),PRESET,BF:LINE(X+8,41)-(X+11,190),PRESET,BF:O=5:M=0:M1=0:Z=0:K=0:F=0:L2=L2+1:O1=210:X=160:D=40:L=0:GOSUB25:IFN>4 THENN=N-2:GOSUB24:GOTO85
95 NEXTR:RETURN
96 PUT(X+4,D)-(X+14,D+10),B2,PSET:D=D-10:PUT(X+8,D+11)-(X+11,D+16),F3,PSET:PUT(X+8,D+1)-(X+11,D+11),F2,PSET:IFD=40 THENF=0:K=0
97 IFK=1 THENPUT(X+4,D)-(X+14,D+10),B1,PSET
98 RETURN
99 Z=Z+1:IFZ=N+1 THENZ=1
100 PUT(X(Z),180)-(X(Z)+10,190),B2,PSET
101 X(Z)=X(Z)+Y(Z):W=W*-1:IFW>0 THENPUT(X(Z),180)-(X(Z)+10,190),B,PSET ELSEPUT(X(Z),180)-(X(Z)+10,190),B1,PSET
102 IFX(Z)=>169 THENB=B+1:L3=L3+1:PUT(X(Z),180)-(X(Z)+10,190),B2,PSET:X(Z)=31:Y(Z)=(RND(0)*4)+2:GOSUB78
103 M=M+1:IFM=P-15 THENM1=1 ELSEIFM=P THENM1=2
104 IFM1>0 THENIFM1=1 ANDW>0THENPUT(H,95)-(H+18,102),O,PSET ELSEIFM1=1 THENPUT(H,95)-(H+18,102),O1,PSET ELSEPUT(H,95)-(H+18,102),O2,PSET:IFH=<5 THENM1=0:M=0:H=180
105 IFM1=2 THENH=H-5:IFW=>0 THENPUT(H,95)-(H+18,102),O,PSET ELSEPUT(H,95)-(H+18,102),O1,PSET
106 IFM1>0 ANDPPOINT(H-1,98)>0 THENB=16:GOSUB78:F=0:X=160:D=40
107 IFH=160 THENPUT(180,95)-(198,102),O3,PSET
108 RETURN
