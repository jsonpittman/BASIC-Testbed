0 ' COPYRIGHT 1989  FALSOFT,INC
10 L=2
20 C=2
30 CLS0
40 GOSUB 290
50 L=L+1:IF L>31 THEN L=0
60 E=L-1:IF E=-1 THEN E=31
70 FOR DR=0 TO 5
80 DI=DR
90 IF EL=1 THEN GOSUB 170:GOTO 160
100 SET(DI,L,C)
110 RESET(DI,E)
120 SET(63-DI,31-L,C)
130 RESET(63-DI,31-E)
140 SET(31-DI,31-L,C):RESET(31-DI,31-E)
150 SET(32+DI,L,C):RESET(32+DI,E)
160 NEXT DR
170 IF Y=32 OR Y=-1 THEN PLAY"GC":END ELSERESET(X1,Y1):X1=X:Y1=Y:SET(X,Y,4)
180 IF Y=31 THEN Y=Y+1:GOTO 170
190 IF POINT(X,Y+1)<>0 THEN Y=Y-1:GOTO 170
200 IF Y=30 THEN Y=Y+1:GOTO 170
210 IF POINT(X,Y+2)=0 THEN Y=Y+1:GOTO 170
220 IF JOYSTK(0)>50 THEN X=X+2
230 IF JOYSTK(0)<10 THEN X=X-2
240 P=PEEK(65280):P=P OR 128
250 IF P<>255 THEN Y=Y-1
260 IF X>63 THEN X=63
270 IF X<0 THEN X=0
280 GOTO 50
290 REM SCENE
300 FOR Y=0 TO 31 STEP 6
310 FOR X=0 TO 63
320 SET(X,Y,8)
330 NEXT X,Y
340 X=0:Y=0
350 RETURN
