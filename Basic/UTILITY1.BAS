10 '****************************
20 '*                          *
30 '*       UTILITIES 1        *
40 '*                          *
50 '*   BY:  RAYMOND LUEDERS   *
60 '*      HANOVER PK, IL      *
70 '*                          *
80 '*                          *
90 '****************************
100 '
110 '
120 '
130 '
140 '
150 '
160 GOTO230
170 A=PEEK(116)*256+PEEK(117)-100:X=INT(A/256):Y=A-(X*256):FORI=A TO A +72:READB:POKEI,B:NEXTI:POKE362,126:POKE363,X:POKE364,Y:CLEAR200,A:DATA50,100,52,20,189,161,121,132,127,52,2,189,161,193,142,4,254,189,167,211,182,1,83,129,191,38,37
180 DATA53,22,150,255,129,8,38,7,90,39,31,48,31,32,15,129,32,37,22,129,123,36,18,193,249,36,14,167,128,92,189,162,130,52,20,32,201,53,22,151,255,57,198,1,32,251
190 CLS:PRINT:PRINT" KEY REPEAT NOW ACTIVATED."
200 PRINT" HOLD DOWN A KEY AND PRESS "
210 PRINT" THE <CLEAR> KEY.":PRINT:
220 END
230 '
240 CLS0
250 PRINT:PRINT" ARE YOU USING A COCO 3? (Y/N)  ";:
260 COCO$=INKEY$:IF COCO$="" THEN 260
270 IF COCO$="Y" THEN 280 ELSE 290
280 PALETTE12,0:PALETTE13,48:ON BRK GOTO 280:GOTO 300
290 IF COCO$="N" THEN 300 ELSE 260
300 GOTO3900
310 'DEFINITIONS FOR HI-RES CHR
320 LA$="BM+1,0U4E2F2D2BL4R4D2BR3"
330 LB$="BM+1,0U6R3F1D1G1BL3R3F1D1G1BL3R3BR4"
340 LD$="BM+1,0BR3E1U4H1L3D6R3BR4"
350 LE$="BM+1,0BR5BU6L5D3R3BL3D3R5BR3"
360 LI$="BM+1,0BU6R4BL2D6BL2R4BR3"
370 LL$="BM+1,0U6BD6R5BR3"
380 LM$="BM+1,0U6R1F2D1U1E2R1D6BR3"
390 LN$="BM+1,0U6F5BU5D6BR3
400 LO$="BM+1,0BR3L2H1U4E1R2F1D4G1BR4"
410 LR$="BM+1,0U6R3F1D1G1BL3R3F1D2BR3"
420 LS$="BM+1,0BU1F1R2E1U1H1L2H1U1E1R2F1BD5BR3"
430 LT$="BM+1,0BR6BU6L6BR3D6BR5"
440 LU$="BM+1,0BU6D5F1R3E1U5BD6BR3"
450 LY$="BM+1,0BU6D2F2E2U2BL2BD4D2BR5"
460 NO$(1)="BM+1,0BU4E2D6BR3"
470 NO$(9)="BM+1,0BU1F1R2E1U4H1L2G1D1F1R3BD3BR4"
480 NO$(8)="BM+1,0BR3L2H1U1E1H1U1E1R2F1D1G1L2BR2F1D1G1BR4"
490 NO$(6)="BM+1,0BR5BU5H1L2G1D4F1R2E1U1H1L3BD3BR6"
500 MUS$="O4;T10;V12;A;V9;A;V6;A;V3;A;V2;A;V1;A;"
510 'DISPLAY TITLE PAGE
520 PMODE4,1:PCLS:SCREEN1,1
530 PLAYMUS$
540 LINE(8,8)-(246,162),PSET,B
550 LINE(10,10)-(244,160),PSET,B
560 LINE(12,12)-(242,158),PSET,B
570 LINE(14,14)-(240,156),PSET,B
580 LINE(16,16)-(238,154),PSET,B
590 LINE(18,18)-(236,152),PSET,B
600 LINE(20,20)-(234,150),PSET,B
610 LINE(22,22)-(232,148),PSET,B
620 LINE(27,26)-(227,144),PSET,B
630 FOR X=1TO500:NEXT
640 DRAW"BM84,44;XLU$;XLT$;XLI$;XLL$;XLI$;XLT$;XLI$;XLE$;XLS$;"
650 DRAW"BM174,44;XNO$(1);"
660 FORX=1TO500:NEXT
670 DRAW"BM118,64;XLB$;XLY$;"
680 FORX=1TO500:NEXT
690 DRAW"BM67,104;XLR$;XLA$;XLY$;XLM$;XLO$;XLN$;XLD$;"
700 DRAW"BM134,104;XLL$;XLU$;XLE$;XLD$;XLE$;XLR$;XLS$;"
710 FORX=1TO500:NEXT
720 DRAW"BM66,104;XLR$;XLA$;XLY$;XLM$;XLO$;XLN$;XLD$;"
730 FORX=1TO200:NEXT
740 DRAW"BM133,104;XLL$;XLU$;XLE$;XLD$;XLE$;XLR$;XLS$;"
750 FORX=1TO1000:NEXT
760 DRAW"BM68,104;XLR$;XLA$;XLY$;XLM$;XLO$;XLN$;XLD$;"
770 FORX=1TO200:NEXT
780 DRAW"BM135,104;XLL$;XLU$;XLE$;XLD$;XLE$;XLR$;XLS$;"
790 FORX=1TO500:NEXT
800 DRAW"BM110,120;XNO$(1);XNO$(9);XNO$(8);XNO$(6);"
810 FORX=1TO500:NEXTX
820 Y=244:Z=160
830 FORX=10TO85STEP2
840 LINE(X,X)-(Y,Z),PSET,B
850 Y=Y-2:Z=Z-2
860 NEXTX
870 FORX=1TO100:NEXT
880 Y=244:Z=160
890 FORX=10TO85
900 LINE(X,X)-(Y,Z),PSET,B
910 Y=Y-1:Z=Z-1
920 NEXTX
930 PLAYMUS$
940 GOSUB1330'MAIN MENU
950 IF MAIN$="1"THENGOSUB1530
960 IF MAIN$="2"THENGOSUB1650
970 IF MAIN$="3"THENGOSUB1770
980 IF MAIN$="4"THENGOSUB1870
990 IF MAIN$="5"THENGOSUB2190
1000 IF MAIN$="6"THENGOSUB2710
1010 IF MAIN$="7"THENGOSUB2860
1020 IF MAIN$="8"THENGOSUB3080
1030 IF MAIN$="9"THENGOSUB3210
1040 IF MAIN$="10"THENGOSUB3340
1050 IF MAIN$="11"THENGOSUB3450
1060 IF MAIN$="12"THENGOSUB3700
1070 IF MAIN$="13"THENGOSUB1230
1080 IF MAIN$="14"THENGOSUB1100
1090 GOTO940
1100 CLS:PRINT:PRINT" YOU MAY DIRECT QUESTIONS TO ME"
1110 PRINT" PLEASE SEND A SASE TO:":PRINT""
1120 PRINT"    RAYMOND LUEDERS
1130 PRINT"    1341 SEA BISCUIT LN"
1140 PRINT"    HANOVER PARK IL 60103"
1150 PRINT
1160 PRINT" YOU CAN ALSO GET HOLD OF ME ON"
1170 PRINT" DELPHI."
1180 PRINT" USERNAME 'MOONSHINE' FROM THE"
1190 PRINT" COCO SIG."
1200 PRINT"  -RAY-";:
1210 PRINT:PRINT"":PRINT" HIT ANY KEY."
1220 EXEC44539:END
1230 ' EXIT TO BASIC
1240 CLS:PRINT@8,"COLD START POKE"
1250 PRINT:PRINT" CMD: 100 POKE113,0:EXEC40999":PRINT:PRINT" COMMENTS: COLD-START"
1260 PLAYMUS$
1270 PRINT:PRINT" warning MEMORY WILL BE ERASED":GOSUB 3880
1280 IF A$="Y" THEN1290ELSERETURN
1290 POKE113,0:EXEC40999
1300 RETURN
1310 '
1320 'MAIN MENU
1330 CLS:PRINT@7,"*** MAIN MENU ***"
1340 PRINT
1350 PRINT"(1)  PRINT DIRECTORY"
1360 PRINT"(2)  PRINTER NOT READY PEEK"
1370 PRINT"(3)  DISABLE THE RESET BUTTON"
1380 PRINT"(4)  KEY REPEAT"
1390 PRINT"(5)  SET PRINTER LINE WIDTH"
1400 PRINT"(6)  SET MAXIMUM MEMORY"
1410 PRINT"(7)  HI SPEED POKE CMD"
1420 PRINT"(8)  ALTERNATE CMD FOR INKEY$"
1430 PRINT"(9)  SLOW KEYBOARD RESPONSE"
1440 PRINT"(10) DISK OR CASSETTE PEEK"
1450 PRINT"(11) DISK DRIVE LIGHT POKE"
1460 PRINT"(12) DISABLE ALL FUNCTIONS"
1470 PRINT"(13) COLD-START POKE"
1480 PRINT"ENTER NUMBER:";:INPUT MAIN$
1490 IF VAL(MAIN$)<1 THEN1520
1500 IF VAL(MAIN$)>14 THEN1520
1510 RETURN
1520 PLAYMUS$:RETURN
1530 '
1540 ' PRINT DIRECTORY
1550 CLS:PRINT@8,"PRINT DIRECTORY"
1560 PRINT:PRINT" CMD: 100 POKE 111,254:DIR"
1570 PRINT:PRINT" COMMENTS: DISK BASIC ONLY"
1580 GOSUB3880
1590 IF A$="Y"THEN1600ELSERETURN
1600 PRINT:PRINT" PLEASE WAIT":FORX=1TO3000:NEXT:IF(PEEK(65314)AND1)=1 THEN GOTO 1610 ELSE GOTO 1640
1610 PLAYMUS$:PRINT:PRINT" PRINTER NOT READY"
1620 GOTO1580
1630 IF A$="Y" THEN1580ELSERETURN
1640 DIR:POKE111,254:DIR:PRINT:RETURN
1650 '
1660 ' PRINTER NOT READY PEEK
1670 CLS:PRINT@6,"PRINTER NOT READY PEEK"
1680 PRINT:PRINT" CMD: 100 IF (PEEK(65314)AND1)=1";:
1690 PRINT"          THEN GOTO..."
1700 PRINT:PRINT" COMMENTS: IF LINE 100 RETURNS 1"
1710 PRINT"           PRINTER IS NOT READY"
1720 GOSUB3880
1730 IF A$="Y"THEN1740ELSERETURN
1740 PRINT:PRINT" PLEASE WAIT":FORX=1TO3000:NEXT:IF (PEEK(65314)AND1)=1 THEN GOTO1750 ELSE GOTO1760
1750 PLAYMUS$:PRINT:PRINT" PRINTER NOT READY":GOTO 1720
1760 PRINT:PRINT" PRINTER READY":GOTO 1720
1770 '
1780 ' PRINTER SCREEN MODE
1790 CLS:PRINT@4,"DISABLE THE RESET BUTTON"
1800 PRINT:PRINT" CMD: 100 POKE113,0"
1810 PRINT:PRINT" COMMENTS: RESET COMMAND"
1820 PRINT:PRINT" CMD: 100 POKE113,85"
1830 PRINT:PRINT" COLDSTARTS WHEN RESET IS PUSHED"
1840 GOSUB3880
1850 IF A$="Y"THEN1860ELSERETURN
1860 POKE113,0:RETURN
1870 '
1880 'KEY REPEAT
1890 CLS:PRINT@11,"KEY REPEAT"
1900 PRINT:PRINT" CMD 100 A=PEEK(116)*256+PEEK(1"
1910 PRINT"         17)-100:X=INT(A/256):Y"
1920 PRINT"         =A-(X*256):FORI=A TO A"
1930 PRINT"         +72:READB:POKEI,B:NEXT"
1940 PRINT"         I:POKE362,126:POKE363,"
1950 PRINT"         X:POKE364,Y:CLEAR200,A"
1960 PRINT"         :DATA50,100,52,20,189,"
1970 PRINT"         161,121,132,127,52,2,1"
1980 PRINT"         89,161,193,142,4,254,1"
1990 PRINT"         89,167,211,182,1,83,12"
2000 PRINT"         9,191,38,37"
2010 PRINT
2020 PRINT" MORE. HIT ANY KEY";:
2030 A$=INKEY$:IF A$=""THEN2030
2040 CLS:PRINT"":PRINT" CMD 110 DATA53,22,150,255,129,"
2050 PRINT"         8,38,7,90,39,31,48,31,"
2060 PRINT"         48,31,32,15,129,32,37,"
2070 PRINT"         22,129,123,36,18,193,2"
2080 PRINT"         49,36,14,167,128,92,18"
2090 PRINT"         9,162,130,52,20,32,201"
2100 PRINT"         ,53,22,151,255,57,198,"
2110 PRINT"         1,32,251"
2120 PRINT:PRINT" COMMENTS: USE <CLEAR> KEY TO"
2130 PRINT"           REPEAT THE KEY."
2140 GOSUB 3880
2150 IF A$="Y"THEN2160ELSERETURN
2160 GOTO170
2170 '
2180 CLS:PRINT:PRINT" KEY REPEAT IN EFFECT.":END
2190 '
2200 'PRINTER LINE WIDTH
2210 CLS:PRINT@5,"SET PRINTER LINE WIDTH"
2220 PRINT:PRINT" (1)  16 CPL"
2230 PRINT" (2)  32 CPL"
2240 PRINT" (3)  64 CPL"
2250 PRINT" (4) 132 CPL (DEFAULT)"
2260 PRINT" (5) 255 CPL"
2270 PRINT" (6) EXIT TO MAIN MENU"
2280 PRINT:PRINT" ENTER NUMBER:":PRINT:PRINT" ALL MAY not BE COMPATIBLE,":PRINT" CONSULT YOUR PRINTER MANUAL";:
2290 A$=INKEY$:IF A$="" THEN2290
2300 IF VAL(A$)<1 THEN2330
2310 IF VAL(A$)>6 THEN2330
2320 GOTO2340
2330 PLAYMUS$:GOTO2190
2340 IF A$="1" THENGOSUB2410
2350 IF A$="2" THENGOSUB2470
2360 IF A$="3" THENGOSUB2530
2370 IF A$="4" THENGOSUB2590
2380 IF A$="5" THENGOSUB2650
2390 IF A$="6" THEN RETURN
2400 RETURN
2410 '16 CPL
2420 CLS:PRINT@5,"16 CHARACTERS PER LINE"
2430 PRINT"":PRINT" CMD: 100 POKE155,16"
2440 GOSUB3880
2450 IF A$="Y"THEN2460ELSERETURN
2460 POKE155,16:RETURN
2470 '32 CPL
2480 CLS:PRINT@5,"32 CHARACTERS PER LINE"
2490 PRINT:PRINT" CMD: 100 POKE155,32"
2500 GOSUB3880
2510 IF A$="Y"THEN2520ELSERETURN
2520 POKE155,32:RETURN
2530 '64 CPL
2540 CLS:PRINT@5,"64 CHARACTERS PER LINE"
2550 PRINT:PRINT" CMD: 100 POKE155,64"
2560 GOSUB3880
2570 IF A$="Y"THEN2580ELSERETURN
2580 POKE155,64:RETURN
2590 '132 CPL
2600 CLS:PRINT@4,"132 CHARACTERS PER LINE"
2610 PRINT:PRINT" CMD: 100 POKE155,132"
2620 GOSUB3880
2630 IF A$="Y"THEN2640ELSERETURN
2640 POKE155,132:RETURN
2650 '255 CPL
2660 CLS:PRINT@4,"255 CHARACTERS PER LINE"
2670 PRINT:PRINT" CMD: 100 POKE155,255"
2680 GOSUB3880
2690 IF A$="Y"THEN2700ELSERETURN
2700 POKE155,255:RETURN
2710 '
2720 'SET MAX MEMORY
2730 CLS:PRINT@7,"SET MAXIMUN MEMORY"
2740 PRINT:PRINT" CMD: 100 POKE25,6:POKE26,1:"
2750 PRINT"          POKE1536,0:NEW"
2760 PRINT:PRINT" USE BELOW POKE FOR DISK SYSTEMS"
2770 PRINT" CMD: 100 POKE25,14:POKE26,1:"
2780 PRINT"          POKE3584,0:NEW
2790 PLAYMUS$:PRINT:PRINT" warning WILL ERASE MEMORY!!!"
2800 PRINT" DOES NOT ALLOW USE OF GRAPHICS"
2810 GOSUB3880
2820 IF A$="Y"THEN2830ELSERETURN
2830 IF PEEK(188)=14 THEN 2850
2840 CLS:PRINT:PRINT" CASS.SYSTEM POKE CMD EXECUTED!":FORX=1TO2000:NEXT:POKE25,6:POKE26,1:POKE1536,0:NEW
2850 CLS:PRINT:PRINT" DISK SYSTEM POKE CMD EXECUTED!":FORX=1TO2000:NEXT:POKE25,14:POKE26,1:POKE3584,0:NEW
2860 '
2870 'SET HI-SPEED POKE
2880 CLS:PRINT@9,"HI-SPEED POKE"
2890 IF COCO$="Y"THEN2930
2900 PRINT:PRINT" CMD: 100 POKE65495,0"
2910 PRINT:PRINT" RESET POKE FOR ABOVE:"
2920 PRINT:PRINT" CMD: 100 POKE65494,0":GOTO2960
2930 PRINT:PRINT" CMD: 100 POKE&HFFD9,0"
2940 PRINT:PRINT" RESET POKE FOR ABOVE:"
2950 PRINT:PRINT" CMD: 100 POKE&HFFD8,0":GOTO2960
2960 PRINT:PRINT" COMMENTS: DOUBLES RUNNING SPEED"
2970 PLAYMUS$
2980 PRINT" warning USING HI-SPEED HEATS"
2990 IF COCO$="Y"THEN3000:ELSE3010
3000 PRINT" UP CHIPS.":GOTO3030
3010 PRINT" UP CHIPS, ALSO WILL NOT WORK"
3020 PRINT" ON DISK OR CASSETTE I/O"
3030 GOSUB3880
3040 IF A$="Y"THEN3050ELSERETURN
3050 IF COCO$="Y"THEN3060 ELSE 3070
3060 POKE&HFFD9,0:RETURN
3070 POKE65495,0:RETURN
3080 '
3090 'ALTERNATE CMD FOR INKEY$
3100 CLS:PRINT@3,"ALTERNATE CMD FOR 'INKEY$'"
3110 PRINT:PRINT" CMD: 100 EXEC44539"
3120 PRINT:PRINT" COMMENTS: HELPFUL WHEN MAXIMUM"
3130 PRINT"           MEMORY IS NEEDED"
3140 GOSUB3880
3150 IF A$="Y"THEN3160ELSERETURN
3160 CLS:PRINT:PRINT" 10 PRINT ";:PRINT CHR$(34);:PRINT"HIT ANY KEY.";:PRINT CHR$(34)
3170 PRINT" 20 EXEC44539"
3180 PRINT:PRINT" RUN"
3190 PRINT:PRINT" HIT ANY KEY."
3200 EXEC44539:RETURN
3210 '
3220 'SLOW KEYBOARD RESPONSE
3230 CLS:PRINT@4,"SLOW KEYBOARD RESPONSE"
3240 PRINT:PRINT" CMD: 100 POKE283,X"
3250 PRINT:PRINT" X=5 TO 255, 5 IS THE FASTEST"
3260 PRINT:PRINT" RESET CMD FOR ABOVE:"
3270 PRINT:PRINT" CMD: 100 POKE283,4"
3280 GOSUB3880
3290 IF A$="Y"THEN3300ELSERETURN
3300 PRINT:PRINT" ENTER X (5-255) RECOMMEND 40    ":PRINT" 4 TO RESET";:INPUT X
3310 IF X<4 OR X>255 THEN 3320 ELSE 3330
3320 PLAYMUS$:GOTO3300
3330 POKE283,X:RETURN
3340 '
3350 'DISK OR CASS PEEK
3360 CLS:PRINT@5,"DISK OR CASSETTE PEEK"
3370 PRINT:PRINT" CMD: 100 IF PEEK(188)=14 THEN "
3380 PRINT:PRINT" IF LINE 100 RETURNS 14 = DISK"
3390 PRINT" IF LINE 100 RETURNS 06 = CASS"
3400 GOSUB3880
3410 IF A$="Y"THEN3420ELSERETURN
3420 IF PEEK(188)=14 THEN GOTO3430 ELSE GOTO3440
3430 PRINT:PRINT" 14,YOU ARE USING A DISK SYSTEM":FOR X=1 TO 4000:NEXT:RETURN
3440 PRINT:PRINT" 6, YOU ARE USING A CASSETTE":FOR X=1TO4000:NEXT:RETURN
3450 '
3460 'DISK/DRIVE LIGHT
3470 CLS:PRINT@6,"DISK/DRIVE LIGHT POKE"
3480 PRINT:PRINT" CMD: 100 POKE65344,X
3490 PRINT
3500 PRINT" IF X=1 THEN IT USES DRIVE 0"
3510 PRINT" IF X=2 THEN IT USES DRIVE 1"
3520 PRINT" IF X=4 THEN IT USES DRIVE 2"
3530 PRINT" IF X=64 THEN IT USES DRIVE 3"
3540 PRINT" IF X=0 RESETS ABOVE CMD'S"
3550 PRINT:PRINT" TURNS ON LIGHT, DOES NOT "
3560 PRINT" EFFECT DISK/DRIVE MOTOR"
3570 GOSUB3880
3580 IF A$="Y"THEN3590ELSERETURN
3590 IF PEEK(188)=6 THEN 3610
3600 GOTO3630
3610 PRINT" YOU HAVE A CASSETTE, TRY #10"
3620 PRINT" FROM MAIN MENU.":FOR X=1TO4000:NEXT:RETURN
3630 CLS:PLAYMUS$:PRINT:PRINT" WATCH LIGHT ON DRIVE #0":FOR X=1TO4000:NEXT
3640 POKE65344,1:FOR X=1TO3000:NEXT
3650 POKE65344,0:FOR X=1TO1000:NEXT
3660 FOR X=1TO10
3670 POKE65344,1:FOR Y=1TO150:NEXTY
3680 POKE65344,0:FOR Y=1TO100:NEXTY:NEXT X
3690 PLAYMUS$:RETURN
3700 '
3710 'DISABLE ALL FUNCTIONS
3720 CLS:PRINT@6,"DISABLE ALL FUNCTIONS"
3730 PRINT:PRINT" CMD: 100 POKE301,129:POKE302,"
3740 PRINT"          119"
3750 PRINT:PRINT" USE CMD BELOW TO RESET"
3760 PRINT:PRINT" CMD: 100 POKE301,129:POKE302,60"
3770 PLAYMUS$:PRINT:PRINT" warning SAVE PROGRAM BEFORE "
3780 PRINT" EXECUTING THIS COMMAND."
3790 PRINT" OR COPY DOWN THE RESET CMD."
3800 GOSUB3880
3810 IF A$="Y"THEN3820ELSERETURN
3820 CLS:PRINT:PRINT" ALL FUNCTIONS DISABLED"
3830 POKE301,129:POKE302,119
3840 PRINT:PRINT" TRY IT. TYPE 'LIST', AND VIEW"
3850 PRINT" THE PROGRAM IN MEMORY, THEN"
3860 PRINT" TRY AND 'RUN' IT, OR 'SAVE' IT"
3870 END
3880 A$="":PRINT:PRINT" EXECUTE? (Y/N, <ENTER> = N)";:
3890 A$=INKEY$:IF A$="" THEN 3890 ELSE RETURN
3900 PMODE4,1:PCLS:SCREEN1,1
3910 GOTO310
