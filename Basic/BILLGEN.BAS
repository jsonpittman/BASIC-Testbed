10 '*  BILL GENERATOR          *
20 '*  BY SHAWN CONANT         *
30 '*  NOVEMBER, 1987          *
40 DIM J$(10):CLEAR1000
50 POKE149,0:POKE150,18:'       **PRINTER BAUD RATE-1200**
60 CLS:W=0:TFM=0:TCM=0
70 PRINT"HOW MANY HOURS";:INPUTH
80 PRINT"WHAT IS YOUR HOURLY RATE";:INPUTR
90 W=R*H:X=0:Z=0
100 INPUT"WHAT'S THE MARKUP FOR NET PRICES";MU
110 INPUT"AND THE DISCOUNT FOR LIST PRICES";D
120 PRINT"TYPE MATERIALS COST, <ENTER>,   THEN PRESS <N> TO INDICATE A NET PRICE OR <L> TO INDICATE A LIST PRICE"
130 X=X+1
140 PRINTX;:INPUTM:IF M=0THEN210
150 C$=INKEY$
160 IF C$<>"L"AND C$<>"N"THEN150
170 IFC$="N" THEN GOSUB620
180 IFC$="L"THEN GOSUB630
190 TPROF=TPROF+PROF:TFM=TFM+FM:TCM=TCM+CM
200 GOTO130
210 CLS:PRINT"PROFIT=",:PRINTUSING"$$####.##";TPROF
220 PRINT:PRINT"MATERIALS COST=",:PRINTUSING"$$####.##";TCM
230 PRINT:PRINT"BILL MATERIALS-",:PRINTUSING"$$####.##";TFM
240 PRINT:PRINT"WAGES=",:PRINTUSING"$$####.##";W
250 PRINT:FB=TFM+W:PRINT"TOTAL BILL=",:PRINTUSING"$$####.##";FB
260 PRINT:PRINT"DO YOU WANT A BILL PRINTED?<Y/N>"
270 A$=INKEY$:IF A$<>"Y"AND A$<>"N"THEN270
280 IFA$="N"THENEND
290 POKE282,0:'*UPPER/LOWER CASE DISPLAY*
300 INPUT"DATE-00/00/00";D$
310 INPUT"MAKE BILL TO:";N$
320 INPUT"STREET ADDRESS:";S$:INPUT"CITY:";CI$:INPUT"STATE";ST$:INPUT"ZIP";Z$
330 CLS:POKE1110,246:Z=Z+1
340 LINE INPUT"JOB DESCRIPTION: <ENTER> TO END ";J$(Z)
350 IFJ$(Z)=""THENGOTO360ELSEGOTO330
360 INPUT"HOW MUCH DOWN PAYMENT";DO:BAL=FB-DO
370 POKE282,255:FORX=1TO2
380 FORY=1TO6:PRINT#-2:NEXTY
390 PRINT#-2,TAB(40),"John Doe":PRINT#-2,TAB(40),"Main Street":PRINT#-2,TAB(40),"Hometown, Vt. 05905"
400 PRINT#-2,TAB(40),D$
410 PRINT#-2:PRINT#-2,TAB(10),N$
420 IFS$=""AND CI$=""ANDST$=""THENGOTO440
430 PRINT#-2,TAB(10),S$:PRINT#-2,TAB(10),CI$", "ST$", "Z$
440 PRINT#-2:PRINT#-2
450 FOR Y=1TOZ:PRINT#-2,TAB(10),J$(Y):NEXTY
460 PRINT#-2:PRINT#-2,TAB(30),"Labor=",:PRINT#-2,USING "$$####.##";W
470 PRINT#-2:PRINT#-2,TAB(30),"Materials=",:PRINT#-2,USING"$$####.##";TFM
480 PRINT#-2:PRINT#-2,TAB(30),"Total=",:PRINT#-2,USING"$$####.##";FB
490 IF DO=0 THEN GOTO530
500 PRINT#-2:PRINT#-2,TAB(30),"Received=",:PRINT#-2,USING "$$####.##";DO
510 PRINT#-2:PRINT#-2,TAB(30),"Balance due=",:PRINT#-2,USING"$$####.##";BAL
520 PRINT#-2,CHR$(27);CHR$(31):'**BOLDFACE**
530 PRINT#-2:PRINT#-2,TAB(30),"Thank You!"
540 PRINT#-2,CHR$(27);CHR$(32):'**END BOLDFACE**
550 IF X=1THENPRINT#-2,CHR$(12):'**FORM FEED**
560 NEXT X
570 FORY=1TO6:PRINT#-2:NEXTY
580 PRINT#-2:PRINT#-2,TAB(30),"Materials cost=",:PRINT#-2,USING"$$####.##";TCM
590 PRINT#-2:PRINT#-2,TAB(30),"Profit",:PRINT#-2,USING"$$####.##";TPROF
600 PRINT#-2,CHR$(12):'         **FORMFEED**
610 END
620 PROF=M*(MU/100):FM=M+PROF:CM=M:RETURN
630 PROF=M*(MD/100):FM=M:CM=M-PROF:RETURN
