1 'COMPRESSED HSCREEN LOADER
2 'BY JOEL HEGBERG
3 'COPYRIGHT (C) 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 '
20 'COMPRESSED HSCREEN LOADER
30 'BY JOEL MATHEW HEGBERG
40 '936 NORTH TWELFTH STREET
50 'DE KALB, IL 60115
60 '
80 CLEAR1000,31000
90 RESTORE:LC=31000
100 LL=0:TL=0:LN=1000:LK=LC
110 READ A$:IFA$="**"THEN 160
120 IF LEN(A$)<=2 THEN V=VAL("&H"+A$):POKE LC,V:LL=LL+V:LC=LC+1:GOTO 110
130 V=VAL(A$):IF V=LL THEN TL=TL+LL:LL=0:LN=LN+10:GOTO110
140 PRINT"ERROR WITH DATA IN":PRINT"LINE #";LN
150 STOP
160 READ A$:V=VAL(A$):TL=TL+LL
170 IF TL=V THEN 200
180 PRINT"ERROR IN DATA STATEMENTS."
190 STOP
200 CLS:PRINT"ENTER NAME OF PICTURE."
210 LINE INPUT">";NM$:NM$=NM$+".CPS"
220 OPEN"I",#1,NM$:NM$=NM$+".CPS"
230 HSCREEN PEEK(LK)
240 EXEC LK+23
250 CLOSE #1:SOUND 200,3
260 GOTO 260
1000 DATA 2,0,6F,8D,0,AC,8E,40,0,AF,8D,0,A6,1A,50,C6,1,D7,6F,17,1768
1010 DATA 0,8D,39,17,0,6A,BD,A1,76,81,0,10,27,0,59,A7,8D,0,8E,1518
1020 DATA A6,8D,0,87,8B,70,B7,FF,A2,BD,A1,76,E6,8D,0,7E,AE,8D,2573
1030 DATA 0,78,A7,80,5A,C1,0,10,22,FF,F7,AF,8D,0,6B,8C,60,0,10,1925
1040 DATA 25,FF,CB,A6,8D,0,5F,8B,1,A7,8D,0,59,81,3,10,22,0,1D,1645
1050 DATA 8E,40,0,AF,8D,0,4D,A6,8C,97,81,1,10,27,0,3,16,FF,A8,1689
1060 DATA A6,8D,0,3C,81,1,10,23,FF,9E,86,7A,B7,FF,A2,1C,AF,39,2077
1070 DATA 8E,FF,B0,C6,10,34,14,BD,A1,76,35,14,A7,80,5A,C1,0,10,1994
1080 DATA 22,FF,F0,BD,A1,76,BD,A1,76,BD,A1,76,39,BD,A1,76,A7,8D,2766
1090 DATA FF,56,BD,A1,76,A7,8D,FF,50,39,**,19464
