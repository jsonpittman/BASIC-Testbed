10 CLS
20 ON BRK GOTO 220
30 F1$="    ###          ###        ###"
40 PRINT @0,"BEGIN MAKING PATTERNS WITH THESE"
50 PRINT @40,"NUMBERS THEN--"
60 PRINT@67,"C R E A T E  YOUR  O W N !"
70 PRINT@96,STRING$(32,"-")
80 PRINT@128,"X INCREMENT  Y INCREMENT  RADIUS"
90 PRINT@160,STRING$(32,"-"):GOSUB 270:RESTORE
100 REM  **********************
110 REM
120 INPUT"NO. OF X STEP INCREMENT";A
130 INPUT "NO. OF Y STEP INCREMENT";B
140 INPUT "NO. RADIUS OF CIRCLE";C
150 WIDTH 32
160 PMODE 4,1:PCLS:SCREEN 1,1
170 FOR X=0 TO 255 STEP A
180 FOR Y=0 TO 191 STEP B
190 CIRCLE (X,Y),C
200 NEXT Y,X
210 FOR T=1 TO 2400:NEXT T
220 CLS
230 INPUT "ANOTHER ONE? <Y/N> ";A$
240 IF A$="Y" THEN 10 ELSE END
250 REM *******************
260 REM
270 READ X,Y,C
280 IF X=99 THEN RETURN
290 PRINT USING F1$;X,Y,C
300 GOTO 270
310 DATA 11,11,17
320 DATA 10,7,10
330 DATA 12,10,21
340 DATA 13,6,11
350 DATA 16,8,14
360 DATA 5,10,15
370 DATA 99,99,99
