0 ' COPYRIGHT 1990 FALSOFT, INC
10 '*MINDSTIM*
20 'BY MARK WEBB
30 'JANUARY 1990
40 '
50 POKE65497,0
60 CLEAR1000
70 DIM X,Y,Z,A$,I$,PC(15),L(8,3),LV,XA,YA,V(40),M(6),C,N(6),RT$(15),TE(6),TD(6)
80 HSCREEN2:HCLS0
90 PLAY"T255L255V31"
100 FORX=1 TO 4:HBUFFX,400:NEXTX
110 DATA BRAIN,WIZARD,CLEVER,GENUIS,SUPER,GREAT,SMART,NOT BAD,GOOD,FINE,PAR,SO-SO,POOR,LOUSY,NOID,CARROT
120 FORX=15 TO 0 STEP-1:READ RT$(X):NEXT
130 DATA 0,43,8,63,11,16,32,54,38,44,56,40,7,23,52,24
140 FORX=0 TO 15:READPC(X):PALETTEX,PC(X):NEXT
150 DATA 4,6,0,4,6,1,4,8,0,4,8,1,6,8,0,6,8,1,6,10,0,6,10,1
160 FORX=1 TO 8:FORY=1 TO 3:READ L(X,Y):NEXTY,X
170 FORX=0 TO 7:POKE&HF09D+520+X,255:NEXTX:'CHR$(97)
180 'TITLE ANIMATION
190 HGET(120,80)-(184,88),1:HCOLOR4
200 HPRINT(15,10),"MINDSTIM":HGET(120,80)-(184,88),2
210 HGET(112,96)-(192,104),3:HCOLOR5
220 HPRINT(14,12),"BY M. WEBB":HGET(112,96)-(192,104),4
230 FORX=1 TO 50:PALETTE4,RND(8)+22:SOUNDRND(50)+150,1:NEXT
240 PALETTE4,11
250 GOTO480
260 Y=80:XA=120:YA=Y
270 FORX=120 TO 176 STEP2
280 HPUT(XA,YA)-(XA+64,YA+8),1,PSET:HPUT(X,Y)-(X+64,Y+8),2,PSET
290 XA=X
300 NEXT
310 FORX=176 TO 248 STEP2
320 HPUT(XA,YA)-(XA+64,Y+8),1,PSET:HPUT(X,Y)-(X+64,Y+8),2,PSET
330 XA=X:YA=Y:Y=Y-2
340 NEXT
350 Y=Y+2
360 FORX=248 TO 240 STEP-2
370 HPUT(XA,Y)-(XA+64,YA+8),1,PSET:HPUT(X,Y)-(X+64,Y+8),2,PSET:XA=X
380 NEXTX
390 HCOLOR1:HLINE(238,17)-(306,17),PSET
400 Y=96:XA=112:YA=Y
410 FORX=112 TO 233 STEP2
420 HPUT(XA,YA)-(XA+80,YA+8),3,PSET:HPUT(X,Y)-(X+80,Y+8),4,PSET:XA=X
430 NEXT
440 FORY=95 TO 24 STEP-2
450 HPUT(XA,YA)-(XA+80,YA+8),3,PSET:HPUT(X,Y)-(X+80,Y+8),4,PSET:YA=Y
460 NEXT
470 RETURN
480 HCOLOR6:HPRINT(8,15),"USE (L-R) ARROW KEYS TO"
490 HPRINT(8,16),"CHOOSE LEVEL & HIT ENTER"
500 LV=1:A$=STRING$(10,97):GOTO580
510 'CHOOSE LEVEL HERE
520 I$=INKEY$:IFI$=""THEN520
530 IF I$=CHR$( 8) AND LV>1 THEN LV=LV-1:GOTO580
540 IF I$=CHR$(9) AND LV<8 THEN LV=LV+1:GOTO580
550 IF I$=CHR$(13) THEN 640
560 PLAY"O3GBGO4BG"
570 GOTO520
580 HCOLOR0:FORY=18 TO 21:HPRINT(14,Y),A$:NEXT
590 HCOLOR8:I$=RIGHT$(STR$(L(LV,1)),1)+" PEGS":HPRINT(14,19),I$
600 I$="LEVEL "+STR$(LV):HPRINT(14,18),I$
610 X=LEN(STR$(L(LV,2)))-1:I$=RIGHT$(STR$(L(LV,2)),X)+" COLORS":HPRINT(14,20),I$
620 IF L(LV,3)=0 THEN I$="NO DOUBLES" ELSE I$="DOUBLES"
630 HPRINT(14,21),I$:GOTO520
640 GOSUB260:HCOLOR0:X=64:XA=256
650 FORZ=1 TO 15:PLAY"O4DCDCDCV-V-":NEXT:PLAY"V31"
660 FORY=0 TO 16 STEP2
670 HLINE(X,Y+120)-(XA,Y+120),PSET:HLINE(X,135-Y)-(XA,135-Y),PSET
680 NEXT
690 FORX=1 TO 40:V(X)=X:NEXTX
700 FORX=1 TO 50
710 A=RND(40):B=RND(40):IF B=A THEN710
720 C=V(A):V(A)=V(B):V(B)=C
730 NEXT
740 FORX=1 TO 40
750 A=0
760 IF V(X)>10 THEN V(X)=V(X)-10:A=A+1:GOTO760
770 XA=(13+V(X))*8-1:YA=(18+A)*8-1:HGET(XA,YA)-(XA+8,YA+8),1
780 HCOLOR0:HPRINT(13+V(X),18+A),CHR$(97)
790 XA=(29+V(X))*8-1:YA=(5+A)*8-1:HPUT(XA,YA)-(XA+8,YA+8),1,PSET
800 NEXTX
810 HCOLOR1:HLINE(238,47)-(305,47),PSET
820 I$="NR96D160NR96D24NR96F8R96NH8U184H8D184"
830 HDRAW"BM0,0;C1;XI$;":HPAINT(1,1),2,1:HPAINT(1,162),2,1
840 HPAINT(8,186),4,1:HPAINT(98,8),4,1
850 HDRAW"BM120,0;XI$;":HPAINT(121,1),2,1:HPAINT(121,162),2,1
860 HPAINT(128,186),4,1:HPAINT(218,8),4,1
870 FORY=8 TO 152 STEP 16
880 FORX=8 TO 88 STEP 16
890 HCIRCLE(X,Y),5,1:HCIRCLE(X+120,Y),5,1
900 NEXTX,Y
910 FORX=8 TO 88 STEP 16:HCIRCLE(X,172),5,1:NEXT
920 HCOLOR4:HLINE(127,167)-(209,176),PSET,BF:HCOLOR1:HLINE(126,166)-(210,176),PSET,B
930 I$="COLORS USED"
940 FORX=1 TO LEN(I$)
950 A$=MID$(I$,X,1):HCOLOR3+X:HPRINT(28+X,10),A$:PLAY"O3BGB"
960 NEXTX
970 HCOLOR1:HLINE(230,89)-(320,89),PSET
980 Z=L(LV,2)/2:IFZ=4 THEN XA=252:GOTO1010
990 IF Z=5 THEN XA=244:GOTO1010
1000 IF Z=3 THEN XA=260
1010 FORX=1 TO 10:V(X)=0:NEXTX
1020 V(1)=RND(10)+5
1030 FORX=2 TO Z*2
1040 Y=RND(10)+5
1050 FORW=1 TO X-1
1060 IF Y=V(W) THEN1040
1070 NEXTW
1080 V(X)=Y
1090 NEXTX
1100 Z=XA+(Z*16)-16:YA=100:C=1:HCOLOR1
1110 FORY=0 TO 1
1120 FORX=XA TO Z STEP 16
1130 HCIRCLE(X,YA+(Y*16)),5,1:HPAINT(X,YA+(Y*16)),V(C),1:C=C+1
1140 NEXTX,Y
1150 'CHOOSE HIDDEN PEGS
1160 M(1)=V(RND(L(LV,1)))
1170 FORX=2 TO L(LV,1)
1180 Y=V(RND(L(LV,2)))
1190 IF L(LV,3)=1 THEN 1230
1200 FORZ=1 TO X-1
1210 IF Y=M(Z) THEN1180
1220 NEXTZ
1230 M(X)=Y
1240 NEXTX
1250 FORX=1 TO 50
1260 Z=(RND(L(LV,1))*16)-8:HPAINT(Z,172),5+RND(10),1:SOUND 50+RND(100),1
1270 NEXTX
1280 FORX=8 TO 88 STEP16:HPAINT(X,172),3,1:NEXTX
1290 HCOLOR7:HPRINT(17,21),"ROUND 1"
1300 IF L(LV,1)=6 THEN1340
1310 FORY=8 TO 152 STEP16
1320 HPAINT(72,Y),0,1:HPAINT(88,Y),0,1
1330 NEXT
1340 R=0:C=1:P=1:I$=INKEY$
1350 'MAIN LOOP
1360 I$=INKEY$:A$=STRING$(8,97)
1370 X=((P-1)*16)+1:Y=(R*16)+1
1380 HCOLOR5:HLINE(X,Y)-(X+14,Y+14),PSET,B
1390 HCOLOR2:HLINE(X,Y)-(X+14,Y+14),PSET,B
1400 IF I$="" THEN1360
1410 IF I$=CHR$(94) THEN C=C+1
1420 IF I$=CHR$(10) THEN C=C-1
1430 IF I$=CHR$(9) THEN P=P+1:PLAY"O4FFF":GOTO1520
1440 IF I$=CHR$(8) THEN P=P-1:PLAY"O4FFF":GOTO1520
1450 IF I$=CHR$(13) THEN 1550
1460 PLAY"O2CB"
1470 IF C>L(LV,2) THEN C=1
1480 IF C<1 THEN C=L(LV,2)
1490 IF P<1 THEN P=L(LV,1)
1500 IF P>L(LV,1) THEN P=1
1510 N(P)=V(C):HPAINT((P*16)-8,((R+1)*16)-8),V(C),1
1520 IF P<1 THEN P=L(LV,1)
1530 IF P>L(LV,1) THEN P=1
1540 GOTO1360
1550 'ANALYZE COLORS PICKED
1560 FORX=1 TO 6:TD(X)=M(X):TE(X)=N(X):NEXT
1570 W=0:B=0
1580 FORX=1 TO L(LV,1)
1590 IF TD(X)=TE(X) THEN B=B+1:TE(X)=0:TD(X)=77
1600 NEXT
1610 FORX=1 TO L(LV,1)
1620 FORY=1 TO L(LV,1)
1630 IF TD(X)=TE(Y) THEN W=W+1:TE(Y)=0:TD(X)=77:GOTO1650
1640 NEXTY
1650 NEXTX
1660 'DISPLAY RESULTS
1670 IF B=0 THEN1720
1680 FORX=1 TO B
1690 HPAINT(128+(X-1)*16,8+R*16),0,1:PLAY"O5BGBGCCC"
1700 NEXT
1710 IF B=L(LV,1) THEN1800
1720 IF W=0 THEN1760
1730 FORX=B TO B+W-1
1740 HPAINT(128+X*16,8+R*16),3,1:PLAY"O3GAGAGA"
1750 NEXT
1760 IF W=0 AND B=0 THEN PLAY"O1FABCFABCFABC"
1770 R=R+1:IFR=10 THEN HCOLOR4:HPRINT(17,21),STRING$(8,97):HCOLOR7:HPRINT(17,21),"YOU LOSE":GOTO1820
1780 HCOLOR4:HPRINT(17,21),A$:I$="ROUND"+STR$(R+1):HCOLOR7:HPRINT(17,21),I$
1790 GOTO1360
1800 'WIN
1810 HCOLOR4:HPRINT(17,21),A$:HCOLOR7:HPRINT(17,21),"VICTORY"
1820 FORX=1 TO L(LV,1):HPAINT(8+(X-1)*16,172),M(X),1:NEXT
1830 FORX=1 TO 3:PLAY"O4CEGBO5DFA":NEXT
1840 HCOLOR7:HPRINT(29,16),"**RATING**"
1850 HCOLOR1:HLINE(230,137)-(314,137),PSET
1860 HCOLOR5:RT=7+LV-R
1870 IF R=10 THEN RT=0
1880 HPRINT(31,18),RT$(RT)
1890 HCOLOR6:HPRINT(29,20),"PLAY AGAIN?"
1900 HPRINT(32,22),"(Y/N)":I$=INKEY$
1910 I$=INKEY$:IFI$=""THEN1910
1920 IF I$<>"N" AND I$<>"Y" THEN1910
1930 IF I$="Y" THEN RESTORE:POKE65497,0:HCLS0:GOTO110
1940 'END
1950 HCLS0
1960 DATA 0,2,8,10,12,32,36,38,40,44,46,54,63
1970 FORX=0 TO 12:READA:PALETTEX,A:NEXTX
1980 R=10:X=155:Y=91:PI=57.29577951:C=1
1990 FORZ=0 TO 360 STEP 10
2000 HCOLORINT(C):C=C+.333333331
2010 FORW=0 TO 3
2020 A=(Z+W*90)/PI:CX(W)=X-SIN(A)*R:CY(W)=Y-COS(A)*R:R=R+.5
2030 NEXTW
2040 HLINE(CX(0),CY(0))-(CX(1),CY(1)),PSET
2050 HLINE-(CX(2),CY(2)),PSET:HLINE-(CX(3),CY(3)),PSET
2060 HLINE-(CX(0),CY(0)),PSET
2070 NEXTZ
2080 HCOLOR13:HPRINT(16,11),"THE END"
2090 I$=INKEY$:PALETTE13,RND(48)+15:IFI$=""THEN2090
2100 HSCREEN0:POKE65496,0:RGB:CLS
2110 END
