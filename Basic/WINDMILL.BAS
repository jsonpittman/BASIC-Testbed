0 'LISTING1
5 'GOTO500'ON THE LINE
6 'GOTO600'ON THE BIAS
9 T=RND(2): ON T GOTO10,11
10 PMODE4,1:PCLS:SCREEN1,O:GOTO100
11 PMODE4,1:PCLS:SCREEN1,1
100 A$="U3R3G3L3U3E3"
101 GOTO220
102 DRAW"BM0,96R128NR128ND96U96":GOTO220
104 FOR A=3 TO O STEP-1
105 FOR S= 44 TO 4 STEP -4
110 B$="S"+STR$(S)
115 D$="A"+STR$(A)
120 DRAW "C4BM128,96"+D$+B$+A$
130 NEXT S,A
200 FOR Z= 1 TO 200:NEXT
205 PCLS:GOTO 9
220 FOR A= 0 TO 3
230 FOR S= 4 TO 44 STEP4
240 B$="S"+STR$(S):D$="A"+STR$(A)
250 DRAW"BM128,96"+D$+B$+A$
260 NEXT S,A
270 'FOR Z= 1 TO 2000: NEXT:PCLS:GOTO 9
280 FOR Z= 1 TO 600:NEXT:GOTO 104
500 PMODE4,1:PCLS:SCREEN1,1
510 DRAW"BM128,96NL128NR128NU96D96"
520 'A$="EFRE2F2G2H2LGH"
521 'A$="E2F2REFGHLG2H2"
522 'A$="EFE2F2EFGHG2H2GH"
523 'A$="EFEM+3,1M-3,1HGH"
524 'A$="M+4,-2R2M-1,2M+3,-1FGM-3,-1M+1,2L2M-4,-2"
525 'A$="BR2U2H2M+6,2G2GHL4F2M-6,2E2U2BL2"
526 'A$="BRHM+1,-2M+6,2NM-3,1M+3,1M-3,1NM-3,-1M-6,2M-1,-2EBL"
527 'A$="BRUHM+2,-1BD2R3FGL3BD2M-2,-1EUBR"
528 'A$="REFERULDRM+4,1M-4,1LDRULHGHL"
529 FOR X=4 TO 44 STEP4
530 DRAW"S=X;BM128,96"+A$
531 NEXT X:FOR Z=1TO2000:NEXT
532 GOTO532
533 GOTO100
600 'PMODE4,1:PCLS:SCREEN1,1
610 DRAW"BM0,96R128NR128NU96D96"
620 'A$="UREU2R2D2L2GDL"
621 'A$="EU2RU2FRDFL2DL2G"
629 FOR X=44 TO 4 STEP-4
630 DRAW"S=X;BM128,96"+A$
631 NEXT X:FORZ=1TO2000:NEXT
632 GOTO632
633 GOTO100
