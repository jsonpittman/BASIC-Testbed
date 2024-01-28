100 '========================================================================
110 '
120 ' DISK DUMP PROGRAM
130 CLEAR 1000
140 CLS
150 INPUT "DISK#, TRACK#, SECTOR #"; DN, TN, SN
160 DSKI$ DN, TN, SN, A$, B$
170 '--------------------
180 FOR I=0 TO 15
190 PRINT RIGHT$( "0" +  HEX$( I * 8 ), 2 ) + ": ";
200 FOR J=0 TO 7
210 '--------------------
220 C$=MID$(A$, (I)*8 + J + 1, 1 )
230 C$=HEX$( ASC( C$ ) )
240 PRINT RIGHT$( "0" + C$, 2 ) + " ";;
250 NEXT J
260 '--------------------
270 FOR J = 0 TO 7
280 C$=MID$( A$, I*8 + J + 1, 1)
290 IF C$<" " THEN PRINT "."; ELSE PRINT C$;
300 NEXT J
310 '--------------------
320 PRINT "    ";
330 PRINT RIGHT$( "0" +  HEX$( I * 8 + 128 ), 2 ) + ": ";
340 '--------------------
350 FOR J=0 TO 7
360 C$=MID$(B$, (I)*8 + J + 1, 1 )
370 C$=HEX$( ASC( C$ ) )
380 PRINT RIGHT$( "0" + C$, 2 ) + " ";;
390 NEXT J
400 '--------------------
410 FOR J = 0 TO 7
420 C$=MID$( B$, I*8 + J + 1, 1)
430 IF C$<" " THEN PRINT "."; ELSE PRINT C$;
440 NEXT J
450 '--------------------
460 PRINT
470 NEXT I
480 '--------------------
490 PRINT "PRESS <ENTER> FOR NEXT, ANY OTHER KEY FOR NEW"
500 A$=INKEY$: IF A$="" THEN 500
510 IF A$<>CHR$(13) THEN GOTO 140
520 SN=SN+1: IF SN=19 THEN SN=1: TN=TN+1: IF TN=35 THEN TN=0
530 PRINT USING "DISK NO: # TRACK NO: ## SECTOR NO: ##"; DN, TN, SN
540 GOTO 160
550 '
560 '========================================================================
