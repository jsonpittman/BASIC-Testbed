1 'VERSABASE/COMPACT
2 'BY DAVID POLONSKY
3 'COPYRIGHT (C) JANUARY 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
6 '*****************************
7 'THANKS TO BILL BERNICO FOR      HIS SUBROUTINES AND IDEAS
20 CLEAR8000:WIDTH32:CLS:INPUT"40 OR 80 COLUMN WIDTH";W
30 IF W<>40 THEN 40 ELSE 50
40 IF W<>80 THEN 20 ELSE 50
50 ME=60:WIDTH W:RGB:PALETTE8,63:PALETTE0,1:CLS1
60 DIM NM$(ME),AD$(ME),CT$(ME),ST$(ME),BB$(ME),DP$(ME),FD$(6)
70 FD$(1)="TITLE":FD$(2)="COMPOSER":FD$(3)="ORCHESTRA":FD$(4)="TRACKS":FD$(5)="CONDUCTOR":FD$(6)="SOLOIST"
80 WIDTH W:LOCATE15,7:ATTR3,3:PRINT"DATABASE MENU";:ATTR0,0:PRINT
90 LOCATE12,9:PRINT"1. LOAD DATA FILE":LOCATE12,10:PRINT"2. SAVE DATA FILE":LOCATE12,11:PRINT"3. DATA ENTRY":LOCATE12,12:PRINT"4. VIEW/EDIT DATA":LOCATE12,13:PRINT"5. PRINT DATA":LOCATE12,14:PRINT"6. TOGGLE WIDTH":LOCATE12,15:PRINT"7. QUIT PROGRAM
100 LOCATE12,17:ATTR1,0,B:PRINT"YOUR CHOICE (1-7)";:ATTR0,0
110 K$=INKEY$:IFK$="" THEN 110 ELSE P=VAL(K$):ON P GOTO 130,230,330,570,930,1100,1120
120 GOTO110
130 LOCATE12,9:ATTR1,0:PRINT"1. LOAD DATA FILE";:GOSUB1180:IFF$="" THEN80
140 OPEN"I",#1,F$:INPUT#1,NE
150 FORI=1 TO NE
160 LINEINPUT#1,NM$(I)
170 LINEINPUT#1,AD$(I)
180 LINEINPUT#1,CT$(I)
190 LINEINPUT#1,ST$(I)
200 LINEINPUT#1,BB$(I)
210 LINEINPUT#1,DP$(I)
220 NEXT:CLOSE#1:GOTO80
230 IFNE=0 THEN110
240 LOCATE12,10:ATTR1,0:PRINT"2. SAVE DATA FILE";:GOSUB1180:IFF$="" THEN 80
250 OPEN"O",#1,F$:PRINT#1,NE
260 FORI=1 TO NE
270 PRINT#1,NM$(I):PRINT#1,AD$(I)
280 PRINT#1,CT$(I)
290 PRINT#1,ST$(I)
300 PRINT#1,BB$(I)
310 PRINT#1,DP$(I)
320 NEXT:CLOSE#1:GOTO80
330 IFNE=ME THEN 110
340 NQ=NE+1
350 SF$="SPACE FOR"+STR$(ME-NQ)+" MORE RECORDS":CLS:LOCATE4,0:ATTR1,0:PRINT"COMPACT DISK RECORD #"NQ"";:LOCATE4,1:PRINTSF$:ATTR0,0
360 LOCATE3,3:PRINT"    TITLE :":LY=3:AY=3:PL=26:GOSUB1230
370 LOCATE3,5:PRINT" COMPOSER :":LY=5:AY=4:PL=26:GOSUB1230
380 LOCATE3,7:PRINT"ORCHESTRA :":LY=7:AY=2:PL=26:GOSUB1230
390 LOCATE3,9:PRINT"   TRACKS :":LY=9:AY=5:PL=3:GOSUB1230
400 LOCATE3,11:PRINT"CONDUCTOR :":LY=11:AY=7:PL=26:GOSUB1230
410 LOCATE3,13:PRINT"  SOLOIST :":LY=13:AY=1:PL=21:GOSUB1230
420 LOCATE15,3:LINEINPUT D$:IFD$="" THEN 80
430 IF LEN(D$)>25 THEN LOCATE15,3:PRINTSTRING$(60,32):GOSUB1200:LY=3:AY=3:PL=26:GOSUB1230:GOTO420
440 LOCATE15,5:LINEINPUT C$
450 IF LEN(C$)>25 THEN LOCATE15,5:PRINTSTRING$(60,32):GOSUB1200:LY=5:AY=4:PL=26:GOSUB1230:GOTO440
460 LOCATE15,7:LINEINPUT T$
470 IF LEN(T$)>25 THEN LOCATE15,7:PRINTSTRING$(60,32):GOSUB1200:LY=7:AY=2:PL=26:GOSUB1230:GOTO460
480 LOCATE15,9:LINEINPUT Y$
490 IF LEN(Y$)>2 THEN LOCATE15,9:PRINTSTRING$(60,32):GOSUB1200:LY=9:AY=5:PL=3:GOSUB1230:GOTO480
500 LOCATE15,11:LINEINPUT X$
510 IF LEN(X$)>25 THEN LOCATE15,11:PRINTSTRING$(60,32):GOSUB1200:LY=11:AY=7:PL=26:GOSUB1230:GOTO500
520 LOCATE15,13:LINEINPUT Z$
530 IF LEN(Z$)>20 THEN LOCATE15,13:PRINTSTRING$(60,32):GOSUB1200:LY=13:AY=1:PL=21:GOSUB1230:GOTO520
540 FORXX=1TO300:NEXT
550 NE=NE+1:NM$(NE)=D$:AD$(NE)=C$:CT$(NE)=T$:ST$(NE)=Y$:BB$(NE)=X$:DP$(NE)=Z$
560 LOCATE4,16:ATTR1,0:PRINT"ENTER ANOTHER? ";:ATTR0,0
562 K$=INKEY$:IF K$="" THEN 562
564 IF K$="Y" OR K$="y" THEN 330
566 GOTO 80
570 IFNE=0 THEN 110
580 WIDTH W:LOCATE8,4:ATTR1,0:INPUT"ENTER RECORD NUMBER ==> ";PT
582 IF PT<1 THEN 580
584 IF PT>NE THEN PT=NE
586 ATTR 0,0
590 WIDTH W
600 LOCATE6,2:ATTR1,0:PRINT"COMPACT DISK RECORD #"PT;:ATTR0,0
610 LOCATE0,4
620 PRINT"        TITLE : ";NM$(PT)
630 PRINT"     COMPOSER : ";AD$(PT)
640 PRINT"    ORCHESTRA : ";CT$(PT)
650 PRINT"       TRACKS : ";ST$(PT)
660 PRINT"    CONDUCTOR : ";BB$(PT)
670 PRINT"      SOLOIST : ";DP$(PT)
680 LOCATE2,23:ATTR1,0,B:PRINT"E";:ATTR0,0:LOCATE3,23:PRINT"DIT";:ATTR1,0,B:LOCATE8,23:PRINT"N";:ATTR0,0:LOCATE9,23:PRINT"EXT";:ATTR1,0,B:LOCATE14,23:PRINT"P";:ATTR0,0:LOCATE15,23:PRINT"REVIOUS";
690 ATTR1,0,B:LOCATE24,23:PRINT"M";:ATTR0,0:LOCATE25,23:PRINT"ENU";:ATTR1,0,B:LOCATE30,23:PRINT"W";:ATTR0,0:LOCATE31,23:PRINT"IDTH";
700 K$=INKEY$:IFK$="M" THEN80
710 IFK$="P" THEN 760
720 IFK$="N" THEN 770
730 IFK$="E" THEN 780
740 IFK$="W"THEN 1210
750 GOTO700
760 IFPT=1 THEN700 ELSEPT=PT-1:GOTO590
770 IFPT=NE THEN700 ELSEPT=PT+1:GOTO590
780 LOCATE2,23:PRINTSTRING$(37,32);:FORI=1TO6:LOCATE1,I+3:PRINTUSING"(#)";I;:NEXT
790 LOCATE6,12:ATTR3,3:PRINT"Press 1-6 To Edit - E To Exit";:ATTR0,0
800 K$=INKEY$:IFK$="" THEN 800
810 IFK$="E" THEN 590
820 K=VAL(K$):IFK<1 OR K>6 THEN 800
830 LOCATE5,12:PRINTSTRING$(33,32);:LOCATE5,12:ATTR1,0:PRINT"NEW "FD$(K)": ";:LINEINPUT A$
840 ON K GOTO 850,860,870,880,890,900,910,920
850 NM$(PT)=A$:GOTO590
860 AD$(PT)=A$:GOTO590
870 CT$(PT)=A$:GOTO590
880 ST$(PT)=A$:GOTO590
890 BB$(PT)=A$:GOTO590
900 DP$(PT)=A$:GOTO590
910 GOTO590
920 GOTO590
930 IF NE=0 THEN 110
940 CLS1:INPUT"Print to (S)creen or (P)rinter? (S/P)";DN$:CLS1
950 IF W=80 THEN 980
960 IF W=40 THEN CLS:LOCATE 1,1:PRINT"SCREEN LIST OPTION ONLY WITH 80-COLUMN  SCREEN. RETURN TO MENU TO TOGGLE WIDTH
970 LOCATE 1,20:PRINT"HIT ANY KEY TO RETURN TO MENU":EXEC44539:GOTO80
980 IF DN$="S"THEN DN=0:GOTO 1010
990 IF DN$="P"THEN DN=-2:GOTO 1040
1000 GOTO 940
1010 PRINT"NO. TITLE                COMPOSER             ORCHESTRA       TRKS CONDUCTOR":PRINTSTRING$(79,45)
1020 FORI=1 TO NE:PRINTUSING"### %                  % %                  % %             %  %%  %          %";I;NM$(I);AD$(I);CT$(I);ST$(I);BB$(I)
1030 IFI=20 OR I=40 OR I=60 OR I=80 OR I=100 OR I=120 OR I=140 OR I=150  THEN GOSUB1160:CLS:PRINT"NO. TITLE                COMPOSER             ORCHESTRA       TRKS CONDUCTOR":PRINTSTRING$(79,45):GOTO1070ELSE1070
1040 PRINT#-2,CHR$(27);CHR$(31);CHR$(27);CHR$(20);CHR$(15):PRINT#-2,"NO. TITLE                     COMPOSER                  ORCHESTRA                 TRACKS CONDUCTOR                 SOLOIST             ":PRINT#-2,""
1051 FORI=1TONE:PRINT#-2,USING"### %                       % %                       % %                       %   %%   %                       % %                  %";I;NM$(I);AD$(I);CT$(I);ST$(I);BB$(I);DP$(I):PRINT#-2,""
1060 IFI=30 OR I=60 OR I=90 OR I=120 OR I=150 THEN CLS:PLAY"O4T60CBCBCBC":PRINT"INSERT NEXT PAGE AND HIT <ENTER> TO CONTINUE PRINTING":PRINT#-2,CHR$(12):GOSUB1160:CLS
1070 NEXT I
1080 IF DN=0 THEN GOSUB1160
1090 GOTO80
1100 IF W=40 THEN W=80:GOTO 80
1110 IF W=80 THEN W=40:GOTO 80
1120 LOCATE12,17:ATTR1,0:PRINT"ARE YOU SURE? (Y/N)";:ATTR0,0:PLAY"O4T60CBCBCBCBCBC
1130 K$=INKEY$:IFK$="N" THEN 80
1140 IFK$<>"Y" THEN 1130
1150 WIDTH32:ATTR0,0:PALETTE8,0:PALETTE0,63:END
1160 LOCATE5,23:PRINT"Press <ENTER> To Continue";
1170 IFINKEY$<>CHR$(13) THEN 1170 ELSE RETURN
1180 LOCATE12,17:PRINTSTRING$(17,32);:LOCATE15,17:PRINT"Filename: ";:LINEINPUT F$
1190 RETURN
1200 ATTR1,0:SOUND191,1:LOCATE3,18:PRINT"INPUT TOO LONG!  TRY AGAIN";:FOR X=1 TO 700:NEXT:ATTR 0,0:LOCATE3,18:PRINTSTRING$(28,32):RETURN
1210 IF W=40 THEN W=80:GOTO 590
1220 IF W=80 THEN W=40:GOTO 590
1230 LOCATE 15,LY:ATTR 2,AY:PRINTSTRING$(PL,32);:ATTR0,0:RETURN
