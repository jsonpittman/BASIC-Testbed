10 '   **********************
20 '   *    C-I-P-H-E-R     *
30 '   *    BY C.BEDARD     *
40 '   *  106-3220 QUADRA   *
50 '   *   VICTORIA  B.C.   *
60 '   *  CANADA   V8X 1G3  *
70 '   * COPYRIGHT (C) 1986 *
80 '   **********************
90 '
100 '--------------------------
110 '   ***INITIALIZATION***
120 '--------------------------
130 CLEAR8000:DIMP$(217):Y=1:H=1184:C$="DISK SYSTEM  NOT OPERATIONAL":E$="THE PRINTER IS OFF LINE"
140 '--------------------------
150 '     ***FIRST MENU***
160 '--------------------------
170 CLS:PRINT@39,CHR$(43)+STRING$(15,CHR$(45))+CHR$(43)
180 PRINT@71,"+  C I P H E R  +"
190 PRINT@103,CHR$(43)+STRING$(15,CHR$(45))+CHR$(43)
200 PRINT@170,"THE  PSEUDO"
210 PRINT@200,CHR$(34)"ONE-TIME  PAD"CHR$(34)
220 PRINT@261,STRING$(21,CHR$(42))
230 PRINT@325,"WOULD YOU LIKE TO...."
240 PRINT@395,"(E)NCODE"
250 PRINT@427,"(D)ECODE"
260 PRINT@459,"(Q)UIT"
270 EXEC44539:A$=INKEY$
280 IFA$<>"E"ANDA$<>"D"ANDA$<>"Q"THEN270
290 IFA$="D"THEN1580
300 IFA$="Q"THENCLS:NEW
310 '-------------------------
320 '  ***INPUT PLAINTEXT***
330 '  *** FROM KEYBOARD ***
340 '-------------------------
350 CLS:I=3456:PRINT@36,"ENTER  PLAIN  TEXT  AND"
360 PRINT@68,"PRESS <%> WHEN FINISHED"
370 PRINT@100,STRING$(23,CHR$(45)):PRINT
380 M=PEEK(136):L=PEEK(137):PRINT@26,I;:POKE136,M:POKE137,L
390 FORX=1TO15:A$=INKEY$
400 IFA$=""THENNEXTELSE450
410 POKE(H),95
420 FORX=1TO5:A$=INKEY$
430 IFA$=""THENNEXTELSE450
440 POKE(H),96:GOTO390
450 IFASC(A$)=8THENGOSUB2730:GOTO380
460 IFASC(A$)=32ORASC(A$)=39ORASC(A$)=44ORASC(A$)=46THEN490
470 IFASC(A$)=37THENP$(Y)=P$(Y)+A$:GOTO540
480 IFASC(A$)<65ORASC(A$)>90THEN390
490 PRINTA$;:I=I-1:H=H+1:IFH=1536THENH=1504
500 P$(Y)=P$(Y)+A$:C=C+1
510 IFC=32THENY=Y+1:C=0
520 IFI<>0THEN380
530 M=PEEK(136):L=PEEK(137):PRINT@26,I;:POKE136,M:POKE137,L:A$=CHR$(37):GOTO470
540 GOSUB2630
550 '-------------------------
560 '    ***SECOND MENU***
570 '-------------------------
580 CLS:G=RND(-F)
590 PRINT@36,"OUTPUT CIPHERTEXT TO...."
600 PRINT@68,STRING$(24,CHR$(45))
610 PRINT@139,"(S)CREEN"
620 PRINT@203,"(D)ISK"
630 PRINT@267,"(T)APE"
640 PRINT@331,"(P)RINTER"
650 PRINT@392,"OR (E)ND SESSION"
660 EXEC44539:A$=INKEY$
670 IFA$<>"D"ANDA$<>"T"ANDA$<>"P"ANDA$<>"S"ANDA$<>"E"THEN660
680 IFA$="T"THEN1020
690 IFA$="D"THEN1210
700 IFA$="P"THEN1370
710 IFA$="E"THENCLS:RUN
720 '-------------------------
730 ' ***OUTPUT CIPHERTEXT***
740 ' ***    TO SCREEN    ***
750 '-------------------------
760 GOSUB2920:PRINT" ";:V=0:W=0:FORX=1TOY:FORZ=1TOLEN(P$(X))
770 P=ASC(MID$(P$(X),Z,1))
780 IFP=32ORP=37ORP=39ORP=44ORP=46THEN800
790 P=137-P
800 P=P+RND(27)
810 A$=MID$(STR$(P),2,1)
820 PRINTA$;:W=W+1
830 IFW=5THENPRINT" ";:W=0:V=V+1
840 IFV=5THENPRINT"  ";:V=0
850 A$=RIGHT$(STR$(P),1)
860 PRINTA$;:W=W+1
870 IFW=5THENPRINT" ";:W=0:V=V+1
880 IFV=5THENPRINT"  ";:V=0
890 B$=INKEY$:IF(B$)<>CHR$(32)THEN910
900 B$="":B$=INKEY$:IF(B$)<>CHR$(32)THEN900:B$=""
910 NEXTZ:NEXTX
920 IFW=0ORW=5THEN940ELSEA$=STR$(RND(9))
930 PRINTMID$(A$,2,1);:W=W+1:GOTO920
940 PRINT:PRINT:PRINTSTRING$(7,CHR$(32))+STRING$(17,CHR$(45))
950 PRINT"       TO RETURN TO MENU"
960 PRINT"         PRESS ANY KEY":EXEC44539
970 GOTO580
980 '-------------------------
990 ' ***OUTPUT CIPHERTEXT***
1000 ' ***     TO TAPE     ***
1010 '-------------------------
1020 CLS:PRINT@34,"INSERT CASSETTE IN RECORDER"
1030 PRINT@69,"PRESS <RECORD> BUTTON"
1040 PRINT@99,"PRESS ANY KEY TO CONTINUE"
1050 PRINT@131,STRING$(25,CHR$(45)):EXEC44539
1060 GOSUB2810:GOSUB3000:W=0:OPEN"O",#-1,F$
1070 FORX=1TOY:FORZ=1TOLEN(P$(X))
1080 P=ASC(MID$(P$(X),Z,1))
1090 IFP=32ORP=37ORP=39ORP=44ORP=46THEN1110
1100 P=137-P
1110 P=P+RND(27)
1120 T$=T$+RIGHT$(STR$(P),2):W=W+1
1130 IFW=16THENPRINT#-1,T$:W=0:T$=""
1140 NEXTZ:NEXTX
1150 PRINT#-1,T$
1160 CLOSE#-1:GOTO580
1170 '-------------------------
1180 ' ***OUTPUT CIPHERTEXT***
1190 ' ***     TO DISK     ***
1200 '-------------------------
1210 CLS:IFPEEK(49152)<>68THENFORA=1TO6:PRINT@226,C$:FORB=1TO300:NEXTB:PRINT@226,"":FORB=1TO100:NEXTB:NEXTA:GOTO580
1220 GOSUB2960:GOSUB2810:GOSUB3000:W=0:OPEN"O",#1,F$+"/CFR"
1230 FORX=1TOY:FORZ=1TOLEN(P$(X))
1240 P=ASC(MID$(P$(X),Z,1))
1250 IFP=32ORP=37ORP=39ORP=44ORP=46THEN1270
1260 P=137-P
1270 P=P+RND(27)
1280 D$=D$+RIGHT$(STR$(P),2):W=W+1
1290 IFW=16THENPRINT#1,D$:W=0:D$=""
1300 NEXTZ:NEXTX
1310 PRINT#1,D$
1320 CLOSE#1:GOTO580
1330 '-------------------------
1340 ' ***OUTPUT CIPHERTEXT***
1350 ' ***   TO  PRINTER   ***
1360 '-------------------------
1370 CLS:IFPEEK(65314)AND1THENFORA=1TO6:PRINT@228,E$:FORB=1TO300:NEXTB:PRINT@228,"":FORB=1TO100:NEXTB:NEXTA:GOTO580
1380 GOSUB2880:GOSUB3000:PRINT#-2:PRINT#-2," ";:V=0:W=0:FORX=1TOY:FORZ=1TOLEN(P$(X))
1390 P=ASC(MID$(P$(X),Z,1))
1400 IFP=32ORP=37ORP=39ORP=44ORP=46THEN1420
1410 P=137-P
1420 P=P+RND(27)
1430 A$=MID$(STR$(P),2,1)
1440 PRINT#-2,A$;:W=W+1
1450 IFW=5THENPRINT#-2," ";:W=0:V=V+1
1460 IFV=13THENPRINT#-2,"  ";:V=0
1470 A$=RIGHT$(STR$(P),1)
1480 PRINT#-2,A$;:W=W+1
1490 IFW=5THENPRINT#-2," ";:W=0:V=V+1
1500 IFV=13THENPRINT#-2,"  ";:V=0
1510 NEXTZ:NEXTX
1520 IFW=0ORW=5THEN1540ELSEA$=STR$(RND(9))
1530 PRINT#-2,MID$(A$,2,1);:W=W+1:GOTO1520
1540 PRINT#-2:PRINT#-2:GOTO580
1550 '------------------------
1560 '    ***THIRD MENU***
1570 '------------------------
1580 CLS:PRINT@36,"INPUT CIPHERTEXT FROM..."
1590 PRINT@68,STRING$(24,CHR$(45))
1600 PRINT@171,"(K)EYBOARD"
1610 PRINT@235,"(D)ISK"
1620 PRINT@299,"(T)APE"
1630 PRINT@360,"OR (E)ND SESSION"
1640 EXEC44539:A$=INKEY$
1650 IFA$<>"K"ANDA$<>"D"ANDA$<>"T"ANDA$<>"E"THEN1640
1660 IFA$="T"THEN1970
1670 IFA$="D"THEN2090
1680 IFA$="E"THENRUN
1690 '------------------------
1700 ' ***INPUT CIPHERTEXT***
1710 ' *** FROM  KEYBOARD ***
1720 '------------------------
1730 CLS:I=6912:PRINT@36,"ENTER  CIPHER  TEXT AND"
1740 PRINT@68,"PRESS <%> WHEN FINISHED"
1750 PRINT@100,STRING$(23,CHR$(45)):PRINT
1760 M=PEEK(136):L=PEEK(137):PRINT@26,I;:POKE136,M:POKE137,L
1770 FORX=1TO15:A$=INKEY$
1780 IFA$=""THENNEXTELSE1830
1790 POKE(H),95
1800 FORX=1TO5:A$=INKEY$
1810 IFA$=""THENNEXTELSE1830
1820 POKE(H),96:GOTO1770
1830 IFASC(A$)=8THENGOSUB2730:GOTO1760
1840 IFASC(A$)=32THENPRINTA$;:H=H+1:GOTO1770
1850 IFASC(A$)=37THENP$(Y)=P$(Y)+A$:GOTO1920
1860 IFASC(A$)<48ORASC(A$)>57THEN1770
1870 PRINTA$;:I=I-1:H=H+1:IFH=1536THENH=1504
1880 P$(Y)=P$(Y)+A$:C=C+1
1890 IFC=32THENY=Y+1:C=0
1900 IFI<>0THEN1760
1910 M=PEEK(136):L=PEEK(137):PRINT@26,I;:POKE136,M:POKE137,L:A$=CHR$(37):GOTO1850
1920 GOSUB2630:GOTO2180
1930 '------------------------
1940 ' ***INPUT CIPHERTEXT***
1950 ' ***   FROM  TAPE   ***
1960 '------------------------
1970 CLS:PRINT@34,"INSERT CASSETTE IN RECORDER"
1980 PRINT@70,"PRESS <PLAY> BUTTON"
1990 PRINT@99,"PRESS ANY KEY TO CONTINUE"
2000 PRINT@131,STRING$(25,CHR$(45)):EXEC44539
2010 GOSUB2810:GOSUB3000:OPEN"I",#-1,F$
2020 IFEOF(-1)=-1THEN2040
2030 INPUT#-1,P$(Y):Y=Y+1:GOTO2020
2040 CLOSE#-1:GOSUB2630:GOTO2180
2050 '------------------------
2060 ' ***INPUT CIPHERTEXT***
2070 ' ***   FROM  DISK   ***
2080 '------------------------
2090 CLS:IFPEEK(49152)<>68THENFORA=1TO6:PRINT@226,C$:FORB=1TO300:NEXTB:PRINT@226,"":FORB=1TO100:NEXTB:NEXTA:GOTO1580
2100 GOSUB2960:GOSUB2810:GOSUB3000:OPEN"I",#1,F$+"/CFR"
2110 IFEOF(1)=-1THEN2140
2120 INPUT#1,P$(Y):Y=Y+1
2130 GOTO2110
2140 CLOSE#1:GOSUB2630
2150 '-------------------------
2160 '    ***FOURTH MENU***
2170 '-------------------------
2180 CLS:G=RND(-F)
2190 PRINT@37,"OUTPUT PLAINTEXT TO..."
2200 PRINT@69,STRING$(22,CHR$(45))
2210 PRINT@171,"(S)CREEN"
2220 PRINT@235,"(P)RINTER"
2230 PRINT@296,"OR (E)ND SESSION"
2240 EXEC44539:A$=INKEY$
2250 IFA$<>"P"ANDA$<>"S"ANDA$<>"E"THEN2240
2260 IFA$="P"THEN2500
2270 IFA$="E"THENRUN
2280 '------------------------
2290 ' ***OUTPUT PLAINTEXT***
2300 ' ***   TO  SCREEN   ***
2310 '------------------------
2320 GOSUB2920:FORX=1TOY:FORZ=1TOLEN(P$(X))STEP2
2330 P=VAL(MID$(P$(X),Z,2))
2340 P=P-RND(27)
2350 IFP=32ORP=39ORP=44ORP=46THEN2380
2360 IFP=37THEN2420
2370 P=137-P
2380 PRINTCHR$(P);
2390 B$=INKEY$:IF(B$)<>CHR$(32)THEN2410
2400 B$="":B$=INKEY$:IF(B$)<>CHR$(32)THEN2400:B$=""
2410 NEXTZ:NEXTX
2420 PRINT:PRINT:PRINTSTRING$(7,CHR$(32))+STRING$(17,CHR$(45))
2430 PRINT"       TO RETURN TO MENU"
2440 PRINT"         PRESS ANY KEY":EXEC44539
2450 GOTO2180
2460 '------------------------
2470 ' ***OUTPUT PLAINTEXT***
2480 ' ***   TO PRINTER   ***
2490 '------------------------
2500 CLS:IFPEEK(65314)AND1THENFORA=1TO6:PRINT@228,E$:FORB=1TO300:NEXTB:PRINT@228,"":FORB=1TO100:NEXTB:NEXTA:GOTO2180
2510 GOSUB2880:GOSUB3000:PRINT#-2:FORX=1TOY:FORZ=1TOLEN(P$(X))STEP2
2520 P=VAL(MID$(P$(X),Z,2))
2530 P=P-RND(27)
2540 IFP=32ORP=39ORP=44ORP=46THEN2570
2550 IFP=37THEN2590
2560 P=137-P
2570 PRINT#-2,CHR$(P);
2580 NEXTZ:NEXTX
2590 PRINT#-2:PRINT#-2:GOTO2180
2600 '-------------------------
2610 '  ***SEED SUBROUTINE***
2620 '-------------------------
2630 SOUND175,3
2640 PRINT:PRINT:INPUT" ENTER KEYWORD";K$
2650 IFK$=""GOTO2640
2660 FORX=1TOLEN(K$)
2670 F=F+ASC(MID$(K$,X,1))
2680 NEXTX:RETURN
2690 '------------------------
2700 '    ***LEFT ARROW***
2710 '    ***SUBROUTINE***
2720 '------------------------
2730 IFC=0ANDY=1THENRETURN
2740 IFC=0THENY=Y-1:C=32
2750 POKE(H),96:C=C-1:H=H-1:PRINTA$;
2760 P$(Y)=LEFT$(P$(Y),C):I=I+1:RETURN
2770 '-------------------------
2780 '    ***  SCREEN   ***
2790 '    ***SUBROUTINES***
2800 '-------------------------
2810 CLS:PRINT@38,"ENTER DATA FILE NAME"
2820 PRINT@70,"8-CHARACTERS OR LESS"
2830 PRINT@102,STRING$(20,CHR$(45)):PRINT:INPUTF$
2840 IFLEN(F$)>8THEN2810
2850 IFF$=""THENF$="CIPHER"
2860 RETURN
2870 '------------------------
2880 PRINT@36,"READY PRINTER AND PRESS"
2890 PRINT@68,"ANY KEY TO CONTINUE...."
2900 PRINT@100,STRING$(23,CHR$(45)):EXEC44539:RETURN
2910 '------------------------
2920 CLS:PRINT@35,"PRESS SPACE BAR TO TOGGLE"
2930 PRINT@67,"SCREEN WRITING ON AND OFF"
2940 PRINT@99,STRING$(25,CHR$(45)):PRINT:RETURN
2950 '------------------------
2960 PRINT@35,"INSERT WORK DISK IN DRIVE"
2970 PRINT@67,"PRESS ANY KEY TO CONTINUE"
2980 PRINT@99,STRING$(25,CHR$(45)):EXEC44539:RETURN
2990 '------------------------
3000 PRINT@267,"WORKING...":RETURN
3010 '------------------------
3020 '  ***END OF PROGRAM***
3030 '------------------------
