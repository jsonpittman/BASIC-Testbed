10 N=14
20 DIM F(N),C(N),S$(N)
30 FOR I=1 TO N
40 READ F(I),C(I),S$(I)
50 NEXT I:Z=96:HSCREEN 2
60 FOR X=0 TO 96
70 Y=INT(SQR(9216-X*X)+.5)
80 IF Y=Z OR Y=Z+1 THEN 140
90 HSET(160-X,96-Z)
100 HSET(160+X,96-Z)
110 HSET(160-X,96+Z)
120 HSET(160+X,96+Z)
130 Z=Z-1:GOTO 80
140 HSET(160-X,96-Y)
150 HSET(160+X,96-Y)
160 HSET(160-X,96+Y)
170 HSET(160+X,96+Y)
180 Z=Y-1:NEXT X
190 HLINE(160,0)-(160,96),PSET
200 FOR I=0 TO N
210 B=A
220 A=A+6.28318*F(I)
230 AA=A:R=96:GOSUB 350:S=SGN(X)
240 XX=160+X:YY=96-Y
250 HLINE(160,96)-(XX,YY),PSET
260 AA=A-(A-B)/2:R=48:GOSUB 350
270 HPAINT(160+X,96-Y),C(I),1
280 R=96:GOSUB 350
290 HLINE(160+X,96-Y)-(160+SGN(X)*96,96-Y),PSET
300 X=0:Y=INT((96-Y)/8)
310 IF A<3.1416 THEN X=40-LEN(S$(I))
320 HPRINT(X,Y),S$(I)
330 NEXT I
340 GOTO 340
350 X=INT(R*SIN(AA)+.5)
360 Y=INT(R*COS(AA)+.5)
370 RETURN
380 DATA .07142857143,2,COLOR 2
390 DATA .07142857143,3,COLOR 3
400 DATA .07142857143,4,COLOR 4
410 DATA .07142857143,5,COLOR 5
420 DATA .07142857143,6,COLOR 6
430 DATA .07142857143,7,COLOR 7
440 DATA .07142857143,8,COLOR 8
450 DATA .07142857143,9,COLOR 9
460 DATA .07142857143,10,COLOR 10
470 DATA .07142857143,11,COLOR 11
480 DATA .07142857143,12,COLOR 12
490 DATA .07142857143,13,COLOR 13
500 DATA .07142857143,14,COLOR 14
510 DATA .07142857143,15,COLOR 15
