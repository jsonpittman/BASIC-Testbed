1 'UPTOP
2 'BY GEORGE & ELLEN AFTAMONOW
3 'COPYRIGHT (C) 1992
4 'FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 PALETTE0,0:PALETTE5,63:HSCREEN2:HCLS0:HCOLOR5,0
15 HPRINT(10,10),"<C>MP OR <R>GB?"
20 I$=INKEY$:IFI$=""THEN20
30 IFI$="C"THEN40ELSEIFI$="R"THEN50ELSE20
40 PALETTECMP:PALETTE0,0:PALETTE1,17:PALETTE2,8:PALETTE3,60:PALETTE4,53:PALETTE5,63:GOTO60
50 PALETTERGB:PALETTE0,0:PALETTE1,16:PALETTE2,39:PALETTE3,27:PALETTE4,50:PALETTE5,63:'0=BLACK:1=GREEN:2=RED:3=BLUE:4=YELLOW:5=WHITE
60 HCLS0
65 HDRAW"C5S8BM90,40R3D10R5BU10R3D13NL11BR5 R3U6R6EU5HL9BF3NUD2R4BE5BR9 R11D2L5D11NL2BR9 NR8BE3NR3HU6BU3NL2R6FD11GBR6 R3U6R6EU5HL9BF3NUD2R4S4"
70 HPRINT(19,12),"by":HPRINT(9,16),"GEORGE & ELLEN AFTAMONOW"
75 FORVO=30TO1STEP-4:PLAY"V=VO;":FORZO=5TO1STEP-3:FORZN=9TO1STEP-1:PLAY"L255O=ZO;=ZN;":NEXTZN,ZO,VO:PLAY"V15"
80 HCLS5:HCOLOR1:HPRINT(7,4),"DO YOU NEED INSTRUCTIONS?":HLINE(40,20)-(280,60),PSET,B:HLINE(40,61)-(280,61),PSET
82 I$=INKEY$:IFI$=""THEN82ELSEIFI$="N"THEN90
84 IFI$="Y"THENGOSUB700ELSE82
90 DATA1,2,3,4,2,3,4,1,3,4,1,2,4,1,2,3
95 DIMA(4,11)
100 HCLS5:HCOLOR0,5
110 FORZ=15TO180STEP15:HLINE(130,Z)-(190,Z),PSET:NEXT:FORZ=130TO190STEP15:HLINE(Z,15)-(Z,180),PSET:NEXT
115 FORZ=16TO181STEP15:HLINE(131,Z)-(191,Z),PSET:NEXT:FORZ=131TO191STEP15:HLINE(Z,16)-(Z,181),PSET:NEXT
120 X=0:Y1=8:FORY=0TO45STEP15:FORQ=1TO4:READZ:HCIRCLE(X+138,Y+128),5,Z:HPAINT(X+138,Y+128),Z,Z:X=X+15:A(Q,Y1)=Z:NEXTQ:X=0:Y1=Y1+1:NEXTY
130 HCOLOR1:A=50:FORE=2TO10STEP2:HPRINT(13,E),A:A=A-10:NEXT:HPRINT(29,4),"SCORE"
140 HCOLOR0:HLINE(8,2)-(318,190),PSET,B:HLINE(60,6)-(314,186),PSET,B:HLINE(12,6)-(56,186),PSET,B:HPAINT(10,4),4,0
150 HDRAW"BM50,60L12D24L8U24L12E16F16":HPAINT(40,58),2,0
152 HPRINT(3,2),"UP":HPRINT(3,4),"TOP":HPRINT(2,22),"GA/EA"
199 X=130:Y=165:C=1:R=11
200 HCOLOR0:I$=INKEY$:IFI$=""THENHLINE(X,Y)-(X+15,Y+15),PRESET,B:HLINE(X,Y)-(X+15,Y+15),PSET,B:GOTO200
210 IFI$=CHR$(13)ANDA(C,R)=0THEN200ELSEIFI$=CHR$(13)THEN300
220 IFI$=CHR$(9)ANDX<175THENX=X+15:C=C+1:GOTO200
230 IFI$=CHR$(8)ANDX>130THENX=X-15:C=C-1:GOTO200
240 IFI$=CHR$(94)ANDY>15THENY=Y-15:R=R-1:GOTO200
250 IFI$=CHR$(10)ANDY<165THENY=Y+15:R=R+1:GOTO200
255 IFI$="Q"THEN520
260 GOTO200
300 M=0:FORZ=1TO4:IFA(Z,R)>0 THENM=M+1:NEXTELSENEXT
310 NR=R-M:IFNR<1THEN400ELSEIFA(C,NR)>0THEN400
320 FORZ=1TO4:IFZ=C THENNEXTELSEIFA(C,R)=A(Z,NR)THEN400ELSENEXT
325 IFM>1THEN330ELSEFORZ=R-1 TO1STEP-1:IFA(C,Z)>0THEN330ELSENEXT
327 GOTO400
330 A(C,NR)=A(C,R):P=A(C,R):A(C,R)=0:X2=138+(C-1)*15:Y2=23+(NR-1)*15:HPAINT(X+8,Y+8),5,5:HCIRCLE(X2,Y2),5,P:HPAINT(X2,Y2),P,P
340 IFR<6THENSC=SC-(6-R)*10
350 IFNR<6THENSC=SC+(6-NR)*10
360 HCOLOR5:HLINE(230,48)-(262,60),PSET,BF:HCOLOR1:HPRINT(29,6),SC:HCOLOR0:IFSC=560THEN500ELSEGOSUB550:GOTO200
370 'IFSC=560THEN500
400 PLAY"T250O4ABCO2DDD":HCOLOR1:HPRINT(28,16),"ILLEGAL":HPRINT(30,18),"MOVE":FORQ=1TO700:NEXT:HCOLOR5:HPRINT(28,16),"ILLEGAL":HPRINT(30,18),"MOVE":GOTO200
500 FORQ=10TO60STEP5:PALETTE5,Q:FORZZ=1TO22:NEXTZZ,Q:PALETTE5,63
510 HCOLOR1:HPRINT(28,10),"PERFECT":HPRINT(29,12),"SCORE"
520 HCOLOR1:HPRINT(26,18),"PLAY AGAIN?":HPRINT(29,20),"(Y/N)"
530 I$=INKEY$:IFI$=""THEN530
540 IFI$="Y"THENRESTORE:SC=0:FORZZ=1TO11:FORQQ=1TO4:A(QQ,ZZ)=0:NEXTQQ,ZZ:GOTO100ELSEIFI$="N"THEN820ELSE530
549 'check moves left
550 FORD=3TO11:FORA=1TO4:IFA(A,D)=0THENNEXTA:NEXTD
555 M=0:IFD=12THEN640ELSEFORQ=1TO4:IFA(Q,D)=0 THENNEXTELSEM=M+1:NEXT
560 IFD=12THEN640
565 IFA=5THENNEXTD
570 CR=D-M:IFCR<1THENNEXTA ELSEIFA(A,CR)>0 THENNEXTA
580 IFA=5THENNEXTD
585 IFD=12THEN640
590 FORG=1TO4:IFA(G,CR)=A(A,D)THENNEXTA ELSENEXTG
595 IFD=12THEN640
600 IFA=5THENNEXTD
604 IFM>1THENRETURN
605 IFM=1THENFORE=D-1 TO1STEP-1:IFA(A,E)>0THENRETURNELSENEXTE
610 IFA=4THENNEXTD ELSENEXTA
620 IFD=12THEN640
630 RETURN
640 HCOLOR1:HPRINT(25,13),"NO MOVES LEFT":PLAY"T250O2BBBO1AAAO2DDD":GOTO520
700 HCLS5:HPRINT(1,1),"The  object  is to move all of  your":HPRINT(1,2),"pieces to the top of the grid. Place":HPRINT(1,3),"the blinking rectangle over the piece":HPRINT(1,4),"you wish to move, using the arrow keys,":HPRINT(1,5),"and press ENTER. The p
710 HPRINT(1,5),"and press ENTER. The piece is moved":HPRINT(1,6),"upward the same number of spaces as":HPRINT(1,7),"there are pieces in that row.":HPRINT(1,8),"For example: If there are 2 pieces in":HPRINT(1,9),"that row, the piece moves upward 2"
720 HPRINT(1,10),"spaces.":HPRINT(1,12),"ILLEGAL MOVES:":HPRINT(2,13),"1) The new space must be vacant.":HPRINT(2,14),"2) A piece may not land in a row if":HPRINT(1,15),"there is already a piece of the same":HPRINT(1,16),"color in that row."
730 HPRINT(2,17),"3) The topmost piece may NOT move one":HPRINT(1,18),"space upward."
740 HPRINT(8,24),"Press ENTER to continue"
750 IFINKEY$=""THEN750
760 HCLS5:HPRINT(12,1),"SCORING:":HPRINT(1,3),"Points are scored only when the":HPRINT(1,4),"squares up top are occupied."
770 HPRINT(1,5),"560 is perfect.":HPRINT(1,7),"The game ends when you cannot move or":HPRINT(1,8),"when all pieces are up top. Press <Q>":HPRINT(1,9),"at any time to quit and start over."
780 HPRINT(8,24),"Press ENTER to begin."
800 I$=INKEY$:IFI$=""THEN800
810 RETURN
820 HCLS:Z=21:HCOLOR3:HPRINT(16,1),"THE END":HPRINT(16,22),"THE END":W$="T":X=16:GOSUB900:W$="H":X=17:GOSUB900:W$="E":X=18:GOSUB900:X=20:GOSUB900:W$="N":X=21:GOSUB900:W$="D":X=22:GOSUB900
830 HCOLOR2:HLINE(90,80)-(220,116),PSET,B:HLINE(80,72)-(230,124),PSET,B:HPAINT(82,78),0,2
850 CLS:END
900 Z=23:FORY=1TO11:Z=Z-1:PLAY"T250O1D":HCOLOR3:HPRINT(X,Y),W$:HPRINT(X,Z),W$:PLAY"O2A":HCOLOR5:HPRINT(X,Y),W$:HPRINT(X,Z),W$:NEXT:HCOLOR3:HPRINT(X,Y),W$:RETURN
