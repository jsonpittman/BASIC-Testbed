10 ' ##########################
20 ' ##########################
30 ' ##                      ##
40 ' ##   MUNCHKIN BLASTER   ##
50 ' ##                      ##
60 ' ##         BY           ##
70 ' ##                      ##
80 ' ##    STEPHEN DONALD    ##
90 ' ##                      ##
100 '##  OBA,ONTARIO,CANADA  ##
110 '##        P0M2P0        ##
120 '##                      ##
130 '##########################
140 '##########################
150 X=Y=M=N:CLS:PRINT"SPEED UP POKE [Y/N]?"
160 P$=INKEY$:IFP$="N"THENPO=1:GOTO170ELSE IFP$<>"Y"THEN160
162 PRINT"DOUBLE OR TRIPLE [2/3]"
164 P$=INKEY$:IFP$=""THEN164ELSE IFP$="3"THENPOKE65497,0:PO=3 ELSE IFP$="2"THENPOKE65495,0:PO=2 ELSE164
170 DIMS(34),C(31),B(25),G(9):O=1:HS=440:H$="STEVE"
180 IFTA=8THENRESTORE:TA=0
190 READEA$:HH=0:F=0:T=0:H=0:P=0
200 PLAY"T255L255":PMODE3,1:PCLS:BS=1
210 DRAW"C4BM100,100E5R5F5G5L5H5
220 PAINT(105,100),4,4
230 DRAW"R5C2D2BR5U2BM150,100E6F6D4ND4L12ND4U4
240 PAINT(155,100),2,2
250 DRAW"R3C3D2BR6U2BM150,150E6NH4NE4F6ND4G6H6ND4
260 PAINT(155,150),3,3
270 DRAW"R5BU8C2D2BR4U2
280 GET(90,90)-(124,110),S,G
290 GET(143,89)-(169,112),C,G
300 GET(146,134)-(166,156),B,G
310 IFHH>0THEN320ELSEGOSUB1280
320 PCLS
330 COLOR3,1
340 DRAW"C4BM0,160R20F10R195E10R20D31L255U31C4BM50,172F4D6F4D4L4H4G4L4U4E4U6E4
350 PAINT(50,180),4,4
360 CIRCLE(80,180),8,2,.5
370 COLOR3,1
380 LINE(30,171)-(225,171),PSET
390 CIRCLE(120,180),8,2,.5
400 CIRCLE(160,180),8,2,.5
410 CIRCLE(200,180),8,2,.5
420 FORI=80TO200STEP40:PAINT(I,180),2,2:NEXT
430 DRAW"C3BM38,191U14NR6U4BL4D4NR4D14E4H4E4H4BM75,191U4E4R4F4D4U4L12BM115,191U4E4R4F4ND4L12BM195,191U4E4R4F4ND4L12BM155,191U4E4R4F4ND4L12
440 LINE(100,100)-(108,100),PSET
450 LINE(104,96)-(104,104),PSET
460 GET(95,91)-(115,109),G,G
470 X=95:Y=91:M=RND(235):N=RND(120)
480 COLOR4,1
490 LINE(95,91)-(115,109),PRESET,BF
500 LINE(0,160)-(20,191),PSET,BF
510 LINE(235,160)-(255,191),PSET,BF
520 FORQ=1TO200:NEXTQ:SCREEN1,0
530 O=RND(3):ON O GOTO 540,680,820
540 FORI=1TO 10-H
550 IFJOYSTK(0)<10THENX=X-5:IFX<0THENX=0
560 IFJOYSTK(0)>53THENX=X+5:IFX>235THENX=235
570 IFJOYSTK(1)<10THENY=Y-5:IFY<0THENY=0
580 IFJOYSTK(1)>53THENY=Y+5:IFY>141THENY=141
590 PUT(X,Y)-(X+20,Y+18),G,PSET
600 PUT(M,N)-(M+26,N+23),C,PSET
610 BU=PEEK(65280):IF BU=126 OR BU=254 THENPLAY"O1EFEFDDFEFBBFC":ON BS GOSUB 960,970,980 ELSEGOTO630
620 PUT(M,N)-(M+26,N+23),C,PSET:IFPPOINT(X+10,Y+9)<>1THENFORI=1TO10:PLAY"V10O1GF":PUT(M,N)-(M+I+26,N+I+23),C,PSET:NEXTI:GOTO1020
630 M=VM+M:N=N+VN
640 IFM<0THENM=0ELSEIFM>229THENM=229
650 IFN<0THENN=0ELSEIFN>120THENN=120
660 NEXT
670 GOTO990
680 FORI=1TO 15-H
690 IFJOYSTK(0)<10THENX=X-5:IFX<0THENX=0
700 IFJOYSTK(0)>53THENX=X+5:IFX>235THENX=235
710 IFJOYSTK(1)<10THENY=Y-5:IFY<0THENY=0
720 IFJOYSTK(1)>53THENY=Y+5:IFY>141THENY=141
730 PUT(X,Y)-(X+20,Y+18),G,PSET
740 PUT(M,N)-(M+34,N+20),S,PSET
750 BU=PEEK(65280):IF BU=126 OR BU=254THENPLAY"O1EFEFDDFEFBBFC":ON BS GOSUB960,970,980ELSEGOTO770
760 PUT(M,N)-(M+34,N+20),S,PSET:IFPPOINT(X+10,Y+9)<>1THENFORI=1TO10:PLAY"O1FG":PUT(M,N)-(M+I+34,N+I+20),S,PSET:NEXTI:GOTO1020
770 M=VM+M:N=N+VN
780 IFM<0THENM=0ELSEIFM>221THENM=221
790 IFN<0THENN=0ELSEIFN>120THENN=120
800 NEXT
810 GOTO990
820 VM=RND(2):IFVM=2THENVM=-1
830 IFJOYSTK(0)<10THENX=X-5:IFX<0THENX=0
840 IFJOYSTK(0)>53THENX=X+5:IFX>235THENX=235
850 IFJOYSTK(1)<10THENY=Y-5:IFY<0THENY=0
860 IFJOYSTK(1)>53THENY=Y+5:IFY>141THENY=141
870 PUT(X,Y)-(X+20,Y+18),G,PSET
880 PUT(M,N)-(M+20,N+22),B,PSET
890 BU=PEEK(65280):IF BU=126 OR BU=254THENPLAY"O1EFEFDDFEFBBFC":ON BS GOSUB960,970,980ELSEGOTO910
900 PUT(M,N)-(M+20,N+22),B,PSET:IFPPOINT(X+10,Y+9)<>1THENFORI=1TO10:PLAY"O1FG":PUT(M,N)-(M+I+20,N+I+22),B,PSET:NEXTI:GOTO1020
910 M=M+VM*4:IFM<0THENM=0:GOTO940
920 IFM>235THENM=235:GOTO940
930 GOTO830
940 N=N+H+1:IFN>169THENPLAY"O1FGFGFGBBDAGFEBDGFFFAAFDGEGEDBFBFBDGCCCDGEFDBCGDEFAAGDBE":GOTO1140
950 GOTO830
960 LINE(10,160)-(X+10,Y+9),PSET:LINE-(245,160),PSET:LINE(10,160)-(X+10,Y+9),PRESET:LINE-(245,160),PRESET:RETURN
970 LINE(10,160)-(X+10,Y+9),PSET:LINE(10,160)-(X+10,Y+9),PRESET:RETURN
980 LINE(245,160)-(X+10,Y+9),PSET:LINE(245,160)-(X+10,Y+9),PRESET:RETURN
990 VM=(RND(10)-5):VN=RND(10)-5
1000 IFRND(5)=1THEN1070
1010 ON O GOTO 540,680,820
1020 P=P+10:LINE(M,N)-(M+44,N+22),PRESET,BF:PLAY"O4;AGDFBAGDFEGCBDGEGAF
1030 M=RND(221):N=RND(120)
1040 O=RND(3)
1050 T=T+1:IFT=10THENT=0:GOSUB1430:HH=HH+1:SCREEN0,0:CLS6:PRINT@200,"CONGRADULATIONS";:PRINT@228,"YOU'VE CLEARED"HH"SET";:IFHH>1THENPRINT"S";:GOTO1460ELSEGOTO1460
1060 ON O GOTO 540,680,820
1070 F=40+RND(4)*40:LINE(M+12,N+12)-(F,190),PSET:PLAY"O5EDEEDEBCCE":LINE(M+12,N+12)-(F,190),PRESET:FORCC=1TO10:CIRCLE(F,180),CC,4:PLAY"O1DEDE":NEXTCC:PLAY"O1EEDDEEBBCCB":LINE(F-10,170)-(F+10,191),PRESET,BF
1080 IFPPOINT(200,180)<>1THEN1130
1090 IFPPOINT(80,180)<>1THEN1130
1100 IFPPOINT(120,180)<>1THEN1130
1110 IFPPOINT(160,180)<>1THEN1130
1120 GOTO1190
1130 ON O GOTO540,680,820
1140 IF BS=3ANDM>200THEN1190
1150 IF BS=2ANDM=0THEN1190
1160 IFM=0THEN BS=3
1170 IFM>200THEN BS=2
1180 M=RND(221):N=RND(120):O=RND(3):GOTO1130
1190 GET(40,172)-(60,190),S,G
1200 FORY=160TO0STEP-5
1210 PUT(40,Y)-(60,Y+18),S,PSET
1220 LINE(40,Y+18)-(60,Y+24),PRESET,BF
1230 NEXT
1240 CLS4:IF P>HS THEN HS=P:PRINT@224,"YOU HAVE HIGH SCORE!";:PRINT"WRITE YOUR  NAME AND PRESS ENTER.";:INPUT H$ ELSEGOTO1260
1250 CLS3:PRINT"HIGH SCORE":PRINT;H$;"=";HS;:FORI=1TO3:PLAY"T20L4CCGGAAL2GL4FFEEDDL2CL4GGFFEEL2DL4GGFFEEL2DL4CCGGAAL2GL4FFEEDDL2C":NEXTI
1260 CLS8:PRINT@224,EA$;" WAS DESTROYED BUT YOU ESCAPED IN YOUR ROCKET ALIVE.DO YOU WANT TO TRY YOUR LUCK AT    ANOTHER PLANET?"
1270 A$=INKEY$:IFA$="Y"THENTA=TA+1:GOTO180ELSEIFA$="N"THEN ON PO GOTO2000,2010,2020:ELSE1270
1280 PCLS:SCREEN1,1:DRAW"C8BM0,60R15F5D10G5NL15F5D10G5L15U40BR35D40R20BR15U20NR20U10E10F10D30BR15BU5F5R10E5U10H5L10H5U10E5R10F5BU5BR15R10NR10D40BR25NR20U20NR10U20R20BR15ND40R15F5D10G5NL15F5D15
1290 DRAW"C7BM20,20ND20F10E10D20BR5BU20D15F5R10E5U15BR5ND20F20U20BR20NF5L10G5D10F5R10NE5BR10U10NU10R20NU10D10BR5U10R10NF10NE10L10U10BR30D20BR10U20F20U20
1300 DRAW"BM20,182C6ND8R2F2G2NL2F2G2L2BE8F2NE2D6BR16R4U4L4U4R4BR4R4L2D8BR6NR4U4NR4U4R4BR4D6F2E2U6BR4NR4D4NR4D4R4BR14NU8R2E2U4H2L2BR8D8R4U8L4BR8ND8F8U8BR4ND8R4D4NL4D4BR4NR4U8BR8D8R2E2U4H2L2
1310 FORI=221TO10STEP-5:PUT(I,110)-(I+34,130),S,PSET:NEXT:FORI=0TO100STEP5:PUT(I,146)-(I+26,179),C,PSET:NEXT:FORI=235TO200STEP-2:PUT(I,110)-(I+20,132),B,PSET:NEXT:FORI=1TO500*PO:NEXT
1320 SCREEN1,0
1330 DRAW"C2BM100,120R4F2D2G2NL4F2D2G2L4U12BR13G3D3ND6R6ND6U3H3BR11NF2L2G2D2F2R2F2D2G2L2NH2BR8NR6U6NR4U6R6BR6D6NE6NF6D6BR10U12BR4D12R6BR4NU12R6BR4NR6U6NR4U6R6BR4ND12R4F2D2G2NL4F2D4
1340 DRAW"BM134,164U12F3E3ND12BR4D10F2R2E2U10BR4ND12F12U12BR6NR4G2D8F2R4BR4U12D6R6U6D12BR4U12D6NE6F6BR4U12BR4ND12F12U12
1350 DRAW"BM0,140D12R4E2U2H2NL4E2U2H2L4BR10D12R6BR6H2U8E2R2F2D8G2L2BR8U12R4F2D2G2NL4F2D2G2L4
1360 FORI=1TO2500*PO:NEXT:CLS7
1370 PRINT@10,"INSTRUCTIONS";
1380 PRINT@96,"THE OBJECT IS TO MOVE YOUR CROSS OVER THE BADGUYS AND USING THE  FIRE BUTTON HIT THEM WITH YOUR LASERS.BEWARE OF THE BASEKILLER. HE WILL TRAVEL TOWARDS ONE OF   YOUR BASES AND DESTROY IT.THE  GAME IS OVER WHEN BOTH BASES";
1390 PRINT" AREDESTROYED OR ALL YOUR WHITE FUELTANKS ARE GONE."
1400 PRINT@418,"PRESS BUTTON  TO START";
1410 PRINT@450,"HIGH SCORE=";HS;"BY ";H$;
1420 FORK=1TO1000:BU=PEEK(65280):IF BU=126 OR BU=254THEN SOUND10,5:RETURNELSENEXTK:GOTO1280
1430 FORX=80TO200STEP40:IFPPOINT(X,180)<>1THENP=P+100
1440 NEXT:IFBS=1THENP=P+1000
1450 RETURN
1460 PRINT@290,"POINTS=";P;:FORI=1TO500*PO:NEXTI
1470 H=HH:IFH>10THENH=10
1480 GOTO200
1490 DATA "THE EARTH","     MARS","  JUPITER","   SATURN","   URANUS","    VENUS","    PLUTO","  MERCURY","  NEPTUNE"
2000 END
2010 POKE65494,0:END
2020 POKE65496,0
0 ' COPYRIGHT 1989 FALSOFT,INC
10 ONERRGOTO1590:WIDTH80:CLS:CLEAR1000:B$=STRING$(128," "):A$=STRING$(128," "):DIMPC$(20):DR=0:TR=0:SC=1:WG=0:OK=0:POKE&HFF9A,0 'BLACK BORDER
20 LOCATE21,1:PRINT"CAPTAIN  KIRK'S  COCO3  DISK  BLASTER":GOSUB40:GOTO50
30 'UPDATE DRIVE, TRACK, SECTOR HEADING
40 LOCATE21,3:PRINT"DRIVE ";DR;"     TRACK ";:PRINTUSING"##";TR;:PRINT"      SECTOR ";:PRINTUSING"##";SC:RETURN
50 LOCATE0,22:PRINT" <D>RIVE  <T>RACK  <S>ECTOR  <R>EAD  <W>RITE  <P>RINT  <C>HANGE  <F>IND  <Q>UIT";
60 LOCATE0,22
70 K$=INKEY$:IFK$="D"THENOP=1ELSEIFK$="T"THENOP=2ELSEIFK$="S"THENOP=3ELSEIFK$="R"THENOP=4ELSEIFK$="W"THENOP=5ELSEIFK$="P"THENOP=6ELSEIFK$="C"THENOP=7ELSEIFK$="F"THENOP=8ELSEIFK$="Q"THENOP=9ELSE70
80 'OPTION:  DRV,TRK,SEC,RED,WRT,PRT,CHG,FND,QUIT
90 ONOP GOSUB120,170,220,280,410,550,590,770,1610
100 GOTO60
110 'CHANGE DRIVE
120 GOSUB1010:IFWG THEN150
130 LOCATE28,3:K$=INKEY$:IFK$="0"THEND=0ELSEIFK$="1"THEND=1ELSEIFK$="2"THEND=2ELSEIFK$="3"THEND=3ELSE130
140 IFD<>DR THENOK=0:DR=D:GOSUB40
150 RETURN
160 'CHANGE TRACK
170 GOSUB1010:IFWG THEN200
180 LOCATE41,3:INPUTT:IF(T<0)OR(T>39)THENLOCATE41,3:PRINT"   ";:GOTO180
190 IFT<>TR THENOK=0:TR=T:GOSUB40
200 RETURN
210 'CHANGE SECTOR
220 GOSUB1010:IFWG THEN260
230 LOCATE56,3:INPUTS:IF(S<1)OR(S>255)THENLOCATE56,3:PRINT"   ";:GOTO230
240 IFS<>SC THENNOK=0:SC=S
250 GOSUB40
260 RETURN
270 'READ SECTOR
280 GOSUB1010:IFWG THEN320
290 LOCATE30,22:DP=256*PEEK(&HC006)+PEEK(&HC007):POKEDP,2:POKEDP+1,DR:POKEDP+2,TR:POKEDP+3,SC:AA=VARPTR(A$):POKEDP+4,PEEK(AA+2):POKEDP+5,PEEK(AA+3):POKE65496,0:EXEC256*PEEK(&HC004)+PEEK(&HC005):POKE65497,0:ER=PEEK(DP+6):IFER=0THEN310
300 LOCATE2,23:PRINT"*** DISK READ ERROR -- ";:GOSUB450
310 IFOP=4THENGOSUB340
320 RETURN
330 'DISPLAY SECTOR CONTENTS
340 ROW=5:LOCATE0,5:OK=-1:FORSN=1TO2:IFSN=1THENS$=A$ELSES$=B$
350 B=1:FORLP=1TO8:BS=(SN-1)*128+B-1:PRINT"  ";:IFBS<16THENPRINT"0";
360 PRINTHEX$(BS);:PRINT":  ";:FORBY=B TO15+B:PRINT" ";:BV=ASC(MID$(S$,BY,1)):IFBV<16THENPRINT"0";
370 PRINTHEX$(BV);:IFINT(BY/4)*4=BY THENPRINT" ";
380 IFINT(BY/8)*8=BY THENPRINT" ";
390 NEXT:PRINT" ";:PC$(ROW)="":FORBY=B TO15+B:CD=ASC(MID$(S$,BY,1)):GOSUB710:PC$(ROW)=PC$(ROW)+CHR$(CD):NEXT:PRINTPC$(ROW):ROW=ROW+1:B=B+16:NEXTLP:NEXTSN:RETURN
400 'WRITE SECTOR
410 LOCATE38,22:DP=256*PEEK(&HC006)+PEEK(&HC007):POKEDP,3:POKEDP+1,DR:POKEDP+2,TR:POKEDP+3,SC:AA=VARPTR(A$):POKEDP+4,PEEK(AA+2):POKEDP+5,PEEK(AA+3):POKE65496,0:EXEC256*PEEK(&HC004)+PEEK(&HC005):POKE65497,0:ER=PEEK(DP+6):IFER=0THENWG=0:GOTO430
420 LOCATE2,23:PRINT"*** DISK WRITE ERROR -- ";:GOSUB450
430 RETURN
440 'DISPLAY DISK ERROR
450 IFER=4THENPRINT"LOST DATA";
460 IFER=8THENPRINT"CRC ERROR";
470 IFER=16THENPRINT"SEEK ERROR/SECTOR NOT FOUND";
480 IFER=32THENPRINT"WRITE FAULT";
490 IFER=64THENPRINT"WRITE PROTECT";
500 IFER=128THENPRINT"DRIVE NOT READY";
510 IF(ER<>4)AND(ER<>8)AND(ER<>16)AND(ER<>32)AND(ER<>64)AND(ER<>128)THENPRINT"MULTIPLE ERRORS!";
520 PRINT" -- PRESS <ENTER> ***";:SOUND150,5
530 IFINKEY$<>CHR$(13)THEN530ELSELOCATE2,23:PRINTSTRING$(77," ");:RETURN
540 'PRINT SECTOR
550 LOCATE30,23:ATTR0,0,B:PRINT"*** PRINTING ***";:ATTR0,0:POKE65496,0:R=0:FORI=442848TO445728STEP2:A=LPEEK(I):R=R+1:A=A AND127:IFA>95THENA=A-64
560 PRINT#-2,CHR$(A);:IFR>79THENPRINT#-2:R=0
570 NEXT:PRINT#-2:POKE65497,0:LOCATE30,23:PRINT"                  ";:RETURN
580 'CHANGE BYTE
590 IFNOTOK THEN700ELSELOCATE64,22:PRINT"BYTE # ";:PRINTCHR$(8);:GOSUB1120 'GO ACCEPT A HEX VALUE
600 IF(DV<0)OR(DV>255)THEN690
610 NB=DV:IFNB<128THENVA=ASC(MID$(A$,NB+1,1))ELSEVA=ASC(MID$(B$,NB-127,1)) 'SAVE ORIG VALUE IN CASE OF CHANGE-ABORT
620 ATTR0,0,B:GOSUB1050
630 LOCATE64,22:PRINT"TO      ";:LOCATE67,22:GOSUB1120 'GO ACCEPT A HEX VALUE
640 IF(DV<0)OR(DV>255)THEN680ELSEVA=DV:WG=-1
650 IFNB>127THEN670
660 MID$(A$,NB+1,1)=CHR$(VA):GOTO680
670 MID$(B$,NB-127,1)=CHR$(VA)
680 GOSUB1050
690 LOCATE64,22:PRINT" <F>IND";
700 RETURN
710 'IF CD IS NOT A PRINTABLE CHARACTER, REPLACE IT WITH A PERIOD
720 IFCD<32THENCD=46
730 IF(CD>90)AND(CD<96)THENCD=46
740 IFCD>127THENCD=46
750 RETURN
760 'FIND A BYTE OR WORD
770 GOSUB1010:IFWG THEN990
780 LOCATE55,22:PRINT"FIND VALUE ":LOCATE66,22:GOSUB1300
790 IFWD$=""THEN980
800 GT=TR:GS=SC
810 LOCATE55,22:PRINT"START TRACK":LOCATE67,22:INPUTST:IF(ST<0)OR(ST>34)THEN810
820 LOCATE55,22:PRINT"START SECTOR":LOCATE67,22:INPUTSS:IF(SS<1)OR(SS>18)THEN820
830 LOCATE55,22:PRINT"END  TRACK":LOCATE67,22:INPUTET:IF(ET<0)OR(ET>34)OR(ET<ST)THEN830
840 LOCATE55,22:PRINT"END  SECTOR":LOCATE67,22:INPUTES:IF(ES<1)OR(ES>18)OR((ST=ET)AND(ES<SS))THEN840
850 LOCATE55,22:PRINT"S E A R C H I N G";:FORTR=ST TOET:FORSC=SS TOES:GOSUB40:GOSUB280:PA=INSTR(1,A$,WD$):PB=INSTR(1,B$,WD$):PC=0:IF(LEN(WD$)=2)AND(RIGHT$(A$,1)=LEFT$(WD$,1))AND(LEFT$(B$,1)=RIGHT$(WD$,1))THENPC=1
860 IF(PA=0)AND(PB=0)AND(PC=0)THEN960ELSEGT=TR:GS=SC:GOSUB340
870 IFPA=0THEN900ELSEIX=0
880 NB=PA-1:VA=ASC(LEFT$(WD$,1)):ATTR0,0,B:GOSUB1050:IFLEN(WD$)=2THENNB=NB+1:VA=ASC(RIGHT$(WD$,1)):ATTR0,0,B:GOSUB1050
890 IX=PA+LEN(WD$):PA=INSTR(IX,A$,WD$):IFPA>0THEN880
900 QC=0:IFPC=0THEN910ELSEQC=1:NB=127:VA=ASC(LEFT$(WD$,1)):ATTR0,0,B:GOSUB1050:IFLEN(WD$)=2THENNB=NB+1:VA=ASC(RIGHT$(WD$,1)):ATTR0,0,B:GOSUB1050
910 IFPB=0THEN940ELSEIX=0
920 NB=127+PB:VA=ASC(LEFT$(WD$,1)):ATTR0,0,B:GOSUB1050:IFLEN(WD$)=2THENNB=NB+1:VA=ASC(RIGHT$(WD$,1)):ATTR0,0,B:GOSUB1050
930 IX=PB+LEN(WD$):PB=INSTR(IX,B$,WD$):IFPB>0THEN920
940 LOCATE55,22:PRINT"CONTINUE SEARCH ?";
950 K$=INKEY$:IFK$=""THEN950ELSEIFK$="N"THEN970ELSELOCATE55,22:PRINT"S E A R C H I N G";
960 NEXTSC,TR
970 TR=GT:SC=GS:GOSUB30
980 LOCATE55,22:PRINT"<C>HANGE  <F>IND  <Q>UIT"
990 RETURN
1000 'WARN USER IF SECTOR CHANGE MADE BUT NOT WRITTEN
1010 IFWG THENLOCATE8,23:PRINT"*** WARNING -- SECTOR CHANGE BUFFER NOT WRITTEN -- OKAY ? ";:SOUND150,5ELSE1030
1020 K$=INKEY$:IFK$=""THEN1020ELSELOCATE8,23:PRINTSTRING$(70," ");:IFK$="Y"THENWG=0
1030 RETURN
1040 'LOCATE THE VALUE AND PRINT-CHARACTER OF A BYTE AND REFRESH THEM
1050 ROW=5:TB=NB
1060 IFTB>15THENTB=TB-16:ROW=ROW+1:GOTO1060
1070 COL=TB*3+8:IFTB>3THENCOL=COL+1:IFTB>7THENCOL=COL+2:IFTB>11THENCOL=COL+1
1080 LOCATECOL,ROW:IFVA<16THENPRINT"0";
1090 PRINTHEX$(VA);:CD=VA:GOSUB710:LOCATE62+TB,ROW:PRINTCHR$(CD);:ATTR0,0:LOCATE63+TB,ROW:PRINTRIGHT$(PC$(ROW),15-TB)
1100 RETURN
1110 'HEX NUMBER ENTRY FROM 00 TO FF.  ERROR TRAP AND RETURN DECIMAL VALUE IN DV.     USES XX, HN$, AND LN$ LOCALLY AS SCRATCH VARIABLES.
1120 K$=INKEY$:IFK$=""THEN1120
1130 IFK$=CHR$(13)THENDV=999:GOTO1280 'SIGNAL CALLING CODE TO ABORT 
1140 PRINTK$;:HN$=K$
1150 K$=INKEY$:IFK$=""THEN1150
1160 IFK$=CHR$(13)THENLN$=HN$:HN$="0":PRINT" ";:GOTO1220
1170 PRINTK$;:IFK$=CHR$(8)THEN1120
1180 LN$=K$
1190 K$=INKEY$:IFK$=""THEN1190
1200 IFK$=CHR$(8)THENPRINTK$;:GOTO1150
1210 IFK$<>CHR$(13)THEN1190
1220 IF(HN$="'")OR(HN$=CHR$(34))THENDV=ASC(LN$):GOTO1280
1230 DV=ASC(HN$)-48:IFDV>9THENDV=DV-7
1240 IF(DV<0)OR(DV>15)THENPRINTCHR$(8);CHR$(8);:GOTO1120
1250 DV=DV*16:XX=ASC(LN$)-48:IFXX>9THENXX=XX-7
1260 IF(XX<0)OR(XX>15)THENPRINTCHR$(8);CHR$(8);:GOTO1120
1270 DV=DV+XX
1280 RETURN
1290 'HEX STRING ENTRY FROM 0 TO FFFF
1300 WD$(1)="":WD$(2)="":WD$(3)="":WD$(4)="":I=0
1310 I=I+1
1320 K$=INKEY$:IFK$=""THEN1320ELSEIFK$=CHR$(13)THENNC=I-1:GOTO1330ELSEPRINTK$;:IFK$=CHR$(8)THENI=I-1:GOTO1320ELSEWD$(I)=K$:IFI<4THEN1310ELSENC=4
1330 IF(WD$(1)<>"'")AND(WD$(1)<>CHR$(34))THEN1370
1340 IFNC=3THENWD$=WD$(2)+WD$(3):GOTO1570
1350 IFNC=2THENWD$=WD$(2):GOTO1570
1360 VD=0:GOTO1380
1370 VD=-1:FORI=1TONC:IFINSTR(1,"0123456789ABCDEF",WD$(I))=0THENVD=0:NEXTELSENEXT
1380 IFNOTVD THENFORI=1TONC:PRINTCHR$(8);:NEXT:GOTO1300
1390 IFNC=0THENWD$="":GOTO1570
1400 ONNC GOTO1410,1430,1460,1500
1410 HB$="":XX=ASC(WD$(1))-48:IFXX>9THENXX=XX-7
1420 LB$=CHR$(XX):GOTO1560
1430 HB$="":XX=ASC(WD$(1))-48:IFXX>9THENXX=XX-7
1440 XY=ASC(WD$(2))-48:IFXY>9THENXY=XY-7
1450 LB$=CHR$(XX*16+XY):GOTO1560
1460 XX=ASC(WD$(1))-48:IFXX>9THENHB$=CHR$(XX-7)ELSEHB$=CHR$(XX)
1470 XX=ASC(WD$(2))-48:IFXX>9THENXX=XX-7
1480 XY=ASC(WD$(3))-48:IFXY>9THENXY=XY-7
1490 LB$=CHR$(XX*16+XY):GOTO1560
1500 XX=ASC(WD$(1))-48:IFXX>9THENXX=XX-7
1510 XY=ASC(WD$(2))-48:IFXY>9THENXY=XY-7
1520 HB$=CHR$(XX*16+XY)
1530 XX=ASC(WD$(3))-48:IFXX>9THENXX=XX-7
1540 XY=ASC(WD$(4))-48:IFXY>9THENXY=XY-7
1550 LB$=CHR$(XX*16+XY)
1560 WD$=HB$+LB$
1570 RETURN
1580 'ERROR
1590 LOCATE0,10:PRINT:PRINT"                    P R O G R A M   E R R O R":PRINT:END
1600 'QUIT
1610 GOSUB1010:IFWG THENRETURNELSEPOKE65496,0:END
