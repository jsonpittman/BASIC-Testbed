5 DIMCC(15):POKE65497,0
8 PRINT"ARE YOU USING AN RGB MONITOR? ";
10 ANS$=INKEY$:IFANS$=""THEN 10 ELSEIFANS$="N"THEN RESTORE:FORX=0TO15:READA:NEXT:PALETTECMPELSE IFANS$="Y" THENRESTORE:PALETTERGB ELSE 10
20 HCOLOR4,8:HSCREEN2:CLS
30 HLINE(0,26)-(320,26),PSET:HLINE(0,96)-(320,96),PSET:HLINE(0,166)-(320,166),PSET
40 FOR X=0TO320STEP40:HLINE(X,27)-(X,165),PSET:NEXT
50 FORX=0TO7:READCC(X):HPAINT(20+X*40,27),X,4:NEXT:FORX=8TO15:READCC(X):HPAINT(20+(X-8)*40,97),X,4:NEXT
60 HPRINT(8,0),"CURRENT PALETTE COLORS"
70 ST$="S0   S1   S2   S3   S4   S5   S6   S7":SB$="S8   S9   S10  S11  S12  S13  S14  S15
80 HPRINT(0,2),ST$:HPRINT(0,21),SB$
90 FORX=0TO7:CC$="C"+STR$(CC(X)):HPRINT(5*X,1),CC$:NEXT
100 FORX=8TO15:CC$="C"+STR$(CC(X)):HPRINT(5*(X-8),22),CC$:NEXT
110 HBUFF1,908:HGET(0,184)-(200,192),1
190 HBUFF2,98:HGET(0,0)-(20,8),2
200 HPRINT(0,23),"SLOT NUMBER TO CHANGE?"
205 I$=INKEY$:IFI$=""THEN205ELSEHPRINT(24,23),I$:SL$=I$
210 I$=INKEY$:IFI$=""THEN210 ELSE IFI$<>CHR$(13)THENSL$=SL$+I$
215 SL=VAL(SL$):IFSL<0 OR SL>15THENHPUT(0,184)-(200,192),1,PSET:GOTO200
220 HPUT(0,184)-(200,192),1,PSET:HPRINT(0,23),"SLOT "+SL$+"  NEW COLOR NUMBER?"
230 I$=INKEY$:IFI$=""THEN230ELSEHPRINT(26,23),I$:CC$=I$
240 I$=INKEY$:IFI$=""THEN240ELSEIFI$<>CHR$(13)THENHPRINT(27,23),I$:CC$=CC$+I$
245 CC=VAL(CC$):IFCC<0 OR CC>63 THEN220
250 PALETTESL,CC:HPUT(0,184)-(200,192),1,PSET:HPUT(100,184)-(300,192),1,PSET
255 IFSL<8 THENHPUT(16+SL*40,8)-(35+SL*40,15),2,PSETELSEHPUT(16+(SL-8)*40,176)-(35+(SL-8)*40,183),2,PSET
260 IFSL<8THENHPRINT(1+5*SL,1),STR$(CC)+" "ELSEHPRINT(1+5*(SL-8),22),STR$(CC)+" "
270 GOTO200
1000 GOTO1000
2000 DATA18,54,9,36,63,27,45,38,0,18,0,63,0,18,0,38
2010 DATA18,36,11,7,63,31,9,38,0,18,0,63,0,18,0,38
10000 POKE65496,0:MOTORON:FORX=1TO9000:NEXT:FORX=1TO3:CSAVE"CNGPALET":MOTORON:FORY=1TO600:NEXTY,X:MOTOROFF
