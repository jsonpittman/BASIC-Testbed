0 'COPYRIGHT 1989  FALSOFT, INC
10 '***************************
20 '*       COCOTOUR          *
30 '*     by marc gagnon      *
40 '***************************
50 PCLEAR1
60 DK= PEEK(&HBA)=14
70 CLS:PRINTSTRING$(32,175);"COCOTOUR - BY MARC GAGNON";CHR$(13);"COPYRIGHT (C) JUNE 1987";CHR$(13);STRING$(32,175)
80 PRINT"THERE ARE  17 LINES, WAIT!"
90 AD=&HE00
100 PRINT"READING FROM LINE: ";:PO=PEEK(136)*256+PEEK(137)-1024
110 FOR T=1 TO  17
120 CS=0:READ CK,NU:PRINT@PO,PEEK(49)*256+PEEK(50);
130 FOR Y=1 TO NU: READ A$:POKE AD,VAL("&H"+A$):CS=CS+VAL("&H"+A$):AD=AD+1:NEXT Y
140 IF CS<>CK THEN PRINT" ERROR!":END ELSE NEXT T
150 PRINT:PRINT:PRINT"START : &HE00  DECIMAL:  3584"
160 PRINT"END   : &H1224  DECIMAL:  4644"
170 IF DK THEN PRINT"READY DISK IN DRIVE 0" ELSE PRINT"READY CASSETTE"
180 INPUT"PRESS ENTER";A
190 IF DK THEN SAVEM"COCOTOUR",&HE00,&H1224,&HE00:GOTO 210
200 CSAVEM"COCOTOUR",&HE00,&H1224,&HE00
210 CLS:PRINT"COCOTOUR IS READY TO BE USED":END
220 DATA 5889,64,4D,10,2B,1,15,BD,B3,ED,6F,8D,2,3B,10,83,0,0,26,6,86,FF,A7,8D,2,2F,ED,8D,2,26,17,0,F0,96,E7,C6,19,3D,30,8D,3,3F,30,8B,34,10,BD,B2,6D,BD,B7,B,35,10,5D,27,7,C1,2,27,7,30,88,4B,C6,FF
230 DATA 6368,64,20,1,5F,E7,8D,2,1,AF,8D,1,F9,96,E7,27,10,17,0,AF,81,2,27,3,5F,20,2,C6,FF,E7,8D,1,E7,10,AE,8D,1,E0,AE,20,E6,8D,1,D6,D,E7,27,E,86,20,ED,0,6D,8D,1,D0,27,6,ED,2,20,2,E7,0,6D,8D
240 DATA 5546,64,1,C5,26,9,EC,8D,1,BA,83,0,1,26,FB,8D,5C,AC,22,27,8,1F,10,E3,24,1F,1,20,CB,34,36,D,E7,27,2,8D,66,AD,9F,A0,0,26,2E,D,E7,27,2,8D,52,35,36,31,26,6D,20,26,AD,A6,8D,1,86,A7,8D,1,81,6D
250 DATA 6268,64,8D,1,85,27,A,8D,24,A6,8D,1,75,A7,8D,1,72,6D,8D,1,74,26,A,20,88,35,70,5F,1E,89,7E,B4,F4,D,E7,27,2,8D,24,AD,9F,A0,0,20,EE,E6,8D,1,51,D,E7,27,8,C4,7,5C,E7,8D,1,46,39,CB,10,CA,8F,20
260 DATA 6691,64,F5,1A,50,C6,36,F7,FF,A4,39,C6,3C,F7,FF,A4,39,B6,E2,BD,81,32,26,1,39,F,E7,39,8D,F3,AE,2,5D,10,27,0,F4,E7,8D,1,23,A6,84,17,1,6,26,39,6A,8D,1,18,30,1,80,30,A7,8D,1,12,A6,84,17,0,F3,26
270 DATA 5693,64,26,6A,8D,1,5,30,1,80,30,34,2,A6,8D,0,FD,C6,A,3D,EB,E0,D,E7,27,4,C1,17,20,2,C1,F,23,3,5A,20,F1,E7,8D,0,E5,6D,8D,0,DF,10,27,0,A8,86,20,A1,84,26,8,6A,8D,0,D1,30,1,20,EA,34,10,30
280 DATA 8569,64,8D,1,E1,96,E7,E6,86,E0,8D,0,BF,54,E7,8D,0,BB,96,E7,27,3E,4F,E6,8D,0,B2,BD,B4,F4,BD,BD,D9,8E,3,DA,31,8D,0,A9,17,0,82,86,2C,A7,3F,10,AF,8D,0,9B,4F,E6,8D,0,95,BD,B4,F4,BD,BD,D9,8E,3,DA
290 DATA 6285,64,10,AE,8D,0,88,8D,64,31,8D,0,84,CE,F8,D2,8D,48,20,21,A6,8D,0,76,C6,20,3D,8E,4,0,30,8B,E6,8D,0,69,3A,8C,4,0,10,25,A4,60,8C,5,FF,10,22,A4,59,9F,88,35,10,31,8D,0,6B,E6,8D,0,4D,A6,80,A7
300 DATA 6497,64,A0,5A,26,F9,86,22,A7,A0,86,3B,A7,A0,6F,20,31,8D,0,51,CE,B8,F7,20,1,39,9E,A6,34,10,31,3F,10,9F,A6,9D,9F,AD,40,35,10,9F,A6,E,A5,A6,80,A7,A0,26,FA,39,81,30,25,7,81,39,22,3,1A,4,39,1C,FB,39
310 DATA 7942,64,FF,FF,0,0,0,0,FF,FF,FF,3,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,22,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF
320 DATA 8160,64,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF
330 DATA 8160,64,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF
340 DATA 8160,64,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF
350 DATA 6851,64,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,0,0,FF,FF,FF,FF,0,0,20,28,50,4,0,4,1F,0,1,4,3F,5,FF,0,20,5,FE,5,E0,FF,FF,5,C0,4,20,FF,E0,0
360 DATA 7161,64,80,0,80,4E,0,2,80,9E,87,7E,0,50,87,7C,87,30,FF,FE,86,E0,80,50,FF,B0,0,80,0,80,9C,0,4,81,3C,8E,FC,0,A0,8E,F8,8E,60,FF,FC,8D,C0,80,A0,FF,60,0,4,0,5,E0,0,20,5,E1,5,FF,0,1,5,DF
370 DATA 6743,64,4,1F,FF,E0,4,1E,4,1,FF,FF,0,80,0,87,30,0,50,87,32,87,7E,0,2,87,2E,80,4E,FF,B0,80,4C,80,2,FF,FE,0,80,0,8E,60,0,A0,8E,64,8E,FC,0,4,8E,5C,80,9C,FF,60,80,98,80,4,FF,FC,0,43,4F,50
380 DATA 2268,36,59,52,49,47,48,54,20,28,43,29,20,4A,55,4E,45,20,31,39,38,37,20,42,59,20,4D,41,52,43,20,47,41,47,4E,4F,4E,2E
