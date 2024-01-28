12336  ' CoCo 640 by 192 Graphic Layout Plotter for LaserJet
110 WIDTH "LPT1:",255
120 OPEN "LPT1:" FOR OUTPUT AS #1
130 GOSUB 330
140 GOSUB 360
150 PRINT#1,CHR$(27)+"&f0S";
160 FOR I=1 TO 5
170 GOSUB 440:GOSUB 560
180 GOSUB 400
190 FOR J=1 TO 9:GOSUB 560:NEXT J
200 NEXT I
210 GOSUB 440:GOSUB 560
220 PRINT#1,CHR$(27)+"&f1S";
230 FOR I=1 TO 16
240 GOSUB 520:GOSUB 600
250 GOSUB 480
260 FOR J=1 TO 9:GOSUB 600:NEXT J
270 NEXT I
280 GOSUB 520:GOSUB 600
290 PRINT#1,CHR$(27)+"*p400X"+CHR$(27)+"*p2100Y";
300 PRINT#1,"Color Computer 3 640 by 192 Mode - Grid of 160 Horizontal by 50 Vertical Pixels"
310 PRINT#1,CHR$(27)+"E";
320 STOP
330 ' set landscape
340 PRINT#1,CHR$(27)+"&l1O";
350 RETURN
360 ' set margins
370 PRINT#1,CHR$(27)+"9";
380 PRINT#1,CHR$(27)+"&a13L";
390 RETURN
400 ' define light horizontal line
410 PRINT#1,CHR$(27)+"*c2400A";
420 PRINT#1,CHR$(27)+"*c1B";
430 RETURN
440 ' define heavy horizontal line
450 PRINT#1,CHR$(27)+"*c2400A";
460 PRINT#1,CHR$(27)+"*c3B";
470 RETURN
480 ' define light vertical line
490 PRINT#1,CHR$(27)+"*c1A";
500 PRINT#1,CHR$(27)+"*c1900B";
510 RETURN
520 ' define heavy vertical line
530 PRINT#1,CHR$(27)+"*c2A";
540 PRINT#1,CHR$(27)+"*c1900B";
550 RETURN
560 ' print horizontal line at current x,y and increment
570 PRINT#1,CHR$(27)+"*c0P";
580 PRINT#1,CHR$(27)+"*p+38Y";
590 RETURN
600 ' print vertical line at current x,y and increment
610 PRINT#1,CHR$(27)+"*c0P";
620 PRINT#1,CHR$(27)+"*p+15X";
630 RETURN

