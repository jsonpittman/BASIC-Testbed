0 ' COPYRIGHT 1989  FALSOFT,INC
4 DIM CC(9),A1(127),A2(127)
5 FOR I=0 TO 9:READ CC(I):NEXT
6 A1(63)=2:A1(64)=2
10 PMODE 3,1:PCLS:SCREEN 1,0
20 FOR V=0 TO 60
30 FOR H=1 TO 126
35 N=A1(H-1)+A1(H)+A1(H+1)
36 A2(H)=CC(N)
37 NEXT H
40 FOR H=1 TO 126:HH=H+H
45 A1(H)=A2(H)
46 PSET(HH,V,A1(H)+1)
47 NEXT H
50 NEXT V
99 GOTO 99
100 DATA 0,2,3,1,1,2,3,0,0,3
