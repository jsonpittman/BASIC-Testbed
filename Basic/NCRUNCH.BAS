1 'NUMBER CRUNCHER
2 'BY JOSEPH PENDELL
3 'COPYRIGHT (C) 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
30 CLEAR 1000:GOSUB 370
40 CLS:PRINT @ 72,"number"+T$+"cruncher":IF FIRST=2 THEN PRINT @ 235,"SCORE";SC:PRINT @ 299,"HIGH ";HS
50 IF FIRST=1 THEN PRINT @ 486,"PRESS SPACE TO START";:FIRST=2 ELSE PRINT @ 484,"PRESS SPACE TO PLAY AGAIN";
60 'MOVE BORDER AROUND TITLE
70 FOR I=1 TO 5:PRINT @ 39,MID$(TI$,I,17);:PRINT @ 71,MID$(TI$,I+4,1);:PRINT @ 103,MID$(TI$,6-I,17):PRINT @ 87,MID$(TI$,11-I,1);:FOR J=1 TO 2:IF INKEY$<>" " THEN NEXT J,I:GOTO 70
80 CLS:GOSUB 350
90 'START THE GAME
100 FOR RACE=1 TO 100
110 'CHECK FOR SCORE
120 S=PEEK(1057+X):IF S<97 THEN PRINT @ 511," ";:PRINT @ 506,T$;:ELSE S=S-112:SC=SC+S:PRINT @ 507,L$(S);:PRINT @ 506,T$;:SOUND S*20+1,1
130 'UPDATE SCREEN
140 PRINT @ X,X$;
150 PRINT @ RND(24)+480,CHR$(RND(10)+47);
160 'CHECK IF ARROW KEYS PRESSED
170 A$=INKEY$:IF A$<>"" THEN 210
180 IF PEEK(343)=247 THEN IF X>0 THEN X=X-1
190 IF PEEK(344)=247 THEN IF X<23 THEN X=X+1
200 GOTO 230
210 IF A$=CHR$(8) THEN IF X>0 THEN X=X-1
220 IF A$=CHR$(9) THEN IF X<23 THEN X=X+1
230 NEXT RACE
240 'IF HIGH SCORE THEN SHOW A SPECIAL DISPLAY
250 FOR I=1 TO 250:NEXT I:IF HS=>SC THEN 40
260 HS=SC:PRINT @ 511," ";
270 FOR I=448 TO 0 STEP -32:FOR J=255 TO 143 STEP -16:PRINT @ I,STRING$(32,J);:NEXT J,I
280 FOR I=32 TO 128 STEP 32:FOR J=255 TO 143 STEP -16:PRINT @ I,STRING$(32,J);:NEXT J:PRINT @ I,TAB(10) NP$(I/32);:NEXT I
290 FOR J=255 TO 143 STEP -16:PRINT @ 160,STRING$(32,J);:NEXT J
300 FOR I=192 TO 288 STEP 32:FOR J=255 TO 143 STEP -16:PRINT @ I,STRING$(32,J);:NEXT J:PRINT @ I,TAB(9) HP$((I-160)/32);:NEXT I
310 FOR J=255 TO 143 STEP -16:PRINT @ 320,STRING$(32,J);:NEXT J
320 FOR I=352 TO 448 STEP 32:FOR J=255 TO 143 STEP -16:PRINT @ I,STRING$(32,J);:NEXT J:PRINT @ I,TAB(6) SP$((I-320)/32);:NEXT I
330 FOR I=1 TO 1000:NEXT I:GOTO 40
340 'INITIALIZE FOR EACH GAME
350 X=12:SC=0:RETURN
360 'INITIALIZE ONCE
370 FIRST=1:HS=0:X$=CHR$(138)+CHR$(143)+CHR$(133):T$=CHR$(128)
380 L$(0)="ZERO ":L$(1)="ONE  ":L$(2)="TWO  ":L$(3)="THREE":L$(4)="FOUR ":L$(5)="FIVE "
390 L$(6)="SIX  ":L$(7)="SEVEN":L$(8)="EIGHT":L$(9)="NINE "
400 FOR U=1 TO 4:FOR Z=1 TO 13:READ ZZ:NP$(U)=NP$(U)+CHR$(ZZ):NEXT Z,U
410 FOR U=1 TO 4:FOR Z=1 TO 13:READ ZZ:HP$(U)=HP$(U)+CHR$(ZZ):NEXT Z,U
420 FOR U=1 TO 4:FOR Z=1 TO 18:READ ZZ:SP$(U)=SP$(U)+CHR$(ZZ):NEXT Z,U
430 FOR I=159 TO 239 STEP 16:TI$=TI$+CHR$(I):NEXT I:TI$=TI$+TI$+TI$+TI$
440 RETURN
450 'DATA FOR "NEW"
460 DATA 132,143,143,133,138,131,131,143,133,143,143,133,143
470 DATA 133,134,143,133,138,140,141,143,133,142,143,133,143
480 DATA 133,143,134,133,138,143,143,143,132,135,134,133,143
490 DATA 135,143,143,135,139,131,131,143,135,143,143,135,143
500 'DATA FOR "HIGH"
510 DATA 133,143,133,139,129,143,137,131,134,143,133,143,133
520 DATA 132,140,133,143,133,143,133,143,143,143,132,140,133
530 DATA 133,143,133,143,133,143,134,143,130,143,133,143,133
540 DATA 135,143,135,139,131,143,143,131,131,143,135,143,135
550 'DATA FOR "SCORE"
560 DATA 137,131,134,143,137,131,134,143,142,131,141,143,129,131,141,138,131,131
570 DATA 134,140,141,143,133,143,143,143,133,143,138,143,132,140,135,138,140,141
580 DATA 141,143,138,143,133,143,142,143,134,143,137,143,133,134,143,138,143,143
590 DATA 139,131,135,143,139,131,135,143,143,131,143,143,135,143,135,139,131,131
