10 CLEAR200,&H3000-1
20 'SAMPLE GRAPHICS PROGRAM
30 PMODE 4,1:PCLS5:SCREEN1,1
40 FOR X=0 TO 254 STEP 2
50 LINE(X,0)-(255-X,191),PRESET
60 NEXT
70 FOR Y=190 TO 0 STEP -2
80 LINE(0,Y)-(255,191-Y),PRESET
90 NEXT
100 DRAW"C5BM80,60M+6,+10E5F5M+6,-10BR6D5ND5R18NU5D5BR6E10F6NL12F4BR16U10NL10R10"
110 DRAW"BM120,100E10F6NL12F4"
120 DRAW"BM80,130U10R18F2D6G2NL18BR8BU2NU8F2R14E2U8BD10BR6M+6,-10F5E5M+6,+10BR6U10R18F2D3G2L18"
130 'THE DUMP PROGRAM
140 'EXEC &H3000 OR -
150 PRINT#-2,CHR$(18)
160 FOR V=0 TO 182 STEP 7
170 PRINT#-2,CHR$(27);CHR$(16);CHR$(0);CHR$(50);
180 FOR H=0 TO 255:P=0
190 FOR N=0 TO 6
200 IF PPOINT(H,V+N)<>0 THEN P=P+2^N
210 NEXT N
220 PRINT#-2,CHR$(P+128);:NEXT H
230 PRINT#-2:NEXT V
240 PRINT#-2,CHR$(30)
