1 REM**************************
2 REM*       SUPERTEST        *
3 REM*   A TEACHER'S HELPER   *
4 REM*    BY FRED B.SCERBO    *
5 REM*   60  HARDING AVENUE   *
6 REM*  NORTH ADAMS,MA 01247  *
7 REM*   COPYRIGHT (C) 1987   *
8 REM**************************
9 WIDTH32
10 CLEAR3000:CLS0:PRINTSTRING$(32,172)STRING$(32,204);
15 FORI=1TO192:READA:PRINTCHR$(A+128);:NEXT
20 PRINTSTRING$(32,195)STRING$(32,163);
25 DATA30,28,29,21,,21,21,28,28,26,30,28,29,21,28,28,29,53,60,61,60,61,53,60,61,53,60,60,58,62,62,61
30 DATA26,,20,21,,21,21,,,26,26,,20,21,,,21,52,,53,,52,53,,52,53,,,56,56,58,52
35 DATA27,19,19,21,,21,21,19,19,26,27,19,18,21,19,19,23,,,53,,,53,51,51,53,51,51,50,,58,
40 DATA,,21,21,,21,21,,,,26,,16,21,16,25,16,,,53,,,53,,,,,,58,,58,
45 DATA18,,21,21,,21,21,,,,26,,17,21,,,25,,,53,,,53,,49,49,,,58,,58,
50 DATA27,19,23,21,19,23,21,,,,27,19,23,21,,,21,,,55,50,,53,51,55,53,51,51,58,49,59,
55 PRINT@357,"  A TEACHER'S HELPER  ";:PRINT@389," (P)APER OR (S)CREEN  ";
60 PRINT@421,"   BY FRED B.SCERBO   ";
65 PRINT@453,"  COPYRIGHT (C) 1987  ";
70 X$=INKEY$:IFX$="S"THEN HC=0:GOTO85
75 IFX$="P"THEN HC=1:GOTO180
80 GOTO70
85 PRINT@389," (T)ALKING OR (N)OT ? ";
90 X$=INKEY$:IFX$="T"THEN110
95 IFX$="N"THEN105
100 GOTO90
105 NT=1
110 REM TALKING
115 XX=&HFF00:YY=&HFF7E
120 POKEXX+1,52:POKEXX+3,63
125 POKEXX+35,60
130 GOTO180
135 IFNT=1THENRETURN
140 FORII=1TOLEN(W$)
145 IF PEEK(YY)AND 128=0 THEN145
150 POKEYY,ASC(MID$(W$,II,1))
155 NEXTII
160 IFPEEK(YY)AND128=0THEN160
165 POKEYY,13
170 FORHH=1TO900:NEXTHH:RETURN
175 RETURN
180 NM=50
185 DIMAO(NM),A$(NM),B$(NM),NP(NM)
190 GOTO225
195 IF LEN(JK$)<=SW THEN215
200 FOR T=SW TO 0STEP-1:IF MID$(JK$,T,1)=" "THEN210
205 NEXT T:GOTO215
210 L$=LEFT$(JK$,T):W$=L$:GOSUB220:JK$="   "+RIGHT$(JK$,(LEN(JK$))-T):GOTO195
215 W$=JK$:PRINTW$:GOSUB135:RETURN
220 PRINTW$::GOSUB135:RETURN
225 FORJ=1TO NM:READ A$(J),B$(J):IF A$(J)="END" THEN235
230 NEXTJ
235 REM TITLE CARD
240 PRINT@357,"   DO YOU WANT THE   ";:PRINT@389," DATA REVERSED (Y/N)? "; 
245 T$=INKEY$:UH=RND(6666):IF T$="N"THEN 265
250 IF T$="Y" THEN260
255 GOTO245
260 FOR Q=1 TO J-1:TEM$=A$(Q):A$(Q)=B$(Q):B$(Q)=TEM$:NEXT Q
265 J=J-1
270 FORI=1 TO J
275 AO(I)=RND(J)
280 IF NP(AO(I))=1 THEN 275
285 NP(AO(I))=1:NEXTI
290 CLS:PRINT@202,"DO YOU WANT":PRINT@234,"'NOT GIVEN'":PRINT@266,"AS A CHOICE":PRINT@297,"(Y)ES OR (N)O?"
295 X$=INKEY$:IFX$="Y"THEN FS=0:GOTO310
300 IFX$="N"THEN FS=1:GOTO310
305 GOTO295
310 IF HC=1THEN605
315 CLS:PRINT@169,"SELECT WIDTH":PRINT@233,"(A) WIDTH 32":PRINT@265,"(B) WIDTH 40":PRINT@297,"(C) WIDTH 80"
320 X$=INKEY$:IFX$=""THEN320
325 IFX$="A"THEN WIDTH32:SW=31:GOTO350
330 IFX$="B"THEN WIDTH40:SW=39:GOTO350
335 IFX$="C"THEN WIDTH80:SW=79:GOTO350
340 GOTO320
350 FOR P=1TOJ:GOSUB355:GOTO415
355 CLS
360 FORQ=1TO5:C(Q)=0:NEXT
365 FOR Q=1TO4-FS
370 C(Q)=RND(J):IF C(Q)=AO(P) THEN370
375 FOR K=Q-1 TO 0STEP-1:IF C(K)=C(Q) THEN370
380 NEXTK
385 NEXTQ:C(5-FS)=AO(P)
390 FOR E=1TO5-FS
395 F(E)=RND(5-FS)
400 FOR K=E-1 TO 0 STEP-1:IF F(K)=F(E) THEN395
405 NEXTK,E:RETURN
410 WIDTH SW+1
415 CLS:PRINT:JK$="   "+A$(AO(P)):GOSUB195
420 PRINT
425 JK$=" 1-"+B$(C(F(1))):GOSUB195
430 IFSW<>31THENPRINT
435 JK$=" 2-"+B$(C(F(2))):GOSUB195
440 IFSW<>31THENPRINT
445 JK$=" 3-"+B$(C(F(3))):GOSUB195
450 IFSW<>31THENPRINT
455 JK$=" 4-"+B$(C(F(4))):GOSUB195
460 IF FS=1 THEN 475
465 IFSW<>31THENPRINT
470 JK$=" 5-NOT GIVEN":GOSUB195
475 G$=INKEY$:IFG$="@"THEN535
480 IF G$=""THEN475
485 G=VAL(G$)
490 IF G<1 THEN 475
495 IF G>5-FS THEN 475
500 IF C(F(G))<>AO(P) THEN515
505 PRINT:JK$="   YOU ARE CORRECT! THE ANSWER IS: "+B$(AO(P)):GOSUB195
510 CR=CR+1:GOTO525
515 PRINT:JK$="   WRONG! THE CORRECT ANSWER IS: "+B$(AO(P)):GOSUB195
520 IR=IR+1
525 X$=INKEY$:IFX$<>CHR$(13)THEN525
530 NEXT P
535 WIDTH32
540 CLS:PRINT:PRINT:PRINT:PRINT
545 L=CR+IR:IF L=0 THEN L=1
550 PRINT"    NUMBER CORRECT = "CR
555 PRINT
560 PRINT"    NUMBER WRONG   = "IR
565 PRINT:PRINT"    STUDENT SCORE  = ";INT(CR*100/L);"%"
570 PRINT:PRINT"    ANOTHER TRY (Y/N/C)";
575 W$=INKEY$:IFW$=""THEN575
580 IF W$="Y" THEN RUN
585 IF W$="N" THEN END
590 IF W$="C" THEN 410
595 GOTO575
600 REM ***** START HARDCOPY ***
605 CLS0
610 CLS0:GOTO645
615 IF LEN(JK$)<=SW THEN635
620 FOR T=SW TO 0STEP-1:IF MID$(JK$,T,1)=" "THEN630
625 NEXT T:GOTO635
630 L$=LEFT$(JK$,T):W$=L$:GOSUB640:JK$="     "+RIGHT$(JK$,(LEN(JK$))-T):GOTO615
635 PRINT#-2,JK$:CR=CR+1:RETURN
640 PRINT#-2,W$:CR=CR+1:GOSUB770:RETURN
645 REM START PRINTING
650 CLS:PRINT@128,STRING$(32,"*");:PRINT"SELECT (L)ARGE OR (S)MALL PRINT":PRINTSTRING$(32,"*");
655 P$=INKEY$:IF P$=""THEN655
660 IF P$="L"THEN 675
665 IF P$="S"THEN 680
670 GOTO655
675 SW=38:PL=46:TL=8:LL=21:PS=31:GOTO685
680 SW=76:PL=46:TL=14:LL=53:PS=30
685 PRINT:PRINTSTRING$(32,"*");:PRINT"PRESS <ENTER> TO BEGIN PRINTING":PRINTSTRING$(32,"*");
690 P$=INKEY$:IF P$=CHR$(13)THEN700
695 GOTO690
700 PRINT#-2,CHR$(PS);" NAME";STRING$(LL,&H5F);"DATE";STRING$(TL,&H5F)
705 PRINT#-2," TEST ON: ";B$(J+1):PRINT#-2," ":CR=4
710 FOR P=1 TO J
715 GOSUB355
720 JK$=ID$+STR$(P)+". "+A$(AO(P))+" "+STRING$(6,&H5F)+"  ":GOSUB615
725 PRINT
730 JK$="   (1) "+B$(C(F(1))):GOSUB615:GOSUB770
735 JK$="   (2) "+B$(C(F(2))):GOSUB615:GOSUB770
740 JK$="   (3) "+B$(C(F(3))):GOSUB615:GOSUB770
745 JK$="   (4) "+B$(C(F(4))):GOSUB615:GOSUB770
750 IF FS=1 THEN760
755 JK$="   (5) NOT GIVEN":GOSUB615:GOSUB770
760 GOSUB770
765 PRINT#-2," ":GOSUB770:NEXTP:RUN
770 IF CR<=PL THEN RETURN
775 CLS:PRINT:PRINTSTRING$(32,"*");:PRINTTAB(2)"ADVANCE PAPER TO NEXT SHEET":PRINTTAB(3)"PRESS <ENTER> TO CONTINUE"
780 PRINT"  PRESS (N) FOR NEXT LINE ONLY":PRINTSTRING$(32,"*");
785 P$=INKEY$:IF P$=CHR$(13) THEN CR=0:RETURN
790 IF P$="N" THEN RETURN
795 GOTO785
990 REM ENTER DATA AT LINE 1000
1000 DATA RED,COLOR OF THE SURFACE OF MARTIAN SOIL
1010 DATA VOLCANOES AND CRATERS,WHAT THE SURFACE OF MARS IS COVERED WITH
1020 DATA THREE HUNDRED MILES WIDE,THE WIDTH OF MARS LARGEST VOLCANO
1030 DATA GALILEO, DISCOVERED THE MOONS OF JUPITER
1040 DATA ELEVEN,THE NUMBER OF EARTHS THAT WOULD FIT ACROSS THE WIDTH OF JUPITER
1050 DATA THIRTEEN HUNDRED,NUMBER OF EARTHS THAT WOULD FIT INSIDE JUPITER
1060 DATA RED SPOT, A LARGE STORM ON THE SURFACE OF JUPITER
1070 DATA TEN HOURS,THE TIME IT TAKES JUPITER TO ROTATE ONCE
1080 DATA 1 A.U. (ASTRONOMICAL UNIT),DISTANCE FROM THE EARTH TO THE SUN
1090 DATA VIKING,THE FIRST VEHICLE TO SOFT LAND ON MARS
1100 DATA ANY SIGNS OF LIFE.,WHAT SCIENTISTS DIDN'T FIND ON MARS
1110 DATA PIONEER,FIRST VEHICLE SENT TO JUPITER AND SATURN
1120 DATA VOYAGER 1 & 2,VEHICLES SENT TO JOVIAN PLANETS
1130 DATA END,EXPLORING OUR SOLAR SYSTEM
5000 DATA END,EXPLORING OUR SOLAR SYSTEM
