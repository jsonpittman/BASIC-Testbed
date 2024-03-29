1 REM***************************
2 REM*       E-Z-THELLO        *
3 REM*   COPYRIGHT (C)  1990   *
4 REM*         ADAPTED         *
5 REM*    BY FRED B. SCERBO    *
6 REM*    60 HARDING AVENUE    *
7 REM*  NORTH ADAMS, MA 01247  *
8 REM***************************
9 CLEAR500
10 CLS0:PRINTSTRING$(32,220);STRING$(32,204);
15 FORI=1TO160:READA:IFA<128THEN25
20 CLS:PRINT@96," GO BACK AND CHECK YOUR DATA IN  LINES 30-50. I THINK YOU MADE   A TYPO !":PRINT:PRINT:END
25 PRINTCHR$(A+128);:NEXT
30 DATA31,31,31,26,31,31,31,31,,47,47,47,47,42,47,42,37,47,37,47,47,47,37,47,32,37,47,,37,47,47,47
35 DATA31,26,16,,,,23,30,,,37,47,32,,47,42,37,47,37,47,32,,37,47,32,37,47,,37,42,32,47
40 DATA31,31,26,28,24,23,30,16,28,24,37,47,32,,47,47,47,47,37,47,47,42,37,47,32,37,47,,37,42,,47
45 DATA31,26,,,21,31,16,,,,37,47,32,,47,42,37,47,37,47,32,32,37,47,32,37,47,,37,42,,47
50 DATA31,31,31,26,21,31,31,31,,,37,47,32,,47,42,37,47,37,47,47,47,37,47,47,37,47,47,37,47,47,47
55 PRINTSTRING$(32,195);STRING$(32,211);
60 PRINT@326," A SIMPLER VERSION  ";:PRINT@358," OF A CLASSIC GAME  ";
65 PRINT@390,"      ADAPTED       ";
70 PRINT@422,"  BY FRED B.SCERBO  ";:PRINT@454," COPYRIGHT (C) 1990 ";
75 X$=INKEY$:IFX$<>CHR$(13)THEN75
80 CLS:PRINT@231,"PLEASE STAND BY !";
85 DIM SQ(6,6),A(6),B(6),N$(9)
90 REM WH=1:BL=2
95 SQ(3,3)=1:SQ(4,4)=1:SQ(3,4)=2:SQ(4,3)=2
100 N$(0)="U12R8D12NL8BR6":N$(1)="BR3R3U12NG3D12R3BR5":N$(2)="NR8U6R8U6NL8BD12BR6":N$(3)="R8U6NL8U6NL8D12BR6":N$(4)="BU6NU6R8U6D12BR6":N$(5)="R8U6L8U6R8BD12BR6"
105 N$(6)="R8U6L8D6U12R6BD12BR6":N$(7)="BR8U12L8ND2R8D12BR6":N$(8)="NU12R8U6NL8U6NL8D12BR6":N$(9)="BR8U12L8D6R8D6BR6"
110 PMODE4,1:PCLS1:SCREEN0,0
115 LINE(0,0)-(196,160),PRESET,B
120 LINE(1,1)-(195,159),PRESET,B
125 FORI=2TO194STEP32
130 LINE(I,2)-(I,158),PRESET:NEXT
135 FORI=2TO158STEP26:LINE(2,I)-(194,I),PRESET:NEXT
140 B=1
145 FORY=15TO145STEP26
150 B(B)=Y:B=B+1:NEXT
155 A=1
160 FORI=18TO178STEP32
165 A(A)=I:A=A+1:NEXT
170 DRAW"BM0,190C0U26R20D6L12D4R12D6L12D4R12D6NL20BU10BR6R12U6L12D6BD10BR16U6E14L14U6R24D6G14R14D6NL24BU10BR6R12U6L12D6BU16BR16R28D6L10D20L8U20L10U6BR34"
175 DRAW"D26R8U10R10D10R8U26L8D10L10U10L8BR32BD26U26R20D6L12D4R12D6L12D4R12D6NL20BR6U26R8D20R10D6NL18BR6U26R8D20R10D6NL18BR6U26R24D26L24BE6BR2R8U14L8D14"
180 PAINT(4,188),0,0:PAINT(28,178),0,0:PAINT(44,188),0,0
185 COLOR1,0:FORI=2TO72STEP4:LINE(I,190)-(I,162),PSET:NEXT
190 PAINT(82,178),0,0:PAINT(100,178),0,0:PAINT(130,178),0,0:PAINT(160,178),0,0:PAINT(184,178),0,0
195 PAINT(206,178),0,0:PAINT(248,178),0,0
200 CIRCLE(82,67),12,0,.9:CIRCLE(82,93),12,0,.9
205 CIRCLE(114,67),12,0,.9:CIRCLE(114,93),12,0,.9
210 LINE(200,0)-(256,58),PRESET,B
215 LINE(201,1)-(254,57),PRESET,B
220 DRAW"BM204,4C0D4F4ND4E4U4BR4D12R8U12NL8BR4D12R8U12BR4ND12R8D6L8R2F6"
225 DRAW"BM204,42R4ND12R4BR4D12R8U12BR4ND12R8D6L8R2F6BR4U12M+8,+12U12"
230 LINE(200,62)-(256,160),PRESET,B:LINE(201,63)-(254,159),PRESET,B
235 CIRCLE(226,78),12,0,.9:CIRCLE(226,124),12,0,.9:PAINT(226,124),0,0
240 PAINT(80,91),0,0:PAINT(112,65),0,0
245 BD$="C0BU12L15D24R30U24L15BD12"
250 BU$="C1BU12L15D24R30U24L15BD12"
255 CLS:PRINT@32," E-Z-THELLO IS A SIMPLIFIED &    QUICK PLAYING VERSION OF THE    CLASSIC STRATEGY GAME. TWO      PLAYERS ARE NEEDED. ONE TAKES   WHITE AND THE OTHER TAKES THE   BLACK. YOU MUST PLACE A PIECE"
260 PRINT" SO IT TRAPS YOUR OPPONENT'S     PIECES BETWEEN YOURS. THEY WILL THEN SWITCH TO YOUR COLOR. IF   YOU CANNOT MAKE A LEGAL MOVE    PRESS <P> TO PASS ON THAT TURN.";
265 PRINT" IF NO ONE CAN MAKE A LEGAL MOVE THEN PRESS <E> TO END THE GAME. PRESS <ENTER> TO PLAY.";
270 X$=INKEY$:IFX$<>CHR$(13)THEN270
275 CLS0:X=1:Y=1
280 SW=1:CC=2:GOTO290
285 SW=2:CC=1
290 TT=0:CIRCLE(226,29),12,0,.9:PAINT(226,29),SW,SW:CIRCLE(226,29),12,0,.9:GOSUB1010
295 IF BL+WH=36THEN1080
300 C$="BM"+STR$(A(X))+","+STR$(B(Y))
305 DRAW C$:DRAW BD$
310 A$=INKEY$:SCREEN1,0
315 DRAW BU$:DRAW BD$:DRAW BU$
320 IFA$="P"THEN1000
325 IFA$="E"THEN1080
330 IFA$=""THEN310ELSET=ASC(A$)
335 IFT=8THENX=X-1:IFX<1THENX=1:GOTO360
340 IFT=9THENX=X+1:IFX>6THENX=6:GOTO360
345 IFT=94THENY=Y-1:IFY<1THENY=1:GOTO360
350 IFT=10THENY=Y+1:IFY>6THENY=6:GOTO360
355 IFT=13THEN365
360 GOTO300
365 IF SQ(X,Y)=0THEN370 ELSE300
370 EX=0
375 IFY=1THEN440
380 FORQ=Y-1TO1STEP-1
385 IFSQ(X,Q)=0THEN405
390 IFSQ(X,Q)=SW THEN410
395 IFSQ(X,Q)=CC THEN EX=1
400 NEXT
405 IF EX=1THEN440
410 IF EX=0THEN440
415 FORK=Y TO Q STEP-1
420 CIRCLE(A(X),B(K)),12,0,.9:PAINT(A(X),B(K)),SW,SW:CIRCLE(A(X),B(K)),12,0,.9
425 TT=1
430 SQ(X,K)=SW
435 NEXT
440 EX=0
445 IFY=6THEN510
450 FORQ=Y+1TO6
455 IFSQ(X,Q)=0THEN475
460 IFSQ(X,Q)=SW THEN480
465 IFSQ(X,Q)=CC THEN EX=1
470 NEXT
475 IF EX=1THEN510
480 IF EX=0THEN510
485 FORK=Y TO Q
490 CIRCLE(A(X),B(K)),12,0,.9:PAINT(A(X),B(K)),SW,SW:CIRCLE(A(X),B(K)),12,0,.9
495 TT=1
500 SQ(X,K)=SW
505 NEXT
510 EX=0
515 IFX=6THEN580
520 FORQ=X+1TO6
525 IFSQ(Q,Y)=0THEN545
530 IFSQ(Q,Y)=SW THEN550
535 IFSQ(Q,Y)=CC THEN EX=1
540 NEXT
545 IF EX=1THEN580
550 IF EX=0THEN580
555 FORK=X TO Q
560 CIRCLE(A(K),B(Y)),12,0,.9:PAINT(A(K),B(Y)),SW,SW:CIRCLE(A(K),B(Y)),12,0,.9
565 TT=1
570 SQ(K,Y)=SW
575 NEXT
580 EX=0
585 IFX=1THEN650
590 FORQ=X-1TO1STEP-1
595 IFSQ(Q,Y)=0THEN615
600 IFSQ(Q,Y)=SW THEN620
605 IFSQ(Q,Y)=CC THEN EX=1
610 NEXT
615 IF EX=1THEN650
620 IF EX=0THEN650
625 FORK=X TO Q STEP-1
630 CIRCLE(A(K),B(Y)),12,0,.9:PAINT(A(K),B(Y)),SW,SW:CIRCLE(A(K),B(Y)),12,0,.9
635 TT=1
640 SQ(K,Y)=SW
645 NEXT
650 PP=0:EX=0
655 IFY=1THEN735
660 FORQ=Y-1TO1STEP-1
665 PP=PP+1:IF X+PP>6THEN735
670 IFSQ(X+PP,Q)=0THEN690
675 IFSQ(X+PP,Q)=SW THEN695
680 IFSQ(X+PP,Q)=CC THEN EX=1
685 NEXT
690 IF EX=1THEN735
695 IF EX=0THEN735
700 PP=-1
705 FORK=Y TO Q STEP-1
710 PP=PP+1
715 CIRCLE(A(X+PP),B(K)),12,0,.9:PAINT(A(X+PP),B(K)),SW,SW:CIRCLE(A(X+PP),B(K)),12,0,.9
720 TT=1
725 SQ(X+PP,K)=SW
730 NEXT
735 PP=0:EX=0
740 IFY=1THEN820
745 FORQ=Y-1TO1STEP-1
750 PP=PP-1:IF X+PP<1THEN820
755 IFSQ(X+PP,Q)=0THEN775
760 IFSQ(X+PP,Q)=SW THEN780
765 IFSQ(X+PP,Q)=CC THEN EX=1
770 NEXT
775 IF EX=1THEN820
780 IF EX=0THEN820
785 PP=1
790 FORK=Y TO Q STEP-1
795 PP=PP-1
800 CIRCLE(A(X+PP),B(K)),12,0,.9:PAINT(A(X+PP),B(K)),SW,SW:CIRCLE(A(X+PP),B(K)),12,0,.9
805 TT=1
810 SQ(X+PP,K)=SW
815 NEXT
820 PP=0:EX=0
825 IFY=6THEN905
830 FORQ=Y+1TO6
835 PP=PP+1:IF X+PP>6THEN905
840 IFSQ(X+PP,Q)=0THEN860
845 IFSQ(X+PP,Q)=SW THEN865
850 IFSQ(X+PP,Q)=CC THEN EX=1
855 NEXT
860 IF EX=1THEN905
865 IF EX=0THEN905
870 PP=-1
875 FORK=Y TO Q
880 PP=PP+1
885 CIRCLE(A(X+PP),B(K)),12,0,.9:PAINT(A(X+PP),B(K)),SW,SW:CIRCLE(A(X+PP),B(K)),12,0,.9
890 TT=1
895 SQ(X+PP,K)=SW
900 NEXT
905 PP=0:EX=0
910 IFY=6THEN990
915 FORQ=Y+1TO6
920 PP=PP-1:IF X+PP<1THEN990
925 IFSQ(X+PP,Q)=0THEN945
930 IFSQ(X+PP,Q)=SW THEN950
935 IFSQ(X+PP,Q)=CC THEN EX=1
940 NEXT
945 IF EX=1THEN990
950 IF EX=0THEN990
955 PP=1
960 FORK=Y TO Q
965 PP=PP-1
970 CIRCLE(A(X+PP),B(K)),12,0,.9:PAINT(A(X+PP),B(K)),SW,SW:CIRCLE(A(X+PP),B(K)),12,0,.9
975 TT=1
980 SQ(X+PP,K)=SW
985 NEXT
990 REM END OF ROUTINE
995 IFTT=0THEN300
1000 IFSW=1THEN285ELSEIFSW=2THEN280
1005 GOTO1005
1010 REM SCORE ROUTINE
1015 BL=0:WH=0:FORQ=1TO6:FORK=1TO6
1020 IFSQ(Q,K)=1THEN WH=WH+1
1025 IFSQ(Q,K)=2THEN BL=BL+1
1030 NEXTK,Q
1035 LINE(206,92)-(248,110),PRESET,BF
1040 DRAW"BM216,107C1"
1045 Q$=STR$(WH):IF WH>9THEN Q$=RIGHT$(Q$,2)
1050 FOR Q=1TO2:P$=MID$(Q$,Q,1):P=VAL(P$):DRAW N$(P):NEXTQ
1055 LINE(206,138)-(248,156),PRESET,BF
1060 DRAW"BM216,153C1"
1065 Q$=STR$(BL):IF BL>9THEN Q$=RIGHT$(Q$,2)
1070 FOR Q=1TO2:P$=MID$(Q$,Q,1):P=VAL(P$):DRAW N$(P):NEXTQ
1075 RETURN
1080 LINE(200,0)-(256,58),PRESET,BF
1085 IF BL>WH THEN CIRCLE(226,20),12,1,.9
1090 IF WH>BL THEN CIRCLE(226,20),12,1,.9:PAINT(226,20),1,1
1095 IF WH=BL THEN 1110
1100 DRAW"BM206,40C1D12R6NU12R6NU12BR6NU12BR6U12M+8,+12NU12BR4R6U6L6U6R6"
1105 GOTO1115
1110 DRAW"BM209,24C1R6ND12R6BR6ND12BR8NR8D6NR8D6R8"
1115 LINE(203,3)-(251,55),PSET,B
1120 X$=INKEY$:IFX$=CHR$(13)THENRUNELSE1120
