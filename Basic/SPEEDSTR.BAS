10 A$=STRING$(20,32)
20 B$=CHR$(128)
30 C$=CHR$(191)
40 A$=A$+B$+LEFT$(A$,10)+B$+A$
50 L=10
60 FORY=1TO16
70 PRINTMID$(A$,L,32);
80 NEXT
90 PRINT@240,C$;
100 FORY=1TO3
110 SOUND1,1
120 FORT=1TO400
130 NEXT
140 NEXT
150 SOUND100,3
160 C=240
170 R=RND(2)
180 ON R GOTO 190,230
190 L=L+1
200 D=1
210 IF L>21 THEN L=21
220 GOTO260
230 L=L-1
240 D=0
250 IF L<1 THEN L=1
260 FORQ=1TO2
270 I$=INKEY$
280 IF I$=CHR$(8) THEN C=C-1
290 IF I$=CHR$(9) THEN C=C+1
300 NEXT
310 W=W+1
320 PRINT@C,CHR$(191);
330 E=PEEK(C+32+1024)
340 IF E<>96 THEN 400
350 PRINT@480,MID$(A$,L,32);
360 R=RND(10)
370 IF R>7 THEN 170
380 IF D=1 THEN 190
390 GOTO230
400 FORY=1TO1000
410 NEXT
420 PRINT"YOU CRASHED!"
430 PRINT"SCORE";W*10
