10 PMODE 3,1:PCLS:SCREEN 1,1
20 FOR X=0 TO 30:XX=X+X
30 FOR Y=0 TO 30
40 C=(X*X+Y*Y) AND 3
50 PSET(XX,Y,C):NEXT Y,X
60 GOTO 60
