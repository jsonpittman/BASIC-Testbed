1 'RECIPE FILER II
2 'BY BRAD SPENCER
3 'COPYRIGHT (C) 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 POKE &HFFD9,0:POKE &HE414,0:POKE &HE42A,0
20 WIDTH 80:PALETTE 0,1:PALETTE 9,63:PALETTE 10,10:PALETTE 11,25:PALETTE 12,28:PALETTE 13,32
30 POKE &HFF9A,1:ATTR 2,0:CLS:LOCATE 2,0:PRINT "CTRL:  <S>AVE  <L>OAD  <K>ILL  <CLEAR>  <P>RINT":ATTR 5,0:LOCATE 52,0:PRINT "<CLEAR> TO DELETE CHARACTER"
40 ATTR 4,0:LOCATE 29,1:PRINT "*** RECIPE FILER II ***":LOCATE 25,23:PRINT "USE ARROW KEYS TO MOVE CURSOR";
50 CLEAR 5000:DIM W$(30)
60 GOSUB 420:GOSUB 440:N=0:C=1:X=18:Y=5:ATTR 3,0:LOCATE 5,1:PRINT "CURSOR LOCATION:";:LOCATE 57,1:PRINT "LINE NUMBER:";
70 LOCATE 22,1:PRINT C;:LOCATE 70,1:PRINT N;:LOCATE X,Y:PRINT "";
80 A$=INKEY$:IF A$="" THEN 80
90 IF A$=CHR$(13) THEN 380 ELSE IF A$=CHR$(12) THEN 300 ELSE IF A$=CHR$(94) THEN 200 ELSE IF A$=CHR$(10) THEN 220 ELSE IF A$=CHR$(8) THEN 240 ELSE IF A$=CHR$(9) THEN 270
100 IF PEEK(341)=191 THEN 80 ELSE IF PEEK(343)=191 THEN 80 ELSE IF PEEK(344)=191 THEN 80 ELSE IF PEEK(342)=191 THEN 500
110 IF N=0 THEN IF X=31 THEN 190
120 IF X=61 THEN 150
130 IF N>0 THEN W$(N)=LEFT$(W$(N),C-1)+A$+RIGHT$(W$(N),44-C):X=X+1:LOCATE 18,Y:PRINT W$(N);:C=C+1:GOTO 70
140 W$(N)=LEFT$(W$(N),C-1)+A$+RIGHT$(W$(N),14-C):X=X+1:LOCATE 18,Y:PRINT W$(N);:C=C+1:GOTO 70
150 W$(N)=LEFT$(W$(N),43)+A$:LOCATE 18,Y:PRINT W$(N);
160 IF N=15 THEN GOSUB 470:X=18:Y=6:N=16:C=1:GOTO 70
170 IF N=30 THEN 70
180 X=18:Y=Y+1:N=N+1:C=1:GOTO 70
190 W$(N)=LEFT$(W$(N),13)+A$:LOCATE 18,Y:PRINT W$(N);:GOTO 70
200 IF N=1 AND X>31 THEN X=31:Y=6:C=14 ELSE IF N=1 AND X<32 THEN Y=6 ELSE IF N=0 THEN 80 ELSE IF N=16 THEN GOSUB 440:Y=23:N=16
210 Y=Y-1:N=N-1:GOTO 70
220 IF N=0 THEN Y=7 ELSE IF N=15 THEN GOSUB 470:Y=5 ELSE IF N=30 THEN 80
230 Y=Y+1:N=N+1:GOTO 70
240 IF N=0 AND X=18 THEN 80 ELSE IF N=1 AND X=18 THEN X=32:Y=5:C=15:N=0 ELSE IF N=16 AND X=18 THEN GOSUB 440:X=62:Y=22:N=15:C=45
250 IF X=18 THEN X=62:C=45:Y=Y-1:N=N-1
260 X=X-1:C=C-1:GOTO 70
270 IF N=0 AND X=31 THEN X=17:Y=8:C=0:N=1 ELSE IF N=15 AND X=61 THEN GOSUB 470:X=17:Y=6:C=0:N=16 ELSE IF N=30 AND X=61 THEN 80
280 IF X=61 THEN X=17:Y=Y+1:N=N+1:C=0
290 X=X+1:C=C+1:GOTO 70
300 IF N=0 THEN 350
310 IF X=61 THEN W$(N)=LEFT$(W$(N),43)+" ":GOTO 330
320 W$(N)=LEFT$(W$(N),C-1)+RIGHT$(W$(N),44-C)+" "
330 LOCATE 18,Y:PRINT W$(N);
340 GOTO 70
350 IF X=31 THEN W$(N)=LEFT$(W$(N),13)+" ":GOTO 330
360 W$(N)=LEFT$(W$(N),C-1)+RIGHT$(W$(N),14-C)+" "
370 GOTO 330
380 IF N=15 THEN GOSUB 470:Y=5
390 IF N=30 THEN 80
400 IF N=0 THEN Y=7
410 X=18:Y=Y+1:N=N+1:C=1:GOTO 70
420 W$(0)=STRING$(14," "):FOR N=1 TO 30:W$(N)=STRING$(44," "):NEXT N
430 RETURN
440 ATTR 1,0:LOCATE 14,3:PRINT STRING$(20,"-"):LOCATE 14,4:PRINT "!";STRING$(19," ");"\":LOCATE 14,5:PRINT "!   ";:ATTR 3,0:PRINT W$(0);:ATTR 1,0:PRINT "   \":LOCATE 14,6:PRINT "!";STRING$(21," ");"\"
450 LOCATE 14,7:PRINT "!";STRING$(22," ");STRING$(28,"-"):P=0:FOR L=8 TO 22:P=P+1:LOCATE 14,L:PRINT "!   ";:ATTR 3,0:PRINT W$(P);:ATTR 1,0:PRINT "  !";:NEXT L
460 ATTR 3,0:RETURN
470 P=15:ATTR 1,0:LOCATE 14,3:PRINT:LOCATE 14,4:PRINT STRING$(51,"-"):LOCATE 14,5:PRINT "!";STRING$(49," ");"!":FOR L=6 TO 20:P=P+1:LOCATE 14,L:PRINT "!   ";:ATTR 3,0:PRINT W$(P);:ATTR 1,0:PRINT "  !":NEXT L
480 LOCATE 14,21:PRINT "!";STRING$(49," ");"!":LOCATE 14,22:PRINT STRING$(51,"-");
490 ATTR 3,0:RETURN
500 IF PEEK(342)<>191 THEN 80 ELSE A$=INKEY$:IF A$="" THEN 500
510 IF A$="S" OR A$="s" THEN 590 ELSE IF A$="L" OR A$="l" THEN 660 ELSE IF A$="P" OR A$="p" THEN 820 ELSE IF A$="K" OR A$="k" THEN 910
520 IF A$=CHR$(12) THEN 540
530 GOTO 80
540 ATTR 2,0:LOCATE 19,23:PRINT "ARE YOU SURE YOU WANT TO CLEAR THE RECIPE?";
550 A$=INKEY$:IF A$="" THEN 550
560 ATTR 4,0:LOCATE 19,23:PRINT "      USE ARROW KEYS TO MOVE CURSOR       ";
570 IF A$="Y" OR A$="y" THEN 50
580 ATTR 3,0:GOTO 70
590 F$="":I=35:GOSUB 960:ATTR 4,0:LOCATE 31,11:PRINT "TYPE IN FILENAME";:LOCATE 31,12:PRINT "TO SAVE:";:ATTR 1,0
600 GOSUB 980
610 ATTR 5,0:LOCATE 31,11:PRINT "                ";:LOCATE 31,12:PRINT "    SAVING     ";
620 OPEN "O",#1,F$
630 FOR O=0 TO 30:WRITE #1,W$(O):NEXT O
640 CLOSE #1
650 GOSUB 440:X=18:Y=5:N=0:C=1:GOTO 70
660 F$="":I=35:GOSUB 960:ATTR 4,0:LOCATE 31,11:PRINT "TYPE IN FILENAME";:LOCATE 31,12:PRINT "TO LOAD:";:ATTR 1,0
670 GOSUB 980
680 ATTR 5,0:LOCATE 31,11:PRINT "                 ";:LOCATE 31,12:PRINT "    LOADING     ";
690 OPEN "I",#1,F$+".DAT"
700 FOR I=0 TO 30:IF EOF(1)=-1 THEN 740 ELSE INPUT #1,W$(I)
710 IF I=0 THEN 760
720 IF LEN(W$(I))<>44 THEN 800
730 NEXT I
740 CLOSE #1
750 GOSUB 440:X=18:Y=5:N=0:C=1:GOTO 70
760 IF LEN(W$(I))<>14 THEN 780
770 GOTO 730
780 FOR F=LEN(W$(I)) TO 13:W$(I)=W$(I)+" ":NEXT F
790 GOTO 730
800 FOR F=LEN(W$(I)) TO 43:W$(I)=W$(I)+" ":NEXT F
810 GOTO 730
820 GOSUB 960:ATTR 4,0:LOCATE 31,12:PRINT "PRESS <ENTER> TO";:ATTR 1,0:LOCATE 36,13:PRINT "PRINT.";
830 A$=INKEY$:IF A$=CHR$(13) THEN 840 ELSE 830
840 ATTR 5,0:LOCATE 31,12:PRINT "   PRINTING...   ";:LOCATE 36,13:PRINT "         ";
850 PRINT #-2,STRING$(20,"-"):PRINT #-2,"!";STRING$(19," ");"\":PRINT #-2,"!   ";W$(0);"   \":PRINT #-2,"!";STRING$(21," ");"\":PRINT #-2,"!";STRING$(22," ");STRING$(28,"-"):PRINT #-2,"!";STRING$(49," ");"!"
860 FOR P=1 TO 15:PRINT #-2,"!   ";W$(P);"  !":NEXT P
870 PRINT #-2,"!";STRING$(49," ");"!":PRINT #-2,STRING$(51,"-"):PRINT #-2,"!";STRING$(49," ");"!"
880 FOR P=16 TO 30:PRINT #-2,"!   ";W$(P);"  !":NEXT P
890 PRINT #-2,"!";STRING$(49," ");"!":PRINT #-2,STRING$(51,"-")
900 GOSUB 440:X=18:Y=5:N=0:C=1:GOTO 70
910 F$="":I=35:GOSUB 960:ATTR 4,0:LOCATE 31,11:PRINT "TYPE IN FILENAME";:LOCATE 31,12:PRINT "TO KILL:";:ATTR 1,0
920 GOSUB 980
930 ATTR 5,0:LOCATE 31,11:PRINT "                ";:LOCATE 31,12:PRINT "    KILLING    ";
940 KILL F$+".DAT"
950 GOSUB 440:X=18:Y=5:N=0:C=1:GOTO 70
960 ATTR 2,0:LOCATE 28,10:PRINT STRING$(22,"#");:FOR W=11 TO 14:LOCATE 28,W:PRINT "#";STRING$(20," ");"#";:NEXT W:LOCATE 28,15:PRINT STRING$(22,"#");
970 RETURN
980 LOCATE I,13:PRINT "";:A$=INKEY$:IF A$="" THEN 980
990 IF A$=CHR$(13) THEN RETURN
1000 IF A$=CHR$(12) THEN 1040
1010 IF LEN(F$)=8 THEN 980
1020 F$=F$+A$:LOCATE I,13:PRINT A$;
1030 I=I+1:GOTO 980
1040 IF I=35 THEN F$="":GOTO 1060
1050 F$=LEFT$(F$,I-36):I=I-1
1060 LOCATE I,13:PRINT " ";:GOTO 980
