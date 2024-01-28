100 '=========================================================================
110 ' DISK DIR/LIST UTILITY
120 ' LISTS DIRECTORY IN FIRST-IN ORDER, LISTS ANY FILE ON SCREEN.
130 CLEAR 2000
140 DIM FA( 67 )
150 DIM N$( 71 )
160 DIM F( 71 )
170 DIM A( 71 )
180 DIM G( 71 )
190 DIM B( 71 )
200 FT = 0
210 CLS
220 PRINT "DIR/LIST UTILITY"
230 PRINT
240 PRINT "   1. DIR"
250 PRINT "   2. LIST"
260 PRINT
270 INPUT "SELECTION (1-2)"; RE
280 IF RE < 1 OR RE > 2 THEN 270
290 ON RE GOTO 320,630
300 '
310 '=========================================================================
320 ' DIR FUNCTION
330 CLS
340 PRINT "    NAME        TYPE   FORMAT   BYTES SEG"
350 PRINT "------------ --------- ------   ----- ---"
360 GOSUB 970
370 TB = 0: TL = 0: NF = 0
380 FOR I = 0 TO 71
390 IF N$( I ) = STRING$( 11, CHR$( 255 ) ) THEN GOTO 550
400 NF = NF + 1
410 A$ = LEFT$( N$( I ), 8 ) + "." + MID$( N$( I ), 9, 3 )
420 A$ = A$ + " " + MID$( "BASICPROGBASICDATAMACHINELATEXTEDITR",                        F( I ) * 9 + 1, 9 )
430 IF A( I ) = 0 THEN A$ = A$ + " BINARY " ELSE A$ = A$ + " ASCII  "
440 BY = 0: NG = 1
450 HD = G( I )
460 IF FA( HD ) > 67 THEN GOTO 510
470 BY = BY + 2304
480 IF FA( HD ) - HD <> 1 THEN NG = NG + 1
490 HD = FA( HD )
500 GOTO 460
510 BY = BY + 2304
520 PRINT A$;: PRINT USING " ###### ##"; BY, NG
530 TL = TL + 1: IF TL = 20 THEN TL = 0: GOSUB 1280
540 TB = TB + BY
550 NEXT I
560 PRINT "TOTAL BYTES="; TB;"# BYTES LEFT="; 2304*FG
570 PRINT 68 - TB/2304 - FG; "GRANULES INACCESSIBLE ("; 156672 - TB - FG*2304;      "BYTES)"
580 PRINT NF; "TOTAL FILES"
590 GOSUB 1280
600 GOTO 210
610 '
620 '=========================================================================
630 ' LIST FUNCTION
640 GOSUB 970
650 CLS
660 INPUT "FILE TO LIST"; RE$
670 IF LEN( RE$ ) = 0 THEN GOTO 940 ELSE IF LEN( RE$ ) <= 12 THEN GOTO 690
680 GOTO 650
690 FOR L = 1 TO LEN( RE$ )
700 IF ( MID$( RE$, L, 1 ) = " " ) OR ( MID$( RE$, L, 1 ) = "." )  THEN GOTO 720
710 NEXT L
720 C$ = LEFT$( LEFT$( RE$, L - 1 ) + "       ", 8 )
730 C$ = C$ + LEFT$( MID$( RE$, L + 1, 3 ) + "   ", 3 )
740 FOR I=0 TO 71
750 IF N$( I ) = C$ THEN 790
760 NEXT I
770 PRINT "FILE "; RE$; " NOT FOUND"
780 GOTO 930
790 HD = G( I )
800 IF HD > 33 THEN TK = INT( ( HD + 2 ) / 2 ) ELSE TK = INT( HD / 2 )
810 SC = ( ( HD AND 1 ) * 9 ) + 1
820 IF FA(HD) <= 67 THEN J = 9 ELSE J = FA( HD ) AND 31
830 FOR L = 1 TO J
840 DSKI$ 0, TK, SC, A$, B$
850 IF FA( HD ) <= 67 THEN PRINT A$; B$;: GOTO 890
860 IF L <> J THEN PRINT A$; B$;: GOTO 890
870 IF B( I ) <= 128 THEN PRINT LEFT$( A$, B( I ) )
880 IF B( I ) > 128 THEN PRINT A$;: PRINT LEFT$( B$, B( I ) - 128  );
890 SC=SC + 1
900 NEXT L
910 IF FA( HD ) > 67 THEN 920 ELSE HD = FA( HD ): GOTO 800
920 PRINT
930 GOSUB 1280
940 GOTO 210
950 '
960 '=========================================================================
970 ' READ IN AND STRIP DIRECTORY
980 IF FT = 1 THEN GOTO 1250
990 DSKI$ 0, 17, 2, A$, B$
1000 FG = 0
1010 FOR I = 0 TO 67
1020 FA(I) = ASC( MID$( A$, I + 1, 1 ) )
1030 IF FA(I) = 255 THEN FG = FG + 1
1040 NEXT I
1050 K = 0
1060 FOR I = 3 TO 11
1070 DSKI$ 0, 17, I, A$, B$
1080 FOR J = 0 TO 3
1090 N$( J + K ) = MID$( A$, J * 32 + 1, 11 )
1100 F( J + K ) = ASC( MID$( A$, J * 32 + 12, 1 ) )
1110 A( J + K ) = ASC( MID$( A$, J * 32 + 13, 1 ) )
1120 G( J + K ) = ASC( MID$( A$, J * 32 + 14, 1 ) )
1130 B( J + K ) = ASC( MID$( A$, J * 32 + 15, 1 ) ) * 256 +                                       ASC( MID$( A$, J * 32 + 16, 1 ) )
1140 NEXT J
1150 FOR J = 0 TO 3
1160 N$( J + K + 4 ) = MID$( B$, J * 32 + 1, 11 )
1170 F( J + K + 4 ) = ASC( MID$( B$, J * 32 + 12, 1 ) )
1180 A( J + K + 4 ) = ASC( MID$( B$, J * 32 + 13, 1 ) )
1190 G( J + K + 4 ) = ASC( MID$( B$, J * 32 + 14, 1 ) )
1200 B( J + K + 4 ) = ASC( MID$( A$, J * 32 + 15, 1 ) ) * 256 +                                       ASC( MID$( B$, J * 32 + 16, 1 ) )
1210 NEXT J
1220 K = K + 8
1230 NEXT I
1240 FT = 1
1250 RETURN
1260 '
1270 '========================================================================
1280 ' MORE SUBROUTINE
1290 PRINT "PRESS ANY KEY TO CONTINUE"
1300 D$=INKEY$: IF D$="" THEN 1300
1310 RETURN
1320 '========================================================================
