1 'PRINT AT
2 'BY JOHN MUSUMECI
3 'COPYEIGHT (C) 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 CLS:PRINT@107,"**PRINT@**"
20 FORX=1TO1000:NEXTX
30 PRINT@270,"BY":FORX=1TO600:NEXTX
40 PRINT@329,"JOHN MUSUMECI":FORX=1TO2000:NEXTX
50 CLS:C=0:R=0:AT=0
60 SOUND225,1:PRINT"ENTER PHRASE (17 CHAR. MAX.)"
70 INPUTA$:L=LEN(A$)
80 CLS:PRINT@AT,A$
90 IFL>17THENPRINT:PRINT"PHRASE T-O-O L-AR-GE":SOUND75,10:FORX=1TO600:NEXTX:GOTO50
100 FORX=1TO600:NEXTX:PRINT@106,"USE ARROWS":SOUND225,1
110 B$=INKEY$:IF B$=""THEN110
120 IF ASC(B$)=9 THEN C=C+1:B=C+L:IF B>31 THEN C=32-L
130 IF ASC(B$)=8 THEN C=C-1:IF C<0 THEN C=0
140 IF ASC(B$)=94 THEN R=R-1:IF R<0 THEN R=0
150 IF ASC(B$)=10 THEN R=R+1:IF R>13 THEN R=13
160 CLS
170 AT=32*R+C:PRINT@AT,A$
180 PRINT@481,"PRINT@";AT;
190 GOTO110
