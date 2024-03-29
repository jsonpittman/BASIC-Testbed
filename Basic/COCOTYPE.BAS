10 '************************************************
20 '*           The COCO III TYPING TUTOR          *
30 '*                                              *
40 '*               by Leonard Hyre                *
50 '*                                              *
60 '*  REQUIRES COCO III WITH RGB 80 COL.DISPLAY   *
70 '*                                              *
80 '************************************************
85 '
100 DIM A$(36),B$(36),C$(18),D$(12)
110 '
120 HBUFF 1,6400
130 POKE 65497,0:REM *** IT IS RECOMMENDED THAT THIS LINE BE TYPED IN LAST ***
140 '
150 '** ON BRK Allows Restoration To Normal Operation If Break Pressed
160 '
170 ON BRK GOTO 1840
180 '
190 GOSUB 1630:'** This is the TITLE screen
200 GOSUB 1440:'** This READS in the DATA statements
210 GOSUB 1140:'** This draws the KEYBOARD display
220 '
230 '** Menu Display Created Here
240 '
250 PALETTE 1,255:PALETTE 2,54:HCOLOR 1,0:HPRINT(20,1),"The MENU....":HPRINT(28,2),"1> Beginners Exercises":HPRINT(28,3),"2> Advanced Exercises":HPRINT(28,4),"3> Word Exercises
260 HPRINT(28,5),"4> Phrase Practice"
270 CH$=INKEY$:IF CH$=""THEN 270
280 IF VAL(CH$)<1 OR VAL(CH$)>4 THEN 270
290 HPUT(140,5)-(400,56),1,PSET
300 ON VAL(CH$) GOTO 750,750,340,570
310 '
320 '*** ROUTINE FOR SELECTION 3 ***
330 '
340 PALETTE 2,50:PALETTE 3,38
350 HCOLOR 2:HPRINT(1,1),"Word Practice.....":HCOLOR 3:HPRINT(56,1),"'?' at prompt=MENU":HCOLOR 1,0
360 HPRINT(63,3),"DON'T WORRY":HPRINT(63,4),"ABOUT SPEED"
370 HCOLOR 2:HLINE(500,20)-(594,42),PSET,B
380 HCOLOR 1:HPRINT(14,6),"Repeat These Exercises Until You Can Type Them Smoothly"
390 FOR E=1 TO 18
400 HPRINT(20,2),"Here is your word....":HPRINT(42,2),C$(E)
410 HCOLOR 2:HPRINT(34,3),"Type....":HCOLOR 1
420 AN$=""
430 FOR LX=1 TO LEN(C$(E))
440 TP$=INKEY$:IF TP$=""THEN 440 ELSE IF TP$="?"THEN GOSUB 1560:GOTO 250 ELSE 450
450 AN$=AN$+TP$
460 HPRINT(42,3),AN$
470 NEXT LX
480 IF AN$=C$(E) THEN PLAY"T130V15O3EO4EO5EP32O3EO4EO5E"
490 IF AN$<>C$(E) THEN PALETTE 0,53:PLAY"O1T64CG":PALETTE 0,0:E=E-1
500 HCOLOR 0:HPRINT(42,2),C$(E):HPRINT(42,3),AN$:HCOLOR 1
510 NEXT E
520 GOTO 390
530 GOTO 530
540 '
550 ' *** ROUTINE FOR PHRASE EXERCISES
560 '
570 PALETTE 2,27:PALETTE 3,46
580 HCOLOR 2:HPRINT(1,1),"Words and Sentence Accuracy....":HCOLOR 3:HPRINT(60,1),"'?'at prompt=MENU":HCOLOR 1:TC=0
590 HPRINT(14,6),"24 Correct Required!":HCOLOR 2:HPRINT(50,6),"Correct=":HPRINT(59,6),TC:HPRINT(60,2),"<RET>=ABORT"
600 FOR E=1 TO 12
610 HCOLOR 2:HPRINT(1,2),"Your Phrase Is....":HCOLOR 1:HPRINT(20,2),D$(E)
620 HCOLOR 3:HPRINT(14,3),"Type->":HCOLOR 1
630 AN$=""
640 FOR LX=1 TO LEN(D$(E))
650 TP$=INKEY$:IF TP$=""THEN 650 ELSE IF TP$="?"THEN GOSUB 1560:GOTO 250 ELSE IF TP$=CHR$(13) THEN 690 ELSE 660
660 AN$=AN$+TP$
670 HPRINT(20,3),AN$:NEXT LX
680 IF AN$=D$(E) THEN PLAY"T130V15O3EO4EO5EP32O3EO4EO5E":HCOLOR 0:HPRINT(59,6),TC:TC=TC+1:HCOLOR 2:HPRINT(59,6),TC:HCOLOR 1:IF TC=24 THEN 1050
690 IF AN$<>D$(E) THEN PALETTE 0,53:PLAY"O1T64CG":PALETTE 0,0:E=E-1
700 HCOLOR 0:HPRINT(20,2),D$(E):HPRINT(20,3),AN$:HCOLOR 1
710 NEXT E
720 '
730 '*** ROUTINES FOR SELECTIONS 1 AND 2
740 '
750 PALETTE 2,53:PALETTE 3,36:FOR E=1 TO 36:TI=0:IF VAL(CH$)=1 THEN HPRINT(1,1),"Beginners Exercises" ELSE HPRINT(1,1),"Advanced Exercises"
760 HCOLOR 3:HPRINT(60,1),"'?'at prompt=MENU"
770 HCOLOR 2:HPRINT(1,2),"Here is the Exercise...."
780 HCOLOR 1:HPRINT(23,6),"Type Each Exercise Correctly 4 Times"
790 IF VAL(CH$)=1 THEN HPRINT(26,2),A$(E) ELSE HPRINT(26,2),B$(E)
800 HCOLOR 2:HPRINT(61,2),"Times Perfect=":HPRINT(75,2),TI
810 HCOLOR 1:HPRINT(24,3),"->"
820 AN$=""
830 FOR LX=1 TO 4
840 TP$=INKEY$:IF TP$=""THEN 840 ELSE IF TP$="?"THEN GOSUB 1560:GOTO 250
850 AN$=AN$+TP$
860 HCOLOR 2:HPRINT(26,3),AN$
870 NEXT
880 IF AN$=A$(E) OR AN$=B$(E) THEN PLAY"T255O5CDEFG":HCOLOR 0:HPRINT(75,2),TI:HCOLOR 2:TI=TI+1:HPRINT(75,2),TI:HCOLOR 1
890 IF CH$="1"AND AN$<>A$(E) OR CH$="2" AND AN$<>B$(E) THEN PALETTE 0,53:PLAY"O1T64CEG":FOR DL=1 TO 10:NEXT:PALETTE 0,0
900 HCOLOR 0:HPRINT(26,3),AN$
910 IF CH$="1" AND TI=4 THEN HCOLOR 0:HPRINT(26,2),A$(E):HCOLOR 1:NEXT ELSE IF CH$="1" THEN GOTO 820
920 IF CH$="2" AND TI=4 THEN HCOLOR 0:HPRINT(26,2),B$(E):HCOLOR 1:NEXT ELSE GOTO 820
930 '
940 '** This is the GRADUATION Certificate
950 '
960 PALETTE RGB:WIDTH 40:HSCREEN 2:HCLS 8
970 HCOLOR 1
980 HLINE(0,0)-(319,191),PSET,B
990 HDRAW"BM240,50;C1U20E20R30F20D20G20L30H20"
1000 HPAINT(260,40),1,1
1010 HCOLOR 3:HPRINT(32,4),"GOLD-":HPRINT(32,5),"MEDAL":HLINE(248,27)-(300,52),PSET,B
1020 HCOLOR 2:HPRINT(34,2),"*":HPRINT(34,7),"*"
1030 HCOLOR 5:HPRINT(5,5),"GRADUATION CERTIFICATE"
1040 HCOLOR 7:HLINE(24,32)-(230,52),PSET,B:HCOLOR 0:HLINE(22,30)-(232,54),PSET,B
1050 HCOLOR 4:HPRINT(2,12),"You are hereby awarded a certificate":HPRINT(3,14),"for the 'CC-3 TYPING TUTOR COURSE'"
1060 HCOLOR 3:HLINE(10,82)-(310,126),PSET,B
1070 HCOLOR 5:HPRINT(1,16),STRING$(38,"*")
1080 HCOLOR 3:HPRINT(1,18),STRING$(38,"*")
1090 HCOLOR 1:HPRINT(1,20),STRING$(38,"*")
1100 AK$=INKEY$:IF AK$=""THEN 1100 ELSE 1840
1110 '
1120 '** Here is where the KEYBOARD is created
1130 '
1140 PALETTE RGB:WIDTH 80
1150 PALETTE 0,0:PALETTE 3,8
1160 PALETTE 1,255:PALETTE 2,54
1170 HSCREEN 4:HCOLOR 1,0
1180 HCLS 0:HGET(140,5)-(400,56),1
1190 HLINE(20,100)-(600,190),PSET,B:HLINE(5,70)-(615,195),PSET,B
1200 HPRINT(3,14),"   1    2    3    4    5    6    7    8    9    0    :   -         esc"
1210 HPRINT(2,16),"  alt   Q    W    E    R    T    Y    U    I    O    P    @   clr   ^"
1220 HPRINT(3,18),"  ctr   A    S    D    F    G    H    J    K     L    ;   ent  lf   rt"
1230 HPRINT(4,20),"  shft   Z    X    C    V    B    N    M    ,    .    /   shft  dwn"
1240 HPRINT(64,22)," F1   F2"
1250 HLINE(32,108)-(505,122),PSET,B:HLINE(550,108)-(590,122),PSET,B
1260 FOR L=72 TO 505 STEP 40:HLINE(L,108)-(L,122),PSET:NEXT L
1270 HLINE(26,124)-(585,138),PSET,B
1280 FOR L=66 TO 560 STEP 40:HLINE(L,124)-(L,138),PSET:NEXT L
1290 HLINE(32,140)-(590,154),PSET,B
1300 FOR L=72 TO 590 STEP 40:HLINE(L,140)-(L,154),PSET:NEXT L
1310 HLINE(45,156)-(585,170),PSET,B
1320 FOR L=88 TO 560 STEP 40:HLINE(L,156)-(L,170),PSET:NEXT L
1330 HLINE(95,172)-(485,186),PSET,B:HLINE(510,172)-(586,186),PSET,B:HLINE(548,172)-(548,186),PSET
1340 HPAINT(10,85),1,1
1350 HCOLOR 3,1:HLINE(80,87)-(500,96),PSET,BF
1360 HCOLOR 1,4:HPRINT(18,11),"COCO III Typing Tutor....by L. Hyre"
1370 HCOLOR 2,1
1380 HLINE(0,0)-(619,60),PSET,B:HLINE(4,2)-(616,58),PSET,B:HCOLOR 1,0
1390 HPAINT(90,142),3,1:HPAINT(140,142),3,1:HPAINT(180,142),3,1:HPAINT(220,142),3,1:HPAINT(340,142),3,1:HPAINT(380,142),3,1:HPAINT(420,142),3,1:HPAINT(460,142),3,1:HPAINT(560,120),3,1
1400 RETURN
1410 '
1420 '*** DATA FOR EXERCISES READ IN FROM HERE ***
1430 '
1440 FOR X=1 TO 36:READ A$(X):NEXT:FOR X=1 TO 36:READ B$(X):NEXT:FOR X=1 TO 18:READ C$(X):NEXT:FOR X= 1 TO 12:READ D$(X):NEXT
1450 DATA SFAD,FADS,KJL;,J;LK,GHTU,UGHT,WEVN,VEWQ,INOP,PINO,ZXTR,BRNY,CLOS,SEKP,TYUI,REOP,MVWH,DALK,VBNC,ZXCV,DEKI,AIAI,SUEA,QWOI,KSDJ,FDSA,JKLO,QWTR,OICN,NOQZ,HG;A,SLKD,YTOW,QOEI,ERLM,PSTR
1460 DATA A1S2,D3F5,T4Y5,7K86,POQW,D3L0,J5K1,0932,D012,PCB4,CR45,USA0,Z021,MO3D,L0O9,DR13,PR3V,ZPR6,NHU8,H0DX,XYP3,01CE,NL90,SL02,P03C,X09E,MOT5,9371,C0Z3,FH03,DX34,NL90,HNLZ,ZN37,CDE3,LKN8
1470 DATA DOWNTOWN,EVERYDAY,ANTICIPATE,MERIDIAN,MAXIMUM,IMITATE,ZESTFUL,UNDERSTAND,OVERCOME
1480 DATA MEANINGFUL,XYLOPHONE,SCHOOLING,PHOTOGRAPH,EXONERATE,INTERFACE,COMPUTER,GREATEST,MAGAZINE
1490 DATA NOW IS THE TIME FOR ALL GOOD MEN,EVERY GOOD BOY WILL HAVE HIS DAY,THERE IS NOTHING STOPPING ME NOW,ROSES ARE RED-VIOLETS ARE VIOLET,MANY A GOOD MAN HAS GONE ASTRAY,I LOVE TO TYPE WITH MY OWN TANDY,THE SLY FOX WILL GET THE CHICKEN
1500 DATA COMPUTERS ARE NOT ACTUALLY SMART,HE LIKES TO WRITE HIS OWN STORIES,OSTRICHES ARE VERY STRANGE BIRDS,PLUTO AND CHARON ARE FAR DISTANT,DANCING AND SINGING CELEBRATIONS
1510 RETURN
1520 '
1530 '** This CLEARS the MENU and WORK Areas
1540 '
1550 PLAY"T10N$=A$(E) OR AN$=B$(E) THEN HPRINT( 4,77:PRINT TI;:PLAY"O5C"
1560 E=1:HPUT(8,5)-(268,56),1,PSET
1570 HPUT(355,5)-(615,56),1,PSET
1580 HPUT(140,5)-(400,56),1,PSET
1590 RETURN
1600 '
1610 '** The TITLE ROUTINE is here
1620 '
1630 PALETTE RGB:WIDTH 40:HSCREEN 2:HCLS 3
1640 HCOLOR 1:HLINE(50,10)-(280,30),PSET,BF:HCOLOR 14:HPRINT(9,2),"The CC-III TYPING TUTOR":HCOLOR 2:HLINE(52,13)-(278,27),PSET,B
1650 HCOLOR 14:HLINE(50,120)-(270,170),PSET,B:HLINE(52,122)-(268,168),PSET,B
1660 HPAINT(55,130),4,14:KEY$="U4R9D4R2U4R9D4R2U4R9D4R2U4R9D4R2U4R9D4R2"
1670 KEY$=KEY$+KEY$+KEY$:HDRAW"BM70,160;C14;XKEY$;U4R9D4;"
1680 HDRAW"BM70,153;C14;XKEY$;U4R9D4;":HDRAW"BM70,146;C14;XKEY$;U4R9D4;":HDRAW"BM70,139;C14;XKEY$;U4R9D4;"
1690 HCOLOR 4:HLINE(42,118)-(280,100),PSET,B:HCOLOR 2:HPAINT(50,105),2,4
1700 HCOLOR 14:HLINE(32,95)-(41,125),PSET,BF
1710 HLINE(290,95)-(281,125),PSET,BF
1720 HLINE(68,165)-(248,130),PSET,B
1730 HDRAW"BM120,129;C14;E8R62F8"
1740 HCOLOR 4:HLINE(90,112)-(228,102),PSET,BF
1750 HCOLOR 14:T1$="COCO III":FOR X=1 TO LEN(T1$):HPRINT(16,13),LEFT$(T1$,X):PLAY"T32O1CP32E":NEXT:HCOLOR 4:HLINE(90,102)-(228,92),PSET,BF:PLAY"O5EO4EO5P30E":HPRINT(16,13),T1$
1760 HCOLOR 14:HPRINT(16,12),T1$
1770 T2$="Typing Tutor":FOR X=1 TO LEN(T2$):HPRINT(14,13),LEFT$(T2$,X):PLAY"T32O1DCP32E":NEXT
1780 HCOLOR 4:HLINE(90,92)-(228,82),PSET,BF:PLAY"O5EO4EP32O5E":HPRINT(16,12),T1$:HPRINT(14,13),T2$:HCOLOR 14:HPRINT(16,11),T1$:HPRINT(14,12),T2$
1790 T3$="by L. Hyre":FOR X=1 TO LEN(T3$):HPRINT(15,13),LEFT$(T3$,X):PLAY"T32O1DCP32E":NEXT
1800 FOR TM=1 TO 1200:NEXT:RETURN
1810 '
1820 '** ON BRK comes here to clean up the act!
1830 '
1840 WIDTH 32:SCREEN 0:CLS:POKE 65496,0:PRINT"NORMAL SPEED RESTORED":PRINT"PROGRAM STOPPED":END
