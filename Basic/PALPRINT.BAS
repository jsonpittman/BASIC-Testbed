10 '****************************
20 '* DECODE AND PRINTS COLORS *
30 '*     LOW-RES PALETTES     *
40 '* VERSION: 1.0     8611.02 *
50 '****************************
60 '*  (C) 1986 BY ERIC WHITE  *
70 '****************************
80 A$=INKEY$:F=FREE(PEEK(&HEB))
90 CLS:PCLEAR8:CLEAR2000
100 FE$="PIC"'DISKFILE EXTENSION
110 PRINT"OUTPUT TO (S)CREEN OR (P)RINTER"
120 A$=INKEY$:IF A$="" THEN 120
130 IF A$="S" THEN DV=0:GOTO 150
140 IF A$="P" THEN DV=-2 ELSE 90
150 CLS:PRINT" ENTER THE NAME OF PICTURE FOR     DECODING OF PALETTE COLORS      OR PRESS [ENTER] TO DECODE         ALL PICTURES ON DISK"
160 PRINT@200,"";:INPUTN$
170 IF N$>"" THEN N$=N$+STRING$(8-LEN(N$),32)
180 DIMNF$(71):X=0:FORS=3TO11
190 DSKI$ PEEK(&HEB),17,S,A$(0),A$(1)
200 FOR C=0TO1:FOR N=0TO7
210 NF$=MID$(A$(C),N*32+1,32)
220 IFLEFT$(NF$,1)=CHR$(0)THEN270
230 IFLEFT$(NF$,1)=CHR$(255)THENN=7:S=11:GOTO270
240 IFMID$(A$(C),N*32+9,3)<>FE$ THEN 270
250 IF N$>"" AND LEFT$(NF$,8)<>N$ THEN 270
260 NF$(X)=NF$:X=X+1
270 NEXTN,C,S
280 FORI=0TO X-1:IF NF$(I)="" THEN 340
290 PRINT#DV,CHR$(27)CHR$(20);'CONDENSED PRINT FOR DMP-200
300 CLS:PRINT#DV,"PICTURE NAME: "LEFT$(NF$(I),8)"/"FE$:PRINT#DV
310 FORT=0 TO 15
320 PRINT#DV,"  SLOT ";:PRINT#DV,USING"##";T;:PRINT#DV,"="ASC(MID$(NF$(I),17+T,1)),
330 NEXT T:IF DV=0 THEN PRINT@451,"PRESS ANY KEY TO CONTINUE.";:EXEC44539 ELSE PRINT#DV:PRINT#DV
340 CLS:NEXTI:GOTO 100
