0 'COPYRIGHT 1990 FALSOFT, INC
100 ' *************************
110 ' ****   COCO JUMBLE   ****
120 ' ***    WRITTEN BY:    ***
130 ' **    SHANE  MESSER    **
140 ' *  SPECIAL  THANKS TO:  *
150 ' *  SHARON AND JERRY H.  *
160 ' ** MR.ORBAN & JOSE' G. **
170 ' *** COPYRIGHT(C) 1989 ***
180 ' **** BY FALSOFT, INC ****
190 ' *************************
200 POKE 65497,0
210 GOTO 300
220 X1=JOYSTK(0):Y1=JOYSTK(1)
230 X2=JOYSTK(2):Y2=JOYSTK(3)
240 IF J=1 THEN X=X1:Y=Y1 ELSE X=X2:Y=Y2
250 IF JO=1 THEN RETURN
260 X=X/4:Y=Y/4
270 X=INT(X):Y=INT(Y)
280 RETURN
290 '---------------Startup loop------------------
300 CLEAR 2000
310 GOSUB 2190
320 '
330 '
340 '
350 '
360 DIM V(26),V$(16,16),S(15,15),G$(20):HBUFF 1,6000:HBUFF 2,100:HBUFF 3,500
370 P=1:KR=1
380 GOSUB 600
390 GOSUB 1600
400 GOSUB 1150:HCOLOR 4:HPRINT (19,9),"Pick Letters Player 1"
410 PL$=STRING$(7," "):GOSUB 1690:P1$=PL$
420 GOSUB 1150:HCOLOR4:HPRINT (19,9),"Pick Letters Player 2"
430 PL$=STRING$(7," "):P=2:GOSUB 1690:P=1:P2$=PL$
440 '
450 '---------------End of Start Loop-------------
460 '-------------------Main Loop-----------------
470 PR=1
480 HCOLOR 4:GOSUB 1150:GOSUB 980:GOSUB1050
490 POKE 65497,0
500 IF A$="V" THEN GOSUB 1190:GOTO 480
510 IF A$="S" THEN GOSUB 2660:GOTO 480
520 IF A$="L" THEN GOSUB 2700:GOTO 480
530 IF A$="N" THEN IF P=1 THEN P=2 ELSE P=1
540 IF A$="C" THEN GOSUB 2820:GOTO 480
550 IF A$="P" THEN WD$="":RN=RN+1:GOSUB 1240:GOSUB 1340:IF LEN(WD$)>0 THEN GOSUB 2040 ELSE 480
560 KR=KR+1
570 GOTO 480
580 '---------------End of Main Loop--------------
590 '-----------------Screen Setup----------------
600 IF CS=0 THEN CMP:PALETTE 5,32:PALETTE 0,57:PALETTE 1,59:PALETTE 4,16:PALETTE 6,63:PALETTE 8,63:PALETTE 9,0 ELSE RGB:PALETTE 5,56:PALETTE 0,61:PALETTE 1,25:PALETTE 4,6:PALETTE 6,63:PALETTE 8,63:PALETTE 9,0
610 WIDTH 32:PMODE 4,1:SCREEN1,1:GOSUB 920:HSCREEN2:HSCREEN0:POKE &HE6,2:POKE &HE6C6,0:POKE &HE6C7,0:HCLS6:HCOLOR14
620 HCOLOR5:HLINE(7,2)-(143,132),PSET,BF:HCOLOR4:Y=7:FOR X=15 TO 135 STEP 8:GOSUB 680:NEXT:X=15:FOR Y=7 TO 127 STEP 8:GOSUB 680:NEXT
630 GOSUB 690
640 HCOLOR 4:HPRINT(23,1),"Coco Jumble":HPRINT(22,2)," Written by:":HPRINT(20,3),"  Shane  Messer"
650 HGET (144,33)-(320,41),1
660 '
670 RETURN
680 HLINE(X,Y)-(135,127),PSET,B:RETURN
690 '-----------------Data Setup------------------
700 FOR X=1 TO 15:FOR Y=1 TO 15:V$(X,Y)="": NEXTY,X:FOR X=1 TO 8:READ G$(X):G$(16-X)=G$(X):NEXT:FOR Y=1 TO 15:L$=MID$(G$(Y),Y,1)
710 IF L$="R" THEN S(X,Y)=2
720 IF L$="W" THEN S(X,Y)=0
730 IF L$="B" THEN S(X,Y)=4
740 IF L$="P" THEN S(X,Y)=1
750 IF L$="S" THEN S(X,Y)=3
760 NEXT Y:GOSUB 850:RETURN
770 DATA "WWWWWWWRWWWWWWW"
780 DATA "WWWSWWWPWWWSWWW"
790 DATA "WRWWPWWWWWPWWRW"
800 DATA "WWPWWWWSWWWWPWW"
810 DATA "RWWWWWWWWWWWWWR"
820 DATA "WPWWWSWBWSWWWPW"
830 DATA "WWSWWWBWBWWWSWW"
840 DATA "RWWBWWWPWWWBWWR"
850 FOR X=1 TO 15:FOR Y=1 TO 15:L$=MID$(G$(X),Y,1)
860 IF L$="S" THEN C=1 ELSE IF L$="P" THEN C=0 ELSE IF L$="B" THEN C=2 ELSE IF L$="R" THEN C=3 ELSE C=5
870 IF VO=1 THEN RETURN
880 IF C<4 THEN HPAINT(X*8+8,Y*8),C,4
890 NEXT Y,X
900 GOSUB 1000
910 RETURN
920 '-----------------Title Screen----------------
930 PCLS 1:Y=6:A$="C o c o  J u m b l e":GOSUB970:A$=" ":GOSUB 970:A$="Written by:":GOSUB 970:A$="Shane  Messer":GOSUB 970:A$="(C) Copyright, 1989":GOSUB 970:A$=" ":GOSUB 970:A$="Please wait...":GOSUB 970
940 FOR X=0 TO 248 STEP 8:DRAW "BM"+STR$(X)+",0C0R7D7L7U7":DRAW"BM"+STR$(X)+",184R7D7L7U7":NEXT X
950 FOR Y=0 TO 178 STEP 8:DRAW"BM0,"+STR$(Y)+"C0R7D7L7U7":DRAW"BM248,"+STR$(Y)+"C0R7D7L7U7":NEXT Y
960 RETURN
970 Y=Y+1:X=32-LEN(A$):X=X/2:X=INT(X):A=256*Y+X+3584:FOR B=1 TO LEN(A$):B$=MID$(A$,B,1):C=(ASC(B$)-32)*8:FORD=0 TO 7:POKE A+32*D,255-PEEK(&HF09D+C+D):NEXTD:A=A+1:NEXTB:RETURN
980 K$=STR$(S1):HPRINT(19,6),"Player 1 ->"+K$:K$=STR$(S2):HPRINT(19,7),"Player 2 ->"+K$
990 RETURN
1000 LL$="AAAAAAAAABBBBCCCDDDDEEEEEEEEEEEEFFFGGGHHIIIIIIIIIJJKLLLLMMNNNNNNOOOOOOOOPPQRRRRRRSSSSSTTTTTUUUUVVVWWXYZ**"
1010 FOR X=1 TO 26:READ V(X):NEXT
1020 RETURN
1030 DATA 1,3,3,2,1,4,2,5,1,6,6,2,2,1,1,4,10,4,2,3,2,6,4,10,6,10
1040 '--------------------Menu---------------------
1050 HCOLOR4:HPRINT(19,9),"<V>iew Letters":HPRINT(19,10),"<N>ext":HPRINT(19,11),"<P>lay":HPRINT (19,12),"<Q>uit"
1060 HPRINT (19,13),"<L>oad/<S>ave"
1070 HPRINT (19,14),"<C>hange Letters":HPRINT (19,16),"Player"+STR$(P)
1080 EXEC 44539:A$=INKEY$
1090 IF A$="Q" THEN GOSUB 1120:GOTO 1050
1100 IF INSTR("QVNPSLC",A$)=0 THEN 1050
1110 RETURN
1120 ' QUIT
1130 GOSUB 1150
1140 HPRINT (19,9),"Are you sure?":EXEC 44539:A$=INKEY$:IF A$="Y" THEN WIDTH 32:POKE 64596,0:CLS:END:ELSE GOSUB 1150:GOSUB 980:RETURN
1150 ' ERASE CURRENT WINDOW
1160 FOR I=33 TO 132 STEP 8
1170 HPUT (144,I)-(320,I+8),1
1180 NEXT:RETURN
1190 GOSUB 1150:HPRINT (19,9),"Press any key to view":
1200 EXEC 44539:GOSUB 1150:IF P=1 THEN H$=P1$ ELSE H$=P2$
1210 K$="":FOR G=1 TO 7:K$=K$+MID$(H$,G,1)+" ":NEXTG
1220 IF P=1 THEN HCOLOR6:HPRINT (3,19),"- - - - - - -":HCOLOR 4:HPRINT(3,19),K$:EXEC 44539:HCOLOR6:HPRINT(3,19),K$:HCOLOR4:HPRINT(3,19),"- - - - - - -":RETURN
1230 IF P=2 THEN HCOLOR6:HPRINT(3,24),"- - - - - - - ":HCOLOR 4:HPRINT(3,24),K$:EXEC 44539:HCOLOR 6:HPRINT(3,24),K$:HCOLOR 4:HPRINT(3,24),"- - - - - - -":RETURN
1240 GOSUB 1150:HCOLOR 4:HPRINT(19,9),"Select position"
1250 IF P=1 THEN J=J1 ELSE J=J2
1260 '--------------Main Subroutines--------------
1270 GOSUB 220
1280 IF X>15 THEN X=15 ELSE IF X=0 THEN X=1
1290 IF Y>15 THEN Y=15 ELSE IF Y=0 THEN Y=1 
1300 HGET(X*8+8,Y*8)-(X*8+15,Y*8+8),2:HPUT(X*8+8,Y*8)-(X*8+15,Y*8+8),2,NOT:HPUT (X*8+8,Y*8)-(X*8+15,Y*8+8),2,PSET
1310 IF J=1 AND BUTTON(0)=0 THEN 1250 ELSE IF J=1 AND X>1 AND X<15 AND Y>1 AND Y<15 AND V$(X,Y)="" THEN RETURN ELSE IF RN>1 AND J=1 AND V$(X,Y)="" THEN RETURN:ELSE IF J=1 THEN SOUND 1,1
1320 IF J=2 AND BUTTON(2)=0 THEN 1250 ELSE IF J=2 AND X>1 AND X<15 AND Y>1 AND Y<15 AND V$(X,Y)="" THEN RETURN ELSE IF RN>1 AND V$(X,Y)="" AND J=1 THEN RETURN:ELSE IF J=2 THEN SOUND 1,1
1330 GOTO 1250
1340 IF P=1 THEN PL$=P1$ ELSE PL$=P2$' GOSUB 790 : 19,9
1350 GOSUB 1150:HPRINT (19,9),"(D)own or (S)ideways"
1360 EXEC 44539:A$=INKEY$:IF A$<>"D" AND A$<>"S" THEN 1360
1370 '---------------Write word-------------------
1380 QX=X:QY=Y:GOSUB 1150:HPRINT (19,9),"Type in word"
1390 IF A$="S" THEN DS=1:DD=0 ELSE DS=0:DD=1
1400 EXEC 44539:I$=INKEY$:IF I$=" " THEN 1400
1410 IF I$="g" THEN GOSUB 2180:GOTO 1400
1420 IF ASC(I$)=4 THEN GOSUB 2180:GOSUB 1910:RETURN
1430 IF ASC(I$)=13 THEN GOSUB 2540:IF NO=1 THEN 1400 ELSE GOSUB 1690:GOSUB 1910
1440 IF ASC(I$)=13 AND P=1 THEN P=2:RETURN
1450 IF ASC(I$)=13 AND P=2 THEN P=1:RETURN
1460 IF ASC(I$)=8 THEN VO=1:GOSUB 2020:GOSUB 1970:IF INSTR(PL$," ")>0 THEN GOSUB 1930:VO=0:X=X-DS:Y=Y-DD:MID$(PL$,INSTR(PL$," "),1)=RIGHT$(WD$,1):WD$=LEFT$(WD$,LEN(WD$)-1):V$(X,Y)="":IF RT=1 THEN RETURN ELSE GOTO 1400
1470 IF INSTR(PL$,I$)>0 THEN 1480 ELSE 1400
1480 IF X>15 THEN 1400
1490 IF Y>15 THEN 1400
1500 IF V$(X,Y)<>"" THEN X=X+DS:Y=Y+DD:WD$=WD$+CHR$(255)
1510 IF DS=1 AND X=16 THEN 1400
1520 IF DD=1 AND Y=16 THEN 1400
1530 HPAINT(X*8+8,Y*8),9,4
1540 HCOLOR 8:HPRINT (X+1,Y),I$:X=X+DS:Y=Y+DD:PLAY"T255L10A"
1550 IF KEY=1 THEN RETURN
1560 V$(X-DS,Y-DD)=I$
1570 WD$=WD$+I$
1580 MID$(PL$,(INSTR(PL$,I$)),1)=" "
1590 GOTO 1400
1600 HCOLOR4:HPRINT(1,17),"Player >1 letters":HPRINT(1,21),"Player >2 letters"
1610 HPRINT (3,19),"- - - - - - -":HPRINT(3,23),"- - - - - - -"  
1620 HLINE(7,134)-(143,191),PSET,B
1630 '--------------------------------------------
1640 HCOLOR 4:FOR Y=18 TO 22:FOR X=19 TO 39 
1650 XX=X*8:YY=Y*8:C$="BM"+STR$(XX)+","+STR$(YY)+"C5BRR6D6L6U6R6BR":HDRAW C$:NEXT X,Y
1660 IF KE=1 THEN RETURN
1670 GOSUB 2300:HSCREEN2:POKE 65434,63
1680 RETURN
1690 W2$=PL$:'------------Get Letters------------
1700 IF P=1 THEN J=J1 ELSE J=J2
1710 JO=1:GOSUB 220:JO=0
1720 X=INT(X/3):Y=INT(Y/10)
1730 IF LL$=STRING$(105," ") THEN 2240
1740 Y=Y+1:X=X+1:IF Y>5 THEN Y=5 ELSE IF X>21 THEN X=21
1750 X=X+18:Y=Y+17:XX=X*8:YY=Y*8
1760 HGET (XX,YY)-(XX+8,YY+8),2:HPUT(XX,YY)-(XX+8,YY+8),2,NOT:HPUT(XX,YY)-(XX+8,YY+8),2,PSET
1770 IF J=1 AND BUTTON(0)=1 THEN GOSUB 1800 
1780 IF J=2 AND BUTTON(2)=1 THEN GOSUB 1800
1790 IF INSTR(PL$," ")=0 THEN RETURN ELSE 1700
1800 IF HPOINT(XX+1,YY)<>5 THEN IF KE=1 THEN NA=1: RETURN ELSE RETURN
1810 HDRAW"BM"+STR$(XX-1)+","+STR$(YY)+"C6BRBRR6D6L6U6"
1820 IF KO=1 THEN RETURN
1830 IF LEN(PL$)=0THEN PL$=STRING$(7," ")
1840 IF LEN(PL$)=7 AND INSTR(PL$," ")=0 THEN RETURN
1850 N=RND(105):IF MID$(LL$,N,1)=" " THEN 1850 ELSE MID$(PL$,INSTR(PL$," "),1)=MID$(LL$,N,1)
1860 MID$(LL$,N,1)=" "
1870 SOUND 128,1
1880 RETURN
1890 IF P=1 THEN PL$=P1$ ELSE IF P=2 THEN PL$=P2$
1900 RETURN
1910 IF P=1 THEN P1$=PL$ ELSE IF P=2 THEN P2$=PL$
1920 RETURN
1930 IF MID$(WD$,LEN(WD$),1)=CHR$(255) THEN RETURN
1940 IF DS=1 THEN HPAINT(X*8,Y*8),C,4
1950 IF DD=1 THEN HPAINT(X*8+8,Y*8-8),C,4
1960 RETURN
1970 XX=X:YY=Y
1980 IF DD=1 THEN X=X+0:Y=Y-1:GOSUB 2000:GOSUB 860 ELSE X=X-1:GOSUB 2000:GOSUB 860
1990 X=XX:Y=YY:RETURN
2000 L$=MID$(G$(X),Y,1)
2010 RETURN
2020 IF LEN(WD$)=0 THEN 2030 ELSE IF MID$(WD$,LEN(WD$),1)=CHR$(255) THEN X=X-DS:Y=Y-DD:WD$=LEFT$(WD$,LEN(WD$)-1)
2030 RETURN
2040 FV=0:FS=0
2050 '-------------------Get Score-----------------
2060 D=0:T=0:FOR X=1 TO LEN(WD$)
2070 IF MID$(WD$,X,1)=CHR$(255) THEN QX=QX+DS:QY=QY+DD:GOTO 2120
2080 L$=MID$(WD$,X,1)
2090 IF L$="*" THEN L$="A"
2100 IF L$>"" THEN K=ASC(L$)-64:FV=V(K)
2110 K$=MID$(G$(QX),QY,1):IF K$="S" THEN FV=FV*2 ELSE IF K$="B" THEN FV=FV*3 ELSE IF K$="P" THEN D=D+1 ELSE IF K$="R" THEN T=T+1
2120 QX=QX+DS:QY=QY+DD:FS=FS+FV:NEXT X
2130 IF D>0 THEN FS=FS*2:D=D-1:GOTO 2130
2140 IF T>0 THEN FS=FS*3:T=T-1:GOTO 2140
2150 IF W2$="       " THEN FS=FS+80:BN=BN+1:W2$="" ELSE W2$=""
2160 IF P=1 THEN S2=S2+FS ELSE S1=S1+FS
2170 RETURN
2180 FOR KK=1 TO LEN(WD$):I$=CHR$(8):RT=1:GOSUB 1460:NEXT KK:RT=0:RETURN
2190 CMP:WIDTH 40:CLS2:ATTR 2,4:CLS:GOSUB 5000:PRINT"     Player 1 press your joystick"
2200 GOSUB 2270:J1=J
2210 PRINT"     Player 2 press your joystick"
2220 GOSUB 2270:J2=J
2230 PMODE 4,1:SCREEN 1,1:RETURN
2240 'WINNER!
2250 HSCREEN 2
2260 GOTO 2340
2270 X=BUTTON(0):Y=BUTTON(2):IF X=1 THEN J=1:ELSE IF Y=1 THEN J=2:ELSE 2270
2280 IF (J=1 AND BUTTON(0)=1) THEN 2280 ELSE IF (J=2 AND BUTTON(2)=1) THEN 2280
2290 RETURN
2300 'PMODE 4,1:SCREEN1,1:COLOR 0:Y=96:FOR X=96 TO 0 STEP -1:Y=Y-1:LINE(X,Y)-(255-X,191-Y),PSET,B:IF Y=0 THEN Y=1
2310 'NEXT X
2320 'PMODE 4,1:SCREEN1,1:COLOR 1:Y=191:FOR X=0 TO 191:LINE(X,Y)-(255-X,191-Y),PSET,B:Y=Y-1:NEXT X
2330 RETURN
2340 '--------------------Winner-------------------
2350 HCLS5:HCOLOR 0
2360 IF S1>S2 THEN P=1 ELSE P=2
2370 P$="player"+STR$(P)
2380 HPRINT (0,1),"            Congradulations!":HPRINT(0,2),"             "+P$+" wins!"
2390 HCOLOR 1:PALETTE 1,20
2400 HCIRCLE(160,140),50:HPAINT(160,140),1,1
2410 PALETTE 2,22:PALETTE 3,28
2420 HDRAW"BM190,110E40H10G40H10E40F10H20G40H40G10F60G10H60E10G20F60"
2430 PALETTE 4,48
2440 HPAINT(160,86),2,1
2450 HPAINT(195,86),3,1
2460 PALETTE 0,63:HPAINT(125,86),3,1
2470 HPAINT(130,86),0,1:HPAINT(180,86),0,1
2480 HCIRCLE(160,140),35,4,1,0,.50
2490 HCOLOR4:HCIRCLE(140,120),10
2500 HCIRCLE(176,120),10
2510 HCIRCLE(158,135),10,4,2
2520 FOR T=1 TO 5000:NEXT:WIDTH 32:CLS:CMP:POKE 65497,0:END
2530 NO=0:GOTO 1460
2540 ' MAKE SURE
2550 IF WD$="" OR RN=1 THEN RETURN
2560 X=X-DS:Y=Y-DD:IF DS=1 THEN GOSUB 2600 ELSE GOSUB 2620
2570 X=X+DS:Y=Y+DD
2580 IF NQ=1 THEN NO=1 ELSE NO=0
2590 NQ=0:RETURN
2600 FOR QQ=X-LEN(WD$)-1 TO X+1:FOR WW=Y-1 TO Y+1:IF V$(QQ,WW)<>"" AND (QQ<>X OR WW<>Y) THEN NQ=0:RETURN
2610 NEXT WW,QQ:NQ=1:RETURN
2620 FOR QQ=X-1 TO X+1:FOR WW=Y-LEN(WD$)-1 TO Y+1:IF WW=-1 THEN WW=1:ELSE IF QQ=-1 THEN QQ=1
2630 IF V$(QQ,WW)<>"" AND (QQ<>X OR WW<>Y) THEN NQ=0:RETURN
2640 NEXT WW,QQ
2650 NQ=1:RETURN
2660 '     SAVE
2670 POKE 65496,0:OPEN"O",#1,"SAVEGAME"
2680 FOR QQ=1 TO 16:FOR WW=1 TO 16:WRITE #1,V$(QQ,WW):NEXT WW,QQ:WRITE #1,P,S1,S2,KR,LL$,P1$,P2$
2690 CLOSE:RETURN
2700 '     LOAD
2710 POKE 65496,0:OPEN"I",#1,"SAVEGAME"
2720 FOR QQ=1 TO 16:FOR WW=1 TO 16:INPUT #1,V$(QQ,WW):NEXT WW,QQ:INPUT #1,P,S1,S2,KR,LL$,P1$,P2$:CLOSE
2730 KE=1:GOSUB 1640:KE=0
2740 KEY=1:FOR Y=1 TO 15:FOR X=1 TO 15:I$=V$(X,Y):IF I$="" THEN NEXT X,Y:GOTO 2770
2750 IF (ASC(I$)>64 AND ASC(I$)<91) OR ASC(I$)=42 THEN GOSUB 1530
2760 NEXT X,Y
2770 FOR T=1 TO 105:IF MID$(LL$,T,1)=" " THEN GOSUB 2790
2780 NEXT T:NA=0:KO=0:KE=0: RETURN
2790 KE=1:NA=0:KO=1:X=RND(21):Y=RND(5):X=X+18:Y=Y+17:XX=X*8:YY=Y*8:GOSUB 1800:KE=0
2800 IF NA=1 THEN 2790
2810 KO=0:NA=0:RETURN
2820 GOSUB 1150:IF P=1 THEN PL$=P1$ ELSE PL$=P2$
2830 FOR T=1 TO 7
2840 B$="Change "+MID$(PL$,T,1)+"->":HPRINT(19,6+T),B$:EXEC 44539:A$=INKEY$
2850 IF A$="N" THEN B$=B$+"N"
2860 IF A$="Y" THEN B$=B$+"Y":GOSUB 2910
2870 IF A$<>"N" AND A$<>"Y" THEN 2840
2880 HPRINT(19,6+T),B$:NEXT
2890 IF P=1 THEN P1$=PL$ ELSE P2$=PL$
2900 IF P=1 THEN P=2:RETURN ELSE P=1:RETURN
2910 G$=MID$(PL$,T,1):MID$(PL$,T,1)=" "
2920 N=RND(105):IF MID$(LL$,N,1)<>" " THEN R$=MID$(LL$,N,1):MID$(PL$,T,1)=R$:MID$(LL$,N,1)=G$:RETURN ELSE 2920
2930 MID$(LL$,N,1)=G$:RETURN
5000 LOCATE 6,10:PRINT"Are you using an RGB monitor?"
5001 A$=INKEY$:IF A$="" THEN 5001
5002 IF A$="Y" OR A$="y" THEN CS=1 ELSE CS=0
5003 CLS:RETURN
