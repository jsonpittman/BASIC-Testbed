1 'ML PMODE SCREEN DUMP FOR
2 'IBM/EPSON PRINTERS
3 'BY CRAY AUGSBURG, BASED ON
4 'WORK BY WILLIAM P. NEE
5 'COPYRIGHT (C) 1992
6 'BY FALSOFT, INC.
7 'RAINBOW MAGAZINE
10 FORI=&H3000 TO &H314F:READA$:POKEI,VAL("&H"+A$):NEXTI
20 CLS:PRINT:PRINT"INSERT DISK AND PRESS <ENTER>"
30 A$=INKEY$:IF A$<>CHR$(13) THEN 30
40 SAVEM"IBMDUMP.BIN",&H3000,&H314F,&H3000
50 CLS:END
100 DATA 86,FE,97,6F,86,01,97,96,30,8D,01,3B,DE,BA,86,18,A7,8D,01,31,86,1B,AD,9F,A0,02,86,41,AD,9F,A0,02,86,08,AD,9F,A0,02,86,1B,AD,9F,A0,02,86,32,AD,9F,A0,02
110 DATA 86,1B,AD,9F,A0,02,86,64,AD,9F,A0,02,86,78,AD,9F,A0,02,86,00,AD,9F,A0,02,86,20,A7,8D,00,F4,86,1B,AD,9F,A0,02,86,4B,AD,9F,A0,02,86,00,AD,9F,A0,02,86,01
120 DATA AD,9F,A0,02,C6,08,6F,8D,00,D8,A6,40,A5,85,27,0A,A6,8D,00,CE,8B,80,A7,8D,00,C8,A6,C8,20,A5,85,27,0A,A6,8D,00,BD,8B,40,A7,8D,00,B7,A6,C8,40,A5,85,27,0A
130 DATA A6,8D,00,AC,8B,20,A7,8D,00,A6,A6,C8,60,A5,85,27,0A,A6,8D,00,9B,8B,10,A7,8D,00,95,A6,C9,00,80,A5,85,27,0A,A6,8D,00,89,8B,08,A7,8D,00,83,A6,C9,00,A0,A5
140 DATA 85,27,0A,A6,8D,00,77,8B,04,A7,8D,00,71,A6,C9,00,C0,A5,85,27,0A,A6,8D,00,65,8B,02,A7,8D,00,5F,A6,C9,00,E0,A5,85,27,0A,A6,8D,00,53,8B,01,A7,8D,00,4D,A6
150 DATA 8D,00,49,43,AD,9F,A0,02,5A,10,26,FF,63,33,41,6A,8D,00,37,10,26,FF,57,86,0D,AD,9F,A0,02,33,C9,00,E0,6A,8D,00,26,10,26,FF,0F,86,1B,AD,9F,A0,02,86,41,AD
160 DATA 9F,A0,02,86,0C,AD,9F,A0,02,86,1B,AD,9F,A0,02,86,32,AD,9F,A0,02,0F,6F,39,00,00,00,00,01,02,04,08,10,20,40,80
