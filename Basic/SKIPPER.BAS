1 'SPEED GET/PUT SKIPPER
2 'BY KEIRAN KENNY
3 'COPYRIGHT (C) 1993
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 CLS
20 DIMA(409),B(409),C(409),D(409),E(409),F(409),G(409),H(409),I(409),J(409)
30 IFPEEK(33021)=50 THENSP=65497:SL=65496ELSESP=65495:SL=65494
40 POKESP,0
50 GOTO 80
60 FORDL=1TO10:NEXT:RETURN
70 PUT(X1,Y1)-(X2,Y2),B:RETURN
80 PRINT@224,"ONE MOMENT PLEASE...."
90 PMODE4,1:COLOR0,5:PCLS
100 GET(0,0)-(127,127),A
110 X1=64:Y1=32:X2=191:Y2=159
120 LINE(62,30)-(193,161),PSET,B
130 DRAW"BM128,150L6U35R12D35L6U35NL15R15M-6,-25BM113,115M+6,-25M-6,-17M95,99U6M113,67E2R5E2U2"
140 DRAW"BM+11,+0D2F2R5F2M162,94D6M141,73M137,90"
150 CIRCLE(128,52),8,,1.4:PSET(125,51):PSET(131,51):LINE(128,52)-(128,55),PSET:DRAW"BM128,57NL2NR2"
160 DRAW"BM120,65M128,70M135,65BM114,75M118,65BR20M141,75BM121,49R3E2R2NU6RF2R3":PAINT(126,45),0,0:PAINT(130,45),0,0
170 GET(X1,Y1)-(X2,Y2),B
180 CIRCLE(128,96),34,,1.9,.5,1
190 GET(X1,Y1)-(X2-Y2),C
200 GOSUB70
210 CIRCLE(128,96),34,,1.5,.5,1
220 GET(X1,Y1)-(X2,Y2),D
230 GOSUB70
240 CIRCLE(128,96),34,,1.1,.5,1
250 GET(X1,Y1)-(X2,Y2),E
260 GOSUB70
270 CIRCLE(128,96),34,,.5,.5,1
280 GET(X1,Y1)-(X2,Y2),F
290 GOSUB70
300 CIRCLE(128,96),34,,.5,0,.5
310 GET(X1,Y1)-(X2,Y2),G
320 GOSUB70
330 CIRCLE(128,96),34,,1.1,0,.5
340 GET(X1,Y1)-(X2,Y2),H
350 GOSUB70
360 CIRCLE(128,96),34,1.5,0,.5
370 GET(X1,Y1)-(X2,Y2),I
380 GOSUB70
390 CIRCLE(128,96),34,1.9,0,.5
400 GET(X1,Y1)-(X2,Y2),J
900 PCLS:SCREEN1,1
1000 PUT(X1,Y1)-(X2,Y2),C:GOSUB60
1010 PUT(X1,Y1)-(X2,Y2),D:GOSUB60
1020 PUT(X1,Y1)-(X2,Y2),E:GOSUB60
1030 PUT(X1,Y1)-(X2,Y2),F:GOSUB60
1040 PUT(X1,Y1)-(X2,Y2),G:GOSUB60
1050 PUT(X1,Y1)-(X2,Y2),H:GOSUB60
1060 PUT(X1,Y1)-(X2,Y2),I:GOSUB60
1070 PUT(X1,Y1)-(X2,Y2),A:PUT(X1,Y1-16)-(X2,Y2-16),J:GOSUB60:PUT(X1,Y1-16)-(X2,Y2-16),A
1080 IFPEK(135)=12THEN1100
1090 GOTO1000
1100 POKESL,0:CLS:END
