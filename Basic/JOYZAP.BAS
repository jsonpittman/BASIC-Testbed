10 CLS:PRINT@172,"JOYZAP":PRINT@480,"COPYRIGHT 1987 JKL JAMES K LOWRY":FOR Z=1 TO 1500:NEXTZ
40 POKE 65495,0
50 CLS(0)
60 S=0:SC=0
70 PRINT@480,"HITS="S"  SCORE="SC;
80 FOR B=0 TO 63:SET(B,0,3):NEXT
90 FOR C=0 TO 27:SET(0,C,3):NEXT
100 TIMER=0
110 Z=RND(20):IF Z=10 THEN SET(RND(50)+7,RND(12)+7,RND(3)+5)
120 X=JOYSTK(0):Y=JOYSTK(1)
130 IF X<2 THENX=2
140 IF Y<2 THEN Y=2
150 IF Y>27 THEN Y=27
160 SET (X,2,5):SET(2,Y,5)
170 RESET(X,2):RESET(2,Y)
180 IF TIMER>7000 THEN GOTO 280
190 IF BUTTON(0)=1 THEN GOTO 200 ELSE GOTO 110
200 H=POINT(X,Y):IF H=6 THEN GOTO 230 ELSE IF H=7 THEN GOTO 240 ELSE IF H=8 THEN GOTO 250 ELSE IF H=1 THEN GOTO 260
210 SET(X,Y,1):SOUND 40,5::RESET (X,Y)
220 GOTO 110
230 GOSUB 270:S=S+1:SC=SC+5:RESET(X,Y):PRINT@480,"HITS="S" SCORE="SC;:GOTO 110
240 GOSUB 270:S=S+1:SC=SC+10:RESET(X,Y):PRINT@480,"HITS="S" SCORE="SC;:GOTO 110
250 GOSUB 270:S=S+1:SC=SC+20:RESET(X,Y):PRINT@480,"HITS="S" SCORE="SC;:GOTO 110
260 GOSUB 270:S=S+1:SC=SC+1:RESET(X,Y):PRINT@480,"HITS="S" SCORE="SC;:GOTO 110
270 SOUND200,2:SOUND185,4:RETURN
280 POKE65494,0
290 PRINT"AVERAGE="INT(SC/S):END
