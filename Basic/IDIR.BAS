100 'IDIR
110 'WRITTEN BY GEOFF FRIESEN
120 'COPYRIGHT (C) DECEMBER 1991
130 'BY FALSOFT, INC.
140 'RAINBOW MAGAZINE
150 '
160 CLEAR 200,PEEK(&H27)*256+PEEK(&H28)-176
170 SA=PEEK(&H27)*256
180 SA=SA+PEEK(&H28)+1
190 FOR I=SA TO SA+176
200 READ B$
210 POKE I,VAL("&H"+B$)
220 NEXT I
230 EXEC SA+10: CLS
240 PRINT "IDIR INSTALLED": NEW
250 DATA 12,B7,FF,DF,8D,0F,6E,9D
260 DATA 00,5A,9E,72,AF,8D,00,54
270 DATA 30,8C,ED,9F,72,86,BD,B7
280 DATA CC,A9,30,8D,00,4A,BF,CC
290 DATA AA,B7,CC,D7,30,8D,00,49
300 DATA BF,CC,D8,86,7E,B7,CC,FB
310 DATA 30,8D,00,43,BF,CC,FC,B7
320 DATA CD,12,30,8D,00,49,BF,CD
330 DATA 13,B7,CD,15,30,8D,00,47
340 DATA BF,CD,16,86,42,12,12,12
350 DATA B7,CC,D2,39,0D,46,49,4C
360 DATA 45,53,3A,20,20,47,52,41
370 DATA 4E,53,3A,20,00,00,00,00
380 DATA 6F,8C,FB,6F,8C,F9,7E,D2
390 DATA 4F,6C,8C,F2,7E,B9,A2,BD
400 DATA CD,1E,34,02,AB,8C,E8,A7
410 DATA 8C,E5,35,04,7E,CC,FF,5C
420 DATA C1,0C,22,03,7E,CC,BB,30
430 DATA 8C,C2,C6,08,BD,B9,A2,E6
440 DATA 8C,CC,4F,BD,BD,CC,30,8C
450 DATA BB,C6,08,BD,B9,A2,E6,8C
460 DATA BE,4F,BD,BD,CC,BD,B9,58
470 DATA 39,*
