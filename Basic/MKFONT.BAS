10 'FONT MAGICIAN
20 'WRITTEN BY GEOFF FRIESEN
30 'COPYRIGHT (C) AUGUST 1991
40 'BY FALSOFT, INC.
50 'RAINBOW MAGAZINE
100 'MKFONT: MAKE IBM.FNT
105 '
110 WIDTH 32
115 PRINT "MKFONT: MAKE IBM.FNT"
120 PRINT
125 F$="IBM.FNT"
130 AD=&HFA0F
135 READ B$
140 IF B$="*" THEN 160
145 POKE AD,VAL("&H"+B$)
150 AD=AD+1
155 GOTO 135
160 SAVEM F$,&HFA0F,AD-1,0
165 PRINT "FINISHED"
170 '
175 'FONT DATA (IBM 160-255)
180 '
185 DATA 1C,00,78,0C,7C,CC,7E,00
190 DATA 38,00,70,30,30,30,78,00
195 DATA 00,1C,00,78,CC,CC,78,00
200 DATA 00,1C,00,CC,CC,CC,7E,00
205 DATA 00,F8,00,F8,CC,CC,CC,00
210 DATA FC,00,CC,EC,FC,DC,CC,00
215 DATA 3C,6C,6C,3E,00,7E,00,00
220 DATA 38,6C,6C,38,00,7C,00,00
225 DATA 30,00,30,60,C0,CC,78,00
230 DATA 00,00,00,FC,C0,C0,00,00
235 DATA 00,00,00,FC,0C,0C,00,00
240 DATA C3,C6,CC,DE,33,66,CC,0F
245 DATA C3,C6,CC,DB,37,6F,CF,03
250 DATA 18,18,00,18,18,18,18,00
255 DATA 00,33,66,CC,66,33,00,00
260 DATA 00,CC,66,33,66,CC,00,00
265 DATA 22,88,22,88,22,88,22,88
270 DATA 55,AA,55,AA,55,AA,55,AA
275 DATA DB,77,DB,EE,DB,77,DB,EE
280 DATA 18,18,18,18,18,18,18,18
285 DATA 18,18,18,18,F8,18,18,18
290 DATA 18,18,F8,18,F8,18,18,18
295 DATA 36,36,36,36,F6,36,36,36
300 DATA 00,00,00,00,FE,36,36,36
305 DATA 00,00,F8,18,F8,18,18,18
310 DATA 36,36,F6,06,F6,36,36,36
315 DATA 36,36,36,36,36,36,36,36
320 DATA 00,00,FE,06,F6,36,36,36
325 DATA 36,36,F6,06,FE,00,00,00
330 DATA 36,36,36,36,FE,00,00,00
335 DATA 18,18,F8,18,F8,00,00,00
340 DATA 00,00,00,00,F8,18,18,18
345 DATA 18,18,18,18,1F,00,00,00
350 DATA 18,18,18,18,FF,00,00,00
355 DATA 00,00,00,00,FF,18,18,18
360 DATA 18,18,18,18,1F,18,18,18
365 DATA 00,00,00,00,FF,00,00,00
370 DATA 18,18,18,18,FF,18,18,18
375 DATA 18,18,1F,18,1F,18,18,18
380 DATA 36,36,36,36,37,36,36,36
385 DATA 36,36,37,30,3F,00,00,00
390 DATA 00,00,3F,30,37,36,36,36
395 DATA 36,36,F7,00,FF,00,00,00
400 DATA 00,00,FF,00,F7,36,36,36
405 DATA 36,36,37,30,37,36,36,36
410 DATA 00,00,FF,00,FF,00,00,00
415 DATA 36,36,F7,00,F7,36,36,36
420 DATA 18,18,FF,00,FF,00,00,00
425 DATA 36,36,36,36,FF,00,00,00
430 DATA 00,00,FF,00,FF,18,18,18
435 DATA 00,00,00,00,FF,36,36,36
440 DATA 36,36,36,36,3F,00,00,00
445 DATA 18,18,1F,18,1F,00,00,00
450 DATA 00,00,1F,18,1F,18,18,18
455 DATA 00,00,00,00,3F,36,36,36
460 DATA 36,36,36,36,FF,36,36,36
465 DATA 18,18,FF,18,FF,18,18,18
470 DATA 18,18,18,18,F8,00,00,00
475 DATA 00,00,00,00,1F,18,18,18
480 DATA FF,FF,FF,FF,FF,FF,FF,FF
485 DATA 00,00,00,00,FF,FF,FF,FF
490 DATA F0,F0,F0,F0,F0,F0,F0,F0
495 DATA 0F,0F,0F,0F,0F,0F,0F,0F
500 DATA FF,FF,FF,FF,00,00,00,00
505 DATA 00,00,76,DC,C8,DC,76,00
510 DATA 00,78,CC,F8,CC,F8,C0,C0
515 DATA 00,FC,CC,C0,C0,C0,C0,00
520 DATA 00,FE,6C,6C,6C,6C,6C,00
525 DATA FC,CC,60,30,60,CC,FC,00
530 DATA 00,00,7E,D8,D8,D8,70,00
535 DATA 00,66,66,66,66,7C,60,C0
540 DATA 00,76,DC,18,18,18,18,00
545 DATA FC,30,78,CC,CC,78,30,FC
550 DATA 38,6C,C6,FE,C6,6C,38,00
555 DATA 38,6C,C6,C6,6C,6C,EE,00
560 DATA 1C,30,18,7C,CC,CC,78,00
565 DATA 00,00,7E,DB,DB,7E,00,00
570 DATA 06,0C,7E,DB,DB,7E,60,C0
575 DATA 38,60,C0,F8,C0,60,38,00
580 DATA 78,CC,CC,CC,CC,CC,CC,00
585 DATA 00,FC,00,FC,00,FC,00,00
590 DATA 30,30,FC,30,30,00,FC,00
595 DATA 60,30,18,30,60,00,FC,00
600 DATA 18,30,60,30,18,00,FC,00
605 DATA 0E,1B,1B,18,18,18,18,18
610 DATA 18,18,18,18,18,D8,D8,70
615 DATA 30,30,00,FC,00,30,30,00
620 DATA 00,76,DC,00,76,DC,00,00
625 DATA 38,6C,6C,38,00,00,00,00
630 DATA 00,00,00,18,18,00,00,00
635 DATA 00,00,00,00,18,00,00,00
640 DATA 0F,0C,0C,0C,EC,6C,3C,1C
645 DATA 78,6C,6C,6C,6C,00,00,00
650 DATA 70,18,30,60,78,00,00,00
655 DATA 00,00,3C,3C,3C,3C,00,00
660 DATA 00,00,00,00,00,00,00,00
665 DATA *
