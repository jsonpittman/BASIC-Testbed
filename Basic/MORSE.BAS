100 ' MORSE CODE TRAINER.
110 ' SENDS MORSE CODE AT RATES OF 3 TO 15 WORDS PER MINUTE.
120 ' COPYRIGHT 1988 WILLIAM BARDEN, JR.
130 '
140 K = 0: L = 0: L1 = 0: L3 = 0: L5 = 0: L7 = 0: T1 = 0: T3 = 0
150 DIM CH$( 127 )
160 DIM D1( 15 ), D3( 15 ), D5( 15 )
170 DIM S1( 15 ), S3( 15 )
180 ' SET SPEED PARAMETERS
190 FOR I = 3 TO 15: READ D1( I ), D3( I ), D5( I ), S1( I ), S3( I ): NEXT
200 DATA 290, 870, 1450, 3, 9
210 DATA 181, 538, 891, 3, 8
220 DATA 126, 366, 612, 3, 8
230 DATA 110, 300, 460, 2, 7
240 DATA 80, 214, 338, 2, 7
250 DATA 70, 168, 270, 2, 6
260 DATA 66, 156, 250, 2, 5
270 DATA 63, 144, 228, 2, 5
280 DATA 40, 92, 144, 2, 5
290 DATA 53, 118, 182, 1, 4
300 DATA 48, 106, 158, 1, 4
310 DATA 44, 93, 136, 1, 4
320 DATA 40, 80, 112, 1, 3
330 ' CLEAR CHARACTER ARRAY
340 FOR I = 0 TO 127: CH$( I ) = "": NEXT
350 ' READ IN ALLOWABLE CHARACTERS
360 DATA ".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "...."
370 DATA "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--."
380 DATA "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-"
390 DATA "-.--", "--.."                                      
400 DATA "-----", ".----", "..---", "...--", "....-"
410 DATA ".....", "-....", "--...", "---..", "----."
420 FOR I = 65 TO 90: READ CH$( I ): NEXT                         'A-Z
430 FOR I = 48 TO 57: READ CH$( I ): NEXT                         '0-9
440 ' ADD SPECIAL CHARACTERS
450 CH$( 46 ) = ".-.-.-": CH$( 44 ) = "--..--": CH$( 63 ) = "..--.."
460 CH$( 45 ) = "-....-": CH$( 33 ) = "........": CH$( 34 ) = ".-..."
470 CH$( 35 ) = ".-.-.": CH$( 36 ) = "...-.-": CH$( 32 ) = " "
480 CLS
490 PRINT "MORSE CODE TRAINER"
500 PRINT: PRINT
510 INPUT "FREQUENCY:"; F
520 IF F = 0 THEN F = 97
530 INPUT "SPEED IN WPM (3 - 15):"; S
540 IF S < 3 OR S > 15 THEN GOTO 530
550 L1 = D1( S ): L3 = D3( S ): L5 = D5( S ): L7 = L5 * 1.4
560 T1 = S1( S ): T3 = S3( S )
570 INPUT "RANDOM GROUPS (R) OR TEXT (T): "; RT$
580 ' TEXT HERE
590 IF RT$ <> "R" AND RT$ <> "T" THEN GOTO 570
600 IF RT$ = "R" THEN GOTO 650
610 IF RT$ = "T" THEN INPUT "TEXT:"; TX$
620 FOR I= 1 TO LEN( TX$ ): A$ = MID$( TX$, I, 1 ): GOSUB 720: NEXT
630 PRINT
640 GOTO 570
650 ' RANDOM GROUPS HERE
660 CT = -1
670 CT = CT + 1: IF ( ( CT AND &H7 ) = 0 ) THEN A$ = " ": PRINT " ";: GOSUB 720
680 A = RND( 127 ): IF CH$( A ) = "" THEN GOTO 680
690 IF A = 32 THEN GOTO 680
700 A$ = CHR$( A): PRINT A$;: GOSUB 720: GOTO 670
710 ' OUTPUT CHARACTER SUBROUTINE
720 A$ = CH$( ASC( A$ ) ): IF A$ = "" THEN GOTO 760 ELSE IF A$ = " " THEN           GOSUB 820: GOTO 760
730 IF RT$ = "T" THEN PRINT A$ + "   ";
740 FOR L = 1 TO LEN( A$ ): IF MID$( A$, L, 1 ) = "." THEN SOUND F, T1: GOSUB       780: NEXT ELSE SOUND F, T3: GOSUB 780: NEXT
750 GOSUB 800
760 RETURN
770 ' PAUSES ONE DOT WORTH
780 FOR K = 0 TO L1: NEXT: RETURN
790 ' PAUSES THREE DOTS WORTH
800 FOR K= 0 TO L3: NEXT: RETURN
810 ' PAUSES FIVE DOTS WORTH
820 FOR K = 0 TO L5: NEXT: RETURN
