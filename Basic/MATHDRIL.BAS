0 ' COPYRIGHT 1989  FALSOFT,INC
10 REM *** MATH DRILL
20 REM *** <C> 1988, W.A. QUEEN III
30 CLS:GOSUB 480
40 PRINT @ 226, "YOUR NAME: ";
50 INPUT NAME$
60 CLS:GOSUB 480
70 PRINT @ 169, "A  ADDITION"
80 PRINT @ 201, "S  SUBTRACTION"
90 PRINT @ 233, "M  MULTIPLICATION"
100 PRINT @ 265, "D  DIVISION"
110 PRINT @ 330, "SELECT ONE"
120 AN$ = INKEY$
130 IFAN$="A"THEN150ELSEIFAN$="S"THEN150ELSEIFAN$="M"THEN150ELSEIFAN$="D"THEN150
140 GOTO 120
150 CLS:GOSUB 480
160 T = T + 1: X = RND(12): Y = RND(12)
170 IF AN$ = "A" THEN PRINT @ 228, "WHAT IS" X"+"Y;
180 IF AN$ = "S" THEN PRINT @ 228, "WHAT IS" X"-"Y;
190 IF AN$ = "M" THEN PRINT @ 228, "WHAT IS" X"*"Y;
200 IF AN$ = "D" THEN PRINT @ 228, "WHAT IS" X"/"Y;
210 INPUT ANSWER
220 IF AN$ = "A" THEN IF ANSWER = X+Y THEN 310
230 IF AN$ = "S" THEN IF ANSWER = X-Y THEN 310
240 IF AN$ = "M" THEN IF ANSWER = X*Y THEN 310
250 IF AN$ = "D" THEN IF ANSWER = X/Y THEN 310
260 IF AN$ = "A" THEN PRINT @ 326, "THE ANSWER IS" X+Y
270 IF AN$ = "S" THEN PRINT @ 326, "THE ANSWER IS" X-Y
280 IF AN$ = "M" THEN PRINT @ 326, "THE ANSWER IS" X*Y
290 IF AN$ = "D" THEN PRINT @ 326, "THE ANSWER IS" X/Y
300 GOTO 410
310 CLS(3)
320 FOR M = 1 TO 4
330 SOUND 175,1: SOUND 200,1
340 NEXT M
350 CLS
360 PRINT @ 168, "CORRECT, " NAME$ "!!!"
370 C=C +1
380 PRINT @ 235, "THAT IS"
390 PRINT @ 258, C "OUT OF" T "CORRECT ANSWERS"
400 PRINT @ 298, C/T*100 "% CORRECT"
410 PRINT @ 356, "PRESS <ENTER> WHEN READY"
420 PRINT @ 386, "FOR ANOTHER OR <R> TO RETURN"
430 PRINT @ 426, "TO THE MENU";
440 A$ = INKEY$
450 IF A$ = CHR$(13) THEN 150
460 IF A$ = "R" THEN 60
470 GOTO 440
480 PRINT @ 10, "MATH DRILL"
490 PRINT @ 35, "<C> 1988, W.A. QUEEN III
500 PRINT "================================";
510 RETURN
