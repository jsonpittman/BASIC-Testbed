1 'THE ASSEMBLY LINE
2 'WRITTEN BY WILLIAM NEE
3 'COPYRIGHT (C) APRIL 1991
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 CLEAR 200,&H5000-1
20 X=RND(-TIMER)
30 POKE &HC1,8:POKE&H500F,RND(3)
40 IF PEEK(&H5027)<>142 THEN LOADM"PREDATOR":POKE&HFF40,0
50 FOR N=0 TO 7:READ X:POKE &H5000+N,X:NEXT
60 PMODE1,1:PCLS
70 PMODE1,3:PCLS
80 CLS:PRINT@103,"LOADING  DATA"
90 PRINT@167,"ANIMAL1 -";PEEK(&H5000);:PRINT@203,"AGE -";PEEK(&H5001)
100 PRINT@263,"ANIMAL2 -";PEEK(&H5002):PRINT@299,"AGE -";PEEK(&H5003):PRINT@331,"EAT -";PEEK(&H5003)
110 PRINT@391,"ANIMAL3 -";PEEK(&H5005):PRINT@427,"AGE -";PEEK(&H5006):PRINT@459,"EAT -";PEEK(&H5007)
120 EXEC &H5027
130 DATA 2,3,80,10,9,0,14,3
