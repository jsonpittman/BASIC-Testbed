1 'SERIAL COMM
2 'WRITTEN BY DAN CHARROIS
3 'COPYRIGHT (C) NOVEMBER 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 'BASIC LOADER FOR INTERRUPT-
20 'DRIVEN SERIAL COMMUNICATIONS
30 'BY:  DAN CHARROIS
40 'IF YOU DON'T HAVE A DISK
50 'DRIVE, CHANGE THE "SAVEM"
60 'IN LINE 140 TO "CSAVEM"
70 '
80 FORX=&HF04 TO &H1017
90 READA$:A=VAL("&H"+A$):T=T+A
100 POKEX,A
110 NEXTX
120 IFT<>27122THENPRINT"THERE IS AN ERROR IN ONE OF THE VALUES IN THE DATA LINES":END
130 INPUT"PRESS ENTER WHEN DISK IS READY  FOR FILE TO BE SAVED";E$
140 SAVEM"DANTERM",&HF04,&H1017,&HF04
150 END
160 DATA BD,0F,92,8E,0E,04,BF,0E,00,BF,0E,02,1A,50,8E,0F,36,BF,01,10,C6,1B,F7
170 DATA A2,7F,F7,A3,DA,8E,12,12,BF,F7,72,BF,8E,0E,C6,04,F7,FF,93,C6,5C,F7,FF
180 DATA 90,1C,AF,39,34,16,8D,4D,C6,01,34,04,4F,8D,44,F6,FF,22,56,25,02,AA,E4
190 DATA 68,E4,24,F2,32,61,BE,0E,00,A7,80,8C,0F,04,25,03,8E,0E,04,BF,0E,00,BC
200 DATA 0E,02,26,10,BE,0E,02,30,01,8C,0F,04,25,03,8E,0E,04,BF,0E,02,F6,FF,22
210 DATA 56,25,FA,7F,FF,93,C6,04,F7,FF,93,35,16,3B,8D,00,34,02,96,E6,21,FE,4A
220 DATA 26,FB,35,82,86,28,97,E6,BE,01,68,8C,0F,C0,27,21,BF,0F,CC,8E,0F,C0,BF
230 DATA 01,68,BE,01,6B,BF,10,00,8E,0F,CE,BF,01,6B,8E,10,02,BF,09,6F,8E,10,10
240 DATA BF,09,71,39,34,06,0D,6F,26,03,BD,8E,0C,35,06,7E,FF,FF,0F,70,0D,6F,26
250 DATA 2B,32,62,34,15,AD,9F,A0,00,26,1F,8D,04,27,F6,20,19,BE,0E,02,BC,0E,00
260 DATA 26,02,4F,39,A6,80,8C,0F,04,25,03,8E,0E,04,BF,0E,02,4D,39,35,95,7E,FF
270 DATA FF,AD,9F,A0,00,26,02,8D,DA,1F,89,4F,7E,B4,F4,BD,B3,ED,1F,98,7E,8E,0C
