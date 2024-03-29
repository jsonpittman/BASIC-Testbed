100 ' R*L*D*X PROGRAM
110 ' COPYRIGHT 1990 WILLIAM BARDEN, JR.
120 ' DATA DICTIONARY
130 ' A$=WORKING STRING
140 ' B$=WORKING STRING
150 ' C=COLUMN FOR EDIT MODE
160 ' F$()=FIELD ARRAY
170 ' HD=HEAD OF LIST
180 ' I=WORKING INDEX
190 ' J=WORKING INDEX
200 ' K=WORKING INDEX
210 ' MD$=MODE NAME
220 ' NU=NUMBER OF ENTRIES
230 ' P()=POINTER ARRAY LINKS AHEAD AND BEHIND
240 ' PA=ENTRY AFTER CURRENT
250 ' PB=ENTRY BEFORE CURRENT
260 ' PI=CURRENT ENTRY (ONE DISPLAYED COMPLETELY)
270 ' PT=TEMPORARY POINTER
280 ' R=ROW FOR EDIT MODE
290 ' RC=REMOVE CARD, 1 IF CARD REMOVED
300 ' T$=FIELD ARRAY FOR EDIT MODE
310 ' T1=TEMPORARY VARIABLE
320 ' T2=TEMPORARY VARIABLE
330 ' T3=TEMPORARY VARIABLE
340 ' TL=TAIL OF LIST
350 ' Z$()=STRING ARRAY FOR CARDS
360 CLEAR 10000
370 HBUFF 1,6500
380 HBUFF 2,680
390 DIM Z$(499)
400 DIM P(499)
410 HSCREEN 4
420 HCLS
430 HGET (321,88)-(639,167),1
440 HGET (321,72)-(639,79),2
450 NU=0
460 PI=1023: PA=1023: PB=1023
470 RC=-1
480 MD$="COMMAND"
490 FOR I=1 TO 499:P(I)=-2:NEXT
500 P(0)=1023*1024+1023: Z$(0)="STARTING CARD!FIELD 1!FIELD 2!":HD=0: NU=1: TL=0
510 PI=HD: GOSUB 1060: GOSUB 1250: GOSUB 1390
520 MD$="COMMAND": GOSUB 2710
530 C$=INKEY$: IF C$="" THEN GOTO 530
540 IF C$<>"R" THEN GOTO 610
550 MD$="READ?": GOSUB 2710
560 C$=INKEY$: IF C$="" THEN GOTO 560 ELSE IF C$<>"R" THEN GOTO 610
570 MD$="READ??": GOSUB 2710
580 C$=INKEY$: IF C$="" THEN GOTO 580 ELSE IF C$<>"R" THEN GOTO 610
590 MD$="READ": GOSUB 2710
600 GOSUB 2300: GOTO 520
610 IF C$="W" THEN MD$="WRITE": GOSUB 2710: GOSUB 2230: GOTO 520
620 IF C$<>CHR$(10) THEN GOTO 650
630 GOSUB 1060: IF PA=1023 THEN PI=HD ELSE PI=PA
640 GOSUB 1060: GOSUB 1390: GOTO 520
650 IF C$<>CHR$(94) THEN GOTO 680
660 GOSUB 1060: IF PB=1023 THEN PI=TL ELSE PI=PB
670 GOSUB 1060: GOSUB 1390: GOTO 520
680 IF C$="P" THEN GOSUB 1670: GOTO 520
690 IF C$="D" THEN GOSUB 1830: GOTO 520
700 IF C$="I" THEN GOSUB 1900: GOTO 520
710 IF C$="N" THEN GOSUB 2120: GOTO 520
720 IF C$="E" THEN GOSUB 2380: GOTO 520
730 IF C$<>CHR$(8) THEN GOTO 760
740 FOR I=1 TO 10: GOSUB 1060: IF PA=1023 THEN PI=HD ELSE PI=PA
750 GOSUB 1060: NEXT: GOSUB 1390: GOTO 520
760 IF C$<>CHR$(9) THEN GOTO 790
770 FOR I=1 TO 10: GOSUB 1060: IF PB=1023 THEN PI=TL ELSE PI=PB
780 GOSUB 1060: NEXT: GOSUB 1390: GOTO 520
790 GOTO 520
800 '
810 ' INSERT ENTRY
820 FOR I=0 TO 499: IF P(I)=-2 THEN GOTO 840 ELSE NEXT
830 PI=1023: GOTO 930
840 P(I)=PA*1024+PB
850 IF PB=1023 THEN GOTO 870
860 T1=P(PB)-INT(P(PB)/1024)*1024: P(PB)=I*1024+T1
870 IF PA=1023 THEN GOTO 900
880 T1=INT(P(PA)/1024): P(PA)=T1*1024+I
890 P(PA)=T1*1024+I
900 Z$(I)=A$: NU=NU+1
910 IF HD=1023 THEN HD=I
920 PI=I: GOSUB 1060
930 RETURN
940 '
950 ' DELETE ENTRY
960 PA=INT(P(PI)/1024): PB=P(PI)-PA*1024: P(PI)=-2: NU=NU-1
970 IF NU=0 THEN HD=1023
980 Z$(PI)=""
990 IF PB=1023 THEN GOTO 1010
1000 T3=P(PB)-INT(P(PB)/1024)*1024: P(PB)=PA*1024+T3
1010 IF PA=1023 THEN GOTO 1030
1020 T3=INT(P(PA)/1024): P(PA)=T3*1024+PB
1030 RETURN
1040 '
1050 ' GET CURRENT ENTRY
1060 IF PI=1023 THEN PA=1023: PB=1023: A$="": GOTO 1080
1070 A$=Z$(PI): PA=INT(P(PI)/1024): PB=P(PI)-PA*1024
1080 RETURN
1090 '
1100 ' PACK STRING
1110 A$=""
1120 FOR J=0 TO 9: A$=A$+F$(J)+"!": NEXT
1130 RETURN
1140 '
1150 ' UNPACK STRING
1160 B$=A$
1170 FOR J=0 TO 9: F$(J)="": NEXT
1180 FOR J=0 TO 9: K=INSTR(B$,"!")
1190 IF K=0 THEN F$(J)=B$: GOTO 1220
1200 F$(J)=LEFT$(B$,K-1): B$=RIGHT$(B$,LEN(B$)-K)
1210 NEXT
1220 RETURN
1230 '
1240 ' DISPLAY CARDS ON SCREEN
1250 IF NU=0 THEN GOTO 1360
1260 HCLS
1270 GOSUB 2710
1280 HLINE (0,0)-(639,191),PSET,B
1290 HLINE (321,80)-(638,191),PSET,B
1300 HCIRCLE (420,184),6: HCIRCLE (540,184),6
1310 IF NU>1 THEN HLINE (320,64)-(638,191),PSET,B
1320 IF NU>2 THEN HLINE (320,48)-(638,191),PSET,B
1330 IF NU>3 THEN HLINE (320,32)-(638,191),PSET,B
1340 IF NU>4 THEN HLINE (320,16)-(638,191),PSET,B
1350 IF NU>5 THEN HLINE (320,0)-(638,191),PSET,B
1360 RETURN
1370 '
1380 ' DISPLAY CARD TEXT
1390 T1=PI
1400 HPUT (328,88)-(631,167),1,PSET
1410 HPUT (328,72)-(631,79),2,PSET
1420 HPUT (328,56)-(631,63),2,PSET
1430 HPUT (328,40)-(631,47),2,PSET
1440 HPUT (328,24)-(631,31),2,PSET
1450 HPUT (328,8)-(631,15),2,PSET
1460 GOSUB 1060
1470 GOSUB 1160
1480 FOR J=0 TO 9: HPRINT (41,11+J), F$(J): NEXT
1490 IF NU<2 THEN GOTO 1640
1500 IF PA=1023 THEN PI=HD: GOSUB 1060 ELSE PI=PA: GOSUB 1060
1510 HPRINT (41,9), LEFT$(A$,38)
1520 IF NU<3 THEN GOTO 1640
1530 IF PA=1023 THEN PI=HD: GOSUB 1060 ELSE PI=PA: GOSUB 1060
1540 HPRINT (41,7), LEFT$(A$,38)
1550 IF NU<4 THEN GOTO 1640
1560 IF PA=1023 THEN PI=HD: GOSUB 1060 ELSE PI=PA: GOSUB 1060
1570 HPRINT (41,5), LEFT$(A$, 38)
1580 IF NU<5 THEN GOTO 1640
1590 IF PA=1023 THEN PI=HD: GOSUB 1060 ELSE PI=PA: GOSUB 1060
1600 HPRINT (41,3), LEFT$(A$,38)
1610 IF NU<6 THEN GOTO 1640
1620 IF PA=1023 THEN PI=HD: GOSUB 1060 ELSE PI=PA: GOSUB 1060
1630 HPRINT (41,1), LEFT$(A$,38)
1640 PI=T1: RETURN
1650 '
1660 ' PULL CARD
1670 IF RC=1 THEN GOTO 1800
1680 IF PI=1023 THEN GOTO 1800
1690 GOSUB 1060: PT=PA: T$=A$: GOSUB 960: PI=PT: GOSUB 1060
1700 IF NU<6 THEN GOSUB 1250
1710 GOSUB 1390: A$=T$: GOSUB 1160
1720 FOR J=0 TO 9: T$(J)=LEFT$(F$(J)+STRING$(38," "),38): NEXT
1730 HLINE (1,40)-(319,40),PSET
1740 HLINE (1,152)-(319,152),PSET
1750 HLINE (319,40)-(319,152),PSET
1760 HPUT (8,48)-(311,117),1,PSET
1770 HCIRCLE (100,144),6: HCIRCLE (220,144),6
1780 FOR J=0 TO 9: HPRINT (1,6+J),T$(J): NEXT
1790 RC=1
1800 RETURN
1810 '
1820 ' DELETE CARD
1830 IF PI=1023 THEN GOTO 1870
1840 GOSUB 1060: PT=PA: GOSUB 960: PI=PT: GOSUB 1060
1850 IF NU<6 THEN GOSUB 1250
1860 GOSUB 1390
1870 RETURN
1880 '
1890 ' INSERT CARD
1900 IF RC<>1 THEN GOTO 2080
1910 GOSUB 1060
1920 FOR I=0 TO 9
1930 IF T$(I)=STRING$(38," ") THEN F$(I)="": GOTO 1990
1940 FB=-1
1950 FOR J=LEN(T$(I)) TO 1 STEP -1
1960 IF MID$(T$(I),J,1)<>" " AND FB=-1 THEN FB=J
1970 NEXT
1980 F$(I)=LEFT$(T$(I),FB)
1990 NEXT
2000 GOSUB 1110: PA=PI: GOSUB 820: GOSUB 1060: IF PB=1023 THEN HD=PI
2010 GOSUB 1060: GOSUB 1250: GOSUB 1390
2020 HLINE (1,40)-(319,40),PRESET
2030 HLINE (1,152)-(319,152),PRESET
2040 HLINE (319,40)-(319,152),PRESET
2050 HCIRCLE (100,144),6,0: HCIRCLE (220,144),6,0
2060 HPUT (8,48)-(311,117),1,PSET
2070 RC=-1
2080 RETURN
2090 '
2100 RETURN
2110 ' NEW CARD
2120 IF RC=1 THEN GOTO 2150
2130 FOR I=0 TO 9: T$(I)=STRING$(38," "): NEXT: GOSUB 1730
2140 GOSUB 2380: RC=1
2150 RETURN
2160 '
2170 ' EDIT MODE
2180 IF RC<>1 THEN GOTO 2200
2190 GOSUB 2380
2200 RETURN
2210 '
2220 ' WRITE FILE
2230 OPEN "O", #1, "ROLDATA"
2240 WRITE#1, HD, NU, TL
2250 FOR I=0 TO 499: WRITE#1,P(I),Z$(I): NEXT
2260 CLOSE
2270 RETURN
2280 '
2290 ' READ FILE
2300 OPEN "I", #1, "ROLDATA"
2310 INPUT#1,HD, NU, TL
2320 FOR I=0 TO 499: INPUT#1,P(I),Z$(I): NEXT
2330 PI=HD: GOSUB 1060
2340 GOSUB 1250: GOSUB 1390: CLOSE
2350 RETURN
2360 '
2370 ' EDIT ON SCREEN
2380 IF RC<>1 THEN GOTO 2510
2390 R=6: C=1: MD$="EDIT": GOSUB 2710
2400 GOSUB 2540: GOSUB 2630
2410 IF C$=CHR$(10) THEN IF R=15 THEN GOTO 2400 ELSE GOSUB 2580:R=R+1: GOTO 2400
2420 IF C$=CHR$(94) THEN IF R=6 THEN GOTO 2400 ELSE GOSUB 2580:R=R-1: GOTO 2400
2430 IF C$=CHR$(9) THEN IF C=38 THEN GOTO 2400 ELSE GOSUB
2440 IF C$=CHR$(8) THEN IF C=1 THEN GOTO 2400 ELSE GOSUB 2580:C=C-1: GOTO 2400
2450 IF C$=CHR$(13) THEN GOSUB 2580: IF R=15 THEN C=1: GOTO 2400 ELSE R=R+1: C=1: GOTO 2400
2460 IF C$<CHR$(32) THEN IF C$=CHR$(12) THEN GOTO 2510
2470 GOSUB 2670: HPRINT (C,R), C$: MID$(T$(R-6),C,1)=C$
2480 C=C+1: IF C=39 THEN C=1: R=R+1
2490 IF R=16 THEN R=15
2500 GOTO 2400
2510 RETURN
2520 '
2530 ' CURSOR DISPLAY
2540 HPRINT (C,R), CHR$(127)
2550 RETURN
2560 '
2570 ' CURSOR ERASE
2580 GOSUB 2670
2590 HPRINT (C,R),MID$(T$(R-6),C,1)
2600 RETURN
2610 '
2620 ' GET CHARACTER
2630 C$=INKEY$: IF C$="" THEN GOTO 2630
2640 RETURN
2650 '
2660 ' ERASE CP
2670 HPUT (C*8,R*8)-((C*8)+7,(R*8)+7),1,PSET
2680 RETURN
2690 '
2700 ' TITLE
2710 HPRINT (1,22),"R*L*D*X PROGRAM"
2720 HPUT (144,176)-(318,183),1,PSET
2730 HPRINT (18,22), MD$
2740 HPRINT (26,22), NU
2750 HPRINT (30,22), "CARDS"
2760 RETURN
