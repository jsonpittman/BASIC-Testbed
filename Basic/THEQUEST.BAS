0 ' COPYRIGHT 1989 FALSOFT, INC
10 '
20 'THE QUEST
30 'BY JOEL MATHEW HEGBERG
40 '936 NORTH TWELFTH STREET
50 'DE KALB, ILLINOIS  60115
60 '
70 '
80 CLEAR1000:DIM MZ$(1,12):GOTO1610
90 CLS:PRINT"PLEASE WAIT...":RESTORE:B$=CHR$(191):FORM=0TO1:IFM=1THENB$=CHR$(143)
100 FORY=0TO12:READA$:FORX=1TO29:IFMID$(A$,X,1)="1"THENMID$(A$,X,1)=B$:ELSEMID$(A$,X,1)=" "
110 NEXTX:MZ$(M,Y)=A$:NEXTY,M
120 CLS:PRINT"the quest":PRINT"(C) DECEMBER 23, 1988 BY":PRINT"JOEL MATHEW HEGBERG.":PRINT@480,"PRESS ANY KEY.";:DEFFNLC(Z)=PEEK(1024+Y*32+X):A$=INKEY$
130 IFINKEY$=""THEN130:ELSER=RND(-TIMER):TIMER=0:CK=0
140 CLS:GOSUB1130
150 B$="":RM=PR:GOSUB880:POKE1024+Y*32+X,175:GOSUB1220:FORT=338TO345:POKET,255:NEXTT:CK=CK+TIMER:TIMER=0
160 '
170 A$=INKEY$:IFA$=""THENA$=B$:ELSEB$=A$
180 X1=X:Y1=Y:IFA$=CHR$(94)THENY=Y-1:ELSEIFA$=CHR$(10)THENY=Y+1:ELSEIFA$=CHR$(8)THENX=X-1:ELSEIFA$=CHR$(9)THENX=X+1:ELSEIFA$=" "THEN680:ELSE200
190 P=FNLC(Z):IFP<>96THEN390:ELSEPOKE1024+Y1*32+X1,96:POKE1024+Y*32+X,175
200 IFX<1OR X>30OR Y<1OR Y>13THEN600
210 IFMR(0)=PR THEN320:ELSEGOSUB240
220 IFA$="R"THEN570:ELSEIFA$="Q"THEN120
230 GOTO160
240 IFMR(0)=-1THEN280:ELSEIFRND(999)>980THEN MR(0)=RND(13):GOSUB260:IFMR(0)=PR THENXX=MX(0):YY=MY(0):GOSUB1310:MX(0)=XX:MY(0)=YY:POKE1024+MY(0)*32+MX(0),102:CK=CK+TIMER:TIMER=0
250 RETURN
260 IFMR(0)=8THENMR(0)=RND(13):GOTO260
270 RETURN
280 MT=MT-1:IFMT>0THENRETURN
290 MR(0)=13
300 IFMR(0)=PR THENMR(0)=RND(13):GOTO300
310 RETURN
320 POKE1024+Y*32+X,96:POKE1024+MY(0)*32+MX(0),96:M1=MX(0):M2=MY(0)
330 IFX<M1 THENM1=M1-1:ELSEIFX>M1 THENM1=M1+1
340 IFPEEK(1024+M2*32+M1)<>96THEN M1=MX(0)
350 IFY<M2 THENM2=M2-1:ELSEIFY>M2 THENM2=M2+1
360 IFPEEK(1024+M2*32+M1)<>96THEN M2=MY(0)
370 POKE1024+Y*32+X,175:MX(0)=M1:MY(0)=M2:POKE1024+M2*32+M1,102
380 IFMX(0)=X ANDMY(0)=Y THEN530:ELSE220
390 IFP=102THEN530:ELSEIFP=144THEN490:ELSEIFP=233ORP=217ORP=201AND HL>0AND HL<4THEN450
400 IFP=106ORP=95ORP=214ORP=230ORP=198THEN420
410 X=X1:Y=Y1:GOTO200
420 IFHL<>0THEN410
430 IFP=214THENHL=1:KR(0)=-1:ELSEIFP=230THENHL=2:KR(1)=-1:ELSEIFP=198THENHL=3:KR(2)=-1:ELSEIFP=106AND TR=PR THENHL=4:TR=-1:ELSEIFP=95THENHL=5:SW=-1:ELSE410
440 SOUND150,1:POKE1024+Y1*32+X1,96:POKE1024+Y*32+X,175:POKE1504,P:GOTO200
450 IFHL=1ANDP=217THENCC=0:GOTO480:ELSEIFHL=2ANDP=233THENPC=0:GOTO480:ELSEIFHL=3ANDP=201THENWC=0:GOTO460:ELSE410
460 POKE1295,144:POKE1296,144
470 GOTO410
480 POKE1231,144:POKE1232,144:GOTO470
490 IFPR=2OR PR=6THENPR=PR-1:Y=13:GOTO150
500 IFPR=13THENPR=12:X=30:GOTO150
510 IFPR=10THENPR=11:GOTO150
520 GOTO410
530 IFHL=5THENPOKE1024+32*MY(0)+MX(0),96:MR(0)=-1:MT=100:GOTO220
540 PLAY"V31T8L6O2CADEGC"
550 PRINT@480,"PRESS ANY KEY TO CONTINUE PLAY.";
560 IFINKEY$<>""THENFORT=0TO100:NEXTT:GOTO560:ELSE590
570 CLS:MR(0)=13:IFHL<4AND HL>0THENKR(HL-1)=PR:ELSEIFHL=4THENTR=PR:ELSEIFHL=5THENSW=PR
580 X=15:Y=11:PR=2:HL=0:GOTO150
590 IFINKEY$=""THEN590:ELSE570
600 IFX<1THENMV=1:X=30:ELSEIFX>30THENMV=2:X=1:ELSEIFY<1THENMV=3:Y=13:ELSEIFY>13THENMV=4:Y=1:ELSE210
610 IFPR=1THENPR=2:Y=7:GOTO150:ELSEIFPR=5THENPR=6:Y=10:GOTO150:ELSEIFPR=11THENPR=10:Y=4:GOTO150
620 IFPR=2OR PR=6THENPR=PR+1:GOTO150:ELSEIFPR=3ANDMV=2THENPR=4:GOTO150:ELSEIFPR=3THENPR=2:GOTO150
630 IFPR=4ANDMV=1THENPR=3:GOTO150:ELSEIFPR=4THENPR=7:GOTO150:ELSEIFPR=7ANDMV=1THENPR=4:GOTO150:ELSEIFPR=7ANDMV=2THENPR=8:GOTO150:ELSEIFPR=7THENPR=6:GOTO150
640 IFPR=8ANDMV=1THENPR=7:GOTO150:ELSEIFPR=8THENPR=9:GOTO150:ELSEIFPR=13THENPR=9:GOTO150
650 IFPR=9ANDMV=1THENPR=8:GOTO150:ELSEIFPR=9ANDMV=2THENPR=13:GOTO150:ELSEIFPR=9THENPR=10:GOTO150
660 IFPR=10ANDMV=3THENPR=9:GOTO150:ELSEIFPR=10THENPR=11:GOTO150:ELSEIFPR=12ANDMV=1THENPR=7:GOTO150:ELSEIFPR=12THENPR=13:GOTO150
670 PRINT"MOVEMENT ERROR FROM ROOM #"PR:PRINT"MOTION #"MV:STOP
680 IFHL=0THEN200:ELSEPOKE1504,96:XX=X+1:YY=Y+1:GOSUB1310
690 IFHL<4THENHL=HL-1:KR(HL)=PR:KY(HL)=YY:KX(HL)=XX:ELSE720
700 IFHL=0THENP=214:ELSEIFHL=1THENP=230:ELSEP=198
710 POKE1024+32*KY(HL)+KX(HL),P:HL=0:SOUND1,1:GOTO200
720 IFHL=4THENTR=PR:TX=XX:TY=YY:POKE1024+TY*32+TX,106:SOUND1,1:HL=0:IFTR=1THEN740:ELSE200
730 SW=PR:SX=XX:SY=YY:POKE1024+SY*32+SX,95:SOUND1,1:HL=0:GOTO200
740 PLAY"V31T4L4O2CEGO3T2CO2T4AO3T1C"
750 PRINT@480,"YOU DID IT!!!";:C=CK+TIMER
760 IFINKEY$<>""THEN760
770 IFINKEY$=""THEN770
780 CLS:RM=10:WC=0:GOSUB880
790 FORY=0TO7:POKE1039+Y*32,102:FORT=0TO200:NEXTT:POKE1039+Y*32,96:NEXTY
800 FORR=10TO0STEP-1:FORT=5TO13:PRINT@T*32+4,STRING$(24,207);:NEXTT:FORT=0TO10*R:NEXTT:FORT=5TO13:PRINT@T*32+4,STRING$(24,128);:NEXTT:FORT=0TO10*R:NEXTT,R
810 FORT=5TO13:PRINT@T*32+4,STRING$(24,32);:NEXTT
820 PRINT@480,"GOOD HAS CONQUERED EVIL AGAIN!";
830 IFINKEY$=""THEN830
840 CLS:PRINT"YOU FINISHED THE ADVENTURE IN":PRINTINT(CK/60);"SECONDS."
850 PRINT@480,"PRESS ANY KEY.";
860 IFINKEY$=""THEN860:ELSE120
870 GOTO870
880 IFRM=3OR RM=7OR RM=8OR RM=9OR RM=13THENPK=128:ELSEIFRM=1OR RM=2THENPK=223:ELSEIFRM=5OR RM=6THENPK=239:ELSEIFRM=4THENPK=191:ELSEIFRM=10OR RM=11THENPK=207:ELSEPK=175
890 CLS:PRINTSTRING$(32,PK):PRINT@448,STRING$(32,PK);:FORT=1TO13:POKE1024+32*T,PK:POKE1024+32*T+31,PK:NEXTT
900 IFRM=4OR RM=8THENFORT=1TO12:POKE1024+32*T+30,PK:NEXTT:POKE1056,96:POKE1471,96:GOTO970
910 IFRM=1OR RM=5THENPOKE1487,96:POKE1488,96:RETURN
920 IFRM=2OR RM=6THENPOKE1487,96:POKE1488,96:GOTO990:ELSEIFRM=3THENPOKE1039,96:POKE1040,96:POKE1087,96:RETURN
930 IFRM=7THENPOKE1440,96:POKE1087,96:POKE1039,96:POKE1040,96:GOTO1060
940 IFRM=9THENPOKE1440,96:POKE1279,96:POKE1487,96:POKE1488,96:GOTO1070:ELSEIFRM=13THENPOKE1248,96:POKE1056,144:GOTO1080
950 IFRM=10THENPOKE1039,96:POKE1040,96:GOTO1090
960 IFRM=11THENPOKE1039,96:POKE1040,96:RETURN:ELSEIFRM=12THENPOKE1056,96:POKE1087,96:POKE1262,10:POKE1263,13:POKE1264,8:RETURN
970 MZ=0:IFRM=8THENMZ=1
980 FORT=0TO12:PRINT@(T+1)*32+1,MZ$(MZ,T);:NEXTT:RETURN
990 FORT=1TO6:PRINT@T*32+4,STRING$(24,PK);:NEXTT
1000 FORT=7TO9:PRINT@T*32+4,STRING$(8,PK);STRING$(8,32);STRING$(8,PK);:NEXTT
1010 IFRM=2THEN1040
1020 IFPC=0THENPOKE1231,144:POKE1232,144:ELSEPOKE1231,233:POKE1232,233
1030 RETURN
1040 IFCC=0THENPOKE1231,144:POKE1232,144:ELSEPOKE1231,217:POKE1232,217
1050 RETURN
1060 FORT=10TO22:FORTT=5TO9:POKE1024+TT*32+T,159:NEXT TT,T:RETURN
1070 FORT=4TO26:POKE1152+T,175:POKE1344+T,175:NEXTT:FORT=6TO8:POKE1039+T*32,175:NEXTT:RETURN
1080 FORT=5TO0STEP-1:POKE1167+T*32-T,207:POKE1167+T*32+T,207:NEXTT:RETURN
1090 FORT=13TO8STEP-1:PRINT@T*32+4,STRING$(24,PK);:NEXTT
1100 FORT=7TO5STEP-1:PRINT@T*32+4,STRING$(8,PK);STRING$(8,32);STRING$(8,PK);:NEXTT
1110 IFWC=0THENPOKE1295,144:POKE1296,144:ELSEPOKE1295,201:POKE1296,201
1120 RETURN
1130 HL=0:PR=2:X=15:Y=11:MR(0)=13:MX(0)=2:MY(0)=8:PC=1:CC=1:WC=1
1140 FORK=0TO2
1150 KP=RND(13):IFKP=12OR KP=15OR KP=1OR KP=11THEN1150:ELSEKR(K)=KP:RM=KR(K)
1160 KX(K)=RND(27)+2:KY(K)=RND(11)+2:NEXTK
1170 SW=RND(13):IFSW=12THEN1170
1180 SX=RND(27)+2:SY=RND(11)+2
1190 TR=RND(13):IFTR=5OR TR>8AND TR<>12THEN1200:ELSE1190
1200 TX=RND(27)+2:TY=RND(11)+2
1210 RETURN
1220 IFMR(0)<>RM THEN1230:ELSEXX=MX(0):YY=MY(0):GOSUB1310:MX(0)=XX:MY(0)=YY:POKE1024+MY(0)*32+MX(0),102
1230 FORK=0TO2:IFKR(K)=RM THENXX=KX(K):YY=KY(K):GOSUB1310:KX(K)=XX:KY(K)=YY:GOTO1250
1240 NEXTK:GOTO1270
1250 IFK=0THENPK=214:ELSEIFK=1THENPK=230:ELSEPK=198
1260 POKE1024+32*KY(K)+KX(K),PK:GOTO1240
1270 IFSW=RM THENXX=SX:YY=SY:GOSUB1310:SX=XX:SY=YY:POKE1024+SY*32+SX,95
1280 IFTR=RM THENXX=TX:YY=TY:GOSUB1310:TX=XX:TY=YY:POKE1024+TY*32+TX,106
1290 IFHL=1THENPOKE1504,214:ELSEIFHL=2THENPOKE1504,230:ELSEIFHL=3THENPOKE1504,198:ELSEIFHL=4THENPOKE1504,106:ELSEIFHL=5THENPOKE1504,95
1300 RETURN
1310 IFPEEK(1024+YY*32+XX)=96THENRETURN
1320 YY=YY+1:IFYY>12THEN YY=2:XX=XX+1:IFXX>29THEN XX=2
1330 GOTO1310
1340 GOTO1340
1350 DATA 00000100000000000100000000000
1360 DATA 11110101111111110101111111110
1370 DATA 00000101000100000101000000000
1380 DATA 01011101010101111101011111110
1390 DATA 01010001010100010001010000000
1400 DATA 01110111011111011101110111110
1410 DATA 00000001000001000101000100010
1420 DATA 11011111111101010111011101010
1430 DATA 00000000000101010000010101010
1440 DATA 01111111110101011111110101010
1450 DATA 00010000010001010001000101010
1460 DATA 11010111111111010101011101011
1470 DATA 00010000000000000100000001000
1480 DATA 00010001010001000001000001000
1490 DATA 01010101010101011101111101110
1500 DATA 01000101000101000100000101000
1510 DATA 01111101011111110101110101011
1520 DATA 00010001000000000101000101000
1530 DATA 11010111111101111101111101010
1540 DATA 00010100010001010001000001010
1550 DATA 01110111010111010111010111110
1560 DATA 00010100010000010100010100000
1570 DATA 11010101011101110101110111011
1580 DATA 00010101000100010100010000000
1590 DATA 01111101011111010101011111110
1600 DATA 00000001000000010001000000010
1610 IFPEEK(33021)<>50THEN1640
1620 WIDTH32:CLS:PRINT"ARE YOU USING A (C)OMPOSITE OR  (R)GB MONITOR?"
1630 A$=INKEY$:IFA$="C"THENCMP:ELSEIFA$="R"THENRGB:ELSE1630
1640 CLS:PRINT"HIGH SPEED MODE? (Y/N)"
1650 A$=INKEY$:IFA$="Y"THEN1660:ELSEIFA$="N"THEN1670:ELSE1650
1660 IFPEEK(33021)<>50THENPOKE65495,0:GOTO90:ELSEPOKE65497,0:GOTO90
1670 IFPEEK(33021)<>50THENPOKE65494,0:GOTO90:ELSEPOKE65496,0:GOTO90
