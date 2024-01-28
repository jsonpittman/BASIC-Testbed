10 ' Montest
20 ' By Dave Archer
30 ' test monitor support for 128 (80 window) by 28 text screen
40 PALETTE 8,63:PALETTE 0,0 ' white text on black background
50 WIDTH80:CLS1
60 ON BRK GOTO 340
70 POKE&HFF98,&H03:POKE&HFF99,&H75: ' Set for 28 rows of text
80 POKE&HFF9F,128: ' Set for 128 columns with column 0 as left most column
90 ' Tell BASIC new screen size
100 POKE&HFE00,&H20:POKE&HFE01,0: ' beginning cursor address
110 POKE&HFE04,128: ' # columns on text screen
120 POKE&HFE05,28: ' # rows on text screen
130 POKE&HFE06,&H3E:POKE&HFE07,&H00: ' End address of text screen
140 ' ***  Patch BASIC's LOCATE command  ***
150 POKE &HF90A,&H58: 'enable new LOCATE positions
160 POKE &HF8EC,128:' Allows LOCATE from column 0 - 127
170 POKE &HF8F4,28: ' Allows LOCATE from row 0 - 27
180 CLS
190 A$="<------    this is columns 80 - 127    ------->x"
200 FORX=0 TO 27:LOCATE 79,X:PRINT"x";:LOCATE 127,X:PRINT"x";
210 LOCATE 0,X: PRINT " Line number ";X;
220 NEXT
230 LOCATE 20,0:PRINTSTRING$(108,"*");
240 LOCATE 20,27:PRINTSTRING$(108,"*");
250 LOCATE 80,13:PRINTA$;
260 LOCATE 20,23:PRINT "Press any key";
270 LOCATE 20,10:PRINT "This shows columns 0 - 79 ";:LOCATE 0,27
280 ON BRK GOTO 310
290 I$=INKEY$:IF I$="" THEN 290
300 ' scrolls columns 80-127 into display window
310 FORX=128 TO 176:POKE &HFF9F,X:FORD=1TO10:NEXTD:NEXTX
320 ON BRK GOTO 340
330 FORX=1TO2900:NEXT:'delay to view
340 WIDTH80:'restore to normal 80 col. by 24 line screen
