1 'NUCOLORS
2 'BY RUSTY CUTCHIN
5 '
10 PALETTE1,63:PALETTE2,15:PALETTE3,38:PALETTE0,0
15 HSCREEN4:HCLS4:HCOLOR1
20 C1=1:C2=4:S=1:A=15:B=15:P1=1:P2=10
25 FOR Y=15 TO 110 STEP 95
30 FOR T=1 TO 2
31 S$=STR$(S)
32 HPRINT(P1,P2-10),"Step"+S$
35 FOR X=A TO (A+240) STEP 80
40 HLINE(X,Y)-(X+48,Y+64),PSET,B
45 HCOLOR C1:FORV1=X TO (X+45) STEP S:HLINE(V1+2,Y+1)-(V1+2,Y+63),PSET:NEXTV1
50 HCOLOR C2:FORV2=X TO (X+45) STEP S:HLINE(V2+1,Y+1)-(V2+1,Y+63),PSET:NEXT V2
51 C1$=STR$(C1):C2$=STR$(C2)
52 HCOLOR1:HPRINT(P1,P2),C1$+" /"+C2$
54 P1=P1+10
55 C2=C2+1:IFC2=5THENC2=1
60 NEXTX
65 S=S+1
66 A=A+320:C1=C1+1:NEXT T
70 S=2:A=15:P1=1:P2=22:NEXTY
75 GOTO 75
