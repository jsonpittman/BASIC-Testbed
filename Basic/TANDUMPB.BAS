1 'ML PMODE SCREEN DUMP FOR 
2 'TANDY PRINTERS
3 'BY CRAY AUGSBURG, BASED ON
4 'WORK BY WILLIAM P. NEE
5 'COPYRIGHT (C) 1992
6 'BY FALSOFT, INC.
7 'RAINBOW MAGAZINE
10 FORI=&H3000 TO &H30F1:READA$:POKEI,VAL("&H"+A$):NEXTI
20 CLS:PRINT:PRINT"INSERT DISK AND PRESS <ENTER>"
30 A$=INKEY$:IF A$<>CHR$(13) THEN 30
40 SAVEM"TANDUMP.BIN",&H3000,&H30F1,&H3000
50 CLS:END
100 DATA 86,FE,97,6F,86,01,97,96,86,12,AD,9F,A0,02,30,8D,00,D7,DE,BA,86,1B,A7,8D,00,CD,86,1B,AD,9F,A0,02,86,10,AD,9F,A0,02,86,00,AD,9F,A0,02,86,32,AD,9F,A0,02
110 DATA 86,20,A7,8D,00,AE,C6,08,6F,8D,00,AA,A6,40,A5,85,27,04,6C,8D,00,A0,A6,C8,20,A5,85,27,0A,A6,8D,00,95,8B,02,A7,8D,00,8F,A6,C8,40,A5,85,27,0A,A6,8D,00,84
120 DATA 8B,04,A7,8D,00,7E,A6,C8,60,A5,85,27,0A,A6,8D,00,73,8B,08,A7,8D,00,6D,A6,C9,00,80,A5,85,27,0A,A6,8D,00,61,8B,10,A7,8D,00,5B,A6,C9,00,A0,A5,85,27,0A,A6
130 DATA 8D,00,4F,8B,20,A7,8D,00,49,A6,C9,00,C0,A5,85,27,0A,A6,8D,00,3D,8B,40,A7,8D,00,37,A6,8D,00,33,43,8A,80,AD,9F,A0,02,5A,10,26,FF,79,33,41,6A,8D,00,1F,10
140 DATA 26,FF,6D,86,0D,AD,9F,A0,02,33,C9,00,C0,6A,8D,00,0E,10,26,FF,3D,86,1E,AD,9F,A0,02,0F,6F,39,00,00,00,00,01,02,04,08,10,20,40,80
