1 GOTO 1100
5 'KIDSMATH BY JOHN COLLICOTT
10 CIRCLE(X,Y-1),24,3,1:LINE(X-22,Y-3)-(X-22,Y+3),PSET:LINE(X+22,Y-2)-(X+22,Y+2),PSET:LINE(X-2,Y-23)-(X+2,Y-23),PSET:LINE(X-2,Y+21)-(X+2,Y+21),PSET
11 CIRCLE(X,Y-1),16,3
12 PRESET(X,Y+22):PRESET(X,Y+23):LINE(X-3,Y-24)-(X+3,Y-24),PRESET:PRESET(X,Y-25):PRESET(X-24,Y-1):PRESET(X+24,Y-1):PRESET(X-24,Y-2):PRESET(X+24,Y-2)
13 PAINT(X-17,Y-1),3,3
15 RETURN
20 DRAW"BM"+STR$(X-15)+","+STR$(Y+20)+";BR7R20U5L5U38L10G8F5E5D30L8D5"
21 PAINT(X,Y-15),3,3
25 RETURN
30 DRAW"BM"+STR$(X-20)+","+STR$(Y+15)+";D5R40U5L30"
31 LINE(X-20,Y+15)-(X+11,Y-10),PSET:LINE(X-10,Y+15)-(X+21,Y-8),PSET:LINE(X-18,Y-15)-(X-11,Y-12),PSET
32 CIRCLE(X,Y-5),20,3,1,.6,.98:PRESET(X,Y-25):PRESET(X,Y-24):LINE(X+20,Y-9)-(X+20,Y-3),PRESET
33 CIRCLE(X,Y-5),15,3,1,.6,.96
34 PAINT(X-10,Y+17),3,3
35 RETURN
40 CIRCLE(X,Y-5),15,3,1,.6,.98
41 CIRCLE(X,Y+3),15,3,1,.03,.4
42 LINE(X+13,Y+2)-(X+6,Y-1),PSET:LINE -(X+13,Y-6),PSET
43 CIRCLE(X,Y-5),20,3,1,.6,.99:CIRCLE(X,Y+3),20,3,1,.02,.4:PRESET(X,Y-25):PRESET(X,Y-24):PRESET(X,Y+23):PRESET(X,Y+22)
44 LINE(X+19,Y-5)-(X+15,Y-1),PSET:LINE-(X+19,Y+4),PSET
45 LINE(X-18,Y-15)-(X-11,Y-12),PSET:LINE(X-16,Y+15)-(X-10,Y+10),PSET
46 PAINT(X,Y-22),3,3
47 RETURN
50 DRAW"BM"+STR$(X+15)+","+STR$(Y+20)+";U15R4U5L4U23L6D23L20U23L5D28R25D15R6"
51 PAINT(X+13,Y+15),3,3
52 RETURN
60 CIRCLE(X-2,Y+2),20,3,1,.65,.4:PRESET(X-2,Y+22):PRESET(X-2,Y+21):PRESET(X-2,Y-18):PRESET(X-2,Y-17):PRESET(X+18,Y+2)
61 LINE(X-16,Y+16)-(X-11,Y+12),PSET
62 DRAW"BM"+STR$(X-13)+","+STR$(Y-4)+";L7U20R35D5L30D9"
63 CIRCLE(X-2,Y+2),15,3,1,.6,.37
64 PAINT(X+15,Y+2),3,3
65 RETURN
70 CIRCLE(X-2,Y+3),18,3,1,.65,.47:PRESET(X-2,Y-15):PRESET(X-2,Y-14):PRESET(X+16,Y+3):PRESET(X-2,Y+21):PRESET(X-2,Y+20)
71 CIRCLE(X-2,Y-10),18,3,1,.55,.9:PRESET(X-2,Y-28):PRESET(X-2,Y-27)
72 CIRCLE(X-2,Y+3),13,3:CIRCLE(X-2,Y-10),13,3,1,.55,.88
73 LINE(X-18,Y+5)-(X-18,Y-14),PSET
74 LINE(X+4,Y-18)-(X+8,Y-19),PSET
75 PAINT(X-15,Y+2),3,3
76 RETURN
80 DRAW"BM"+STR$(X+20)+","+STR$(Y-25)+";L40D5R35"
81 LINE(X+20,Y-25)-(X+5,Y+20),PSET:LINE-(X-2,Y+20),PSET:LINE-(X+13,Y-20),PSET
82 PAINT(X-15,Y-23),3,3
83 RETURN
90 CIRCLE(X,Y-9),10,3:PRESET(X,Y+1):PRESET(X,Y)
91 CIRCLE(X,Y+7),10,3:PRESET(X,Y-3):PRESET(X,Y-2)
92 CIRCLE(X,Y-5),20,3,1,.54,.97:CIRCLE(X,Y+3),20,3,1,.03,.47:PRESET(X,Y-25):PRESET(X,Y-24):PRESET(X-20,Y-5):PRESET(X,Y+23):PRESET(X,Y+22)
93 LINE(X+19,Y-6)-(X+14,Y-1),PSET:LINE-(X+19,Y+4),PSET
94 LINE(X-18,Y-6)-(X-14,Y-1),PSET:LINE-(X-18,Y+4),PSET
97 PAINT(X-15,Y-5),3,3
98 RETURN
100 CIRCLE(X,Y-10),18,3,1,.15,.99:PRESET(X,Y-28):PRESET(X,Y-27):PRESET(X,Y+8):PRESET(X,Y+7):PRESET(X-18,Y-10)
101 CIRCLE(X,Y+3),18,3,1,.02,.4:PRESET(X,Y+21):PRESET(X,Y+20)
102 CIRCLE(X,Y-10),13,3,1:CIRCLE(X,Y+3),13,3,1,0,.4
103 LINE(X+16,Y+5)-(X+16,Y-14),PSET
104 LINE(X-10,Y+13)-(X-7,Y+9),PSET
105 PAINT(X,Y+4),3,3
106 RETURN
139 '*** THE ROUTINE FOR SELECTING RANDOM NUMBERS
140 PMODE 3,1:SCREEN 1,0:PCLS:COLOR 3
150 BL=RND(-TIMER):O=RND(GN)
160 Y=30:X=100:SW=0
170 ON O GOSUB 20,30,40,50,60,70,80,90,100,10
180 T=RND(GN)
190 Y=80:N=1:CC=0
200 ON T GOSUB 20,30,40,50,60,70,80,90,100,10
210 IF O+T>9 THEN X=60 ELSE X=100
220 Y=140
230 LINE(10,105)-(170,110),PSET,BF:LINE(50,60)-(55,85),PSET,BF:LINE(40,70)-(65,75),PSET,BF
240 TT=O+T:O$=STR$(TT)
250 PLAY"O5L200ABABABABABABCCC"
299 '*** KEYBOARD CHECK FOR THE  ANSWER
300 A$=INKEY$
310 SW=SW+1:IF SW=1000 THEN 1
320 COLOR C
330 LINE(X-25,Y-25)-(X+25,Y+25),PSET,B
340 C=C+1:IF C>4 THEN C=2
350 IF A$="" THEN 300 ELSE 360
360 COLOR 1:LINE(X-25,Y-25)-(X+25,Y+25),PSET,B
370 COLOR 3
380 IF MID$(O$,N+1,1)=A$ THEN 400 ELSE 390
390 CC=CC+1:IF CC=2 THEN 600 ELSE 300
400 A=INSTR("0123456789",A$)
410 ON A GOSUB 10,20,30,40,50,60,70,80,90,100
420 C$=C$+A$
430 IF VAL(C$)=VAL(O$) THEN 500 ELSE 440
440 X=X+40:N=N+1
450 GOTO 300
500 O$="":A$="":C$="":TT=0
510 FOR E=1 TO 200:NEXT E
520 GOSUB 800
530 ANS=ANS+1:IF ANS=5 THEN 1300 ELSE 150
599 '*** THE HELP SCREEN
600 U=7:I=185:FOR W=1 TO O
610 COLOR 2
620 CIRCLE(U,I),6:PAINT(U,I),2,2
630 U=U+13
640 NEXT W
650 LINE(U-4,I)-(U+4,I),PSET:LINE(U,I-4)-(U,I+4),PSET
660 U=U+13
670 FOR W=1 TO T
680 CIRCLE(U,I),6:PAINT(U,I),2,2
690 U=U+13
700 NEXT W
710 CC=0
720 COLOR 3
730 GOTO 300
799 '*** THE STAR
800 H=215:V=35
810 COLOR C
820 LINE(H-9,V-13)-(H,V-35),PSET:LINE-(H+9,V-13),PSET
830 LINE(H+9,V-13)-(H+35,V-13),PSET:LINE-(H+15,V+10),PSET
840 LINE(H+15,V+10)-(H+25,V+35),PSET:LINE-(H,V+17),PSET
850 LINE(H,V+17)-(H-25,V+35),PSET:LINE-(H-15,V+5),PSET
860 LINE(H-15,V+5)-(H-35,V-13),PSET:LINE-(H-9,V-13),PSET
870 PAINT(H,V-32),C,C
880 IF FLAG=1 THEN RETURN
890 COLOR 3
900 PLAY"O5L255AABBCBBAEDDABCAABBCB"
910 FOR WT=1 TO 1000:NEXT WT
920 PCLS:RETURN
1000 'RERUN GAME
1010 PCLS
1020 N=1:CC=0:A$="":O$="":TT=0:ANS=0
1030 GOTO 150
1100 'TITLE SCREEN
1110 CLEAR:CLS(3)
1120 FOR TL=1 TO 2
1130 PRINT @TS,"";
1140 FOR TN=1 TO 8
1150 PRINT TN;"+";
1160 NEXT TN
1170 TS=448
1180 NEXT TL
1190 PRINT @105,"   KIDSMATH   ";
1200 PRINT @137,"      BY      ";
1210 PRINT @169,"JOHN COLLICOTT";
1220 PRINT @201," INMAN,KANSAS ";
1230 PRINT @233," JAN. 17,1986 ";
1240 PLAY"T4O4L4DDL8DCO3B-GL2FB-O4L4CCL8DCO3B-O4L8DL2.CO3L8FE-DFB-O4CO3L4B-L8B-AGAB-GL4FO4L8DCO3L8B-AB-GAFAO4CO3L1B-"
1250 FOR X=1 TO 1000:NEXT X
1260 CLS
1270 GN=9
1280 GOTO 140
1299 '*** FIVE STAR SCREEN
1300 PCLS
1310 FLAG=1
1320 C=2:H=35:V=35
1330 GOSUB 810
1340 C=3:H=215:V=35
1350 GOSUB 810
1360 C=4:H=35:V=155
1370 GOSUB 810
1380 C=2:H=215:V=155
1390 GOSUB 810
1400 C=2:H=125:V=95
1410 GOSUB 810
1420 FLAG=0
1430 PLAY"T4O3L4AL8AAL4ABAF#L2DL4AL8AAL4AF#L4DDEF#O4DL8DDL4DEDO3BL2GO4L4DL8DDL4C#O3BL2AL4ABL2AL4AGL2F#L4F#EL1D"
1440 FOR WAT=1 TO 1000:NEXT WAT
1450 COLOR 3
1460 GOTO 1000
0 ' COPYRIGHT 1990  FALSOFT, INC
10 ONBRKGOTO30
20 CLS:PRINT@96, "NAME";:INPUT N$
30 P=36
40 CLS:PRINT@355,"PRESS <ENTER WHEN READY>"
50 TIMER=0:Y=0
60 Q=0:R=0:PRINT@234,"ADDITION":PRINT@297,"FLASH CARDS":EXEC44539:FORQ=1TO50:CLS:PRINT@0,Q:A=RND(8)+1:B=RND(8)+1:IFA<=>B THENPRINT@240,USING"##";A:PRINT@271,"+";:PRINTUSING"##";B:C=A+B:ELSEPRINT@240,USING"##";B:PRINT@271,"+";:PRINTUSING"##";A:C=B  
70 PRINT@303,"===":PRINT@334,"";:INPUT D:IFD=C THENPRINT@448,"CORRECT":SOUND200,1:R=R+1:IF R=P THEN 90 ELSENEXT:PRINT@456,R:ELSEPRINT@448,"TRY AGAIN":SOUND10,4:GOTO80:PRINT@448,"CORRECT  ";R:GOTO90
80 Y=Y+1:IFQ=P THEN 90ELSE 70
90 CLS:PRINT@32*4,"NUMBER WRONG OUT OF "P"="Y:PRINT((P-Y)/P)*100"%"
100 PRINTN$" YOU DID IT IN:":PRINT USING"###.#";INT(TIMER/3640):PRINT"MINUTES":PRINT USING"##.#";(TIMER/3640-INT(TIMER/3640))*60:PRINT "SECONDS"
110 IF TIMER<3640*1.5 THEN PRINTN$" YOU DID IT IN LESS THAN 1.5 MINUTES!!!! FOR THAT YOU GET FIFTY CENTS$$$$$$":S=S+.50:GOTO150
120 IF TIMER<3640*2 THEN PRINTN$" YOU DID IT IN LESS THEN TWO MINUTES!!! FOR THAT YOU GET 25 CENTS $$$$$$":S=S+.25:GOTO150
130 IF TIMER<3640*2.5 THEN PRINTN$" YOU DID IT IN LESS THAN 2.5 MINUTES!!!! FOR THAT YOU GET 10 CENTS$$$$$$$$$$":S=S+.10:GOTO150
140 IF TIMER<3640*3 THEN PRINTN$ " YOU DID IT IN LESS THAN THREE MINUTES!!!!!! FOR THAT YOU GET TEN CENTS!!!!!!":S=S+.10:GOTO150
150 FORX=1TO1800:NEXT:PRINTN$" , YOUR TOTAL WINNINGS THIS SESSION ARE";S*100"CENTS"
160 PRINT "PRESS <ENTER> TO CONTINUE";:INPUT A$:GOTO40
