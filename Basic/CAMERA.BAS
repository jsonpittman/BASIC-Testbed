1 'CAMERA -- PHOTO DATABASE
2 'BY DAVID POLONSKY
3 'COPYRIGHT (C) DECEMBER 1991
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
6 '*****************************
10 CLS:PRINT:PRINT
20 PRINT"STORE DATA, RETRIEVE DATA OR":PRINT"QUIT PROGRAM?":PRINT:INPUT "S, R  OR Q ==> ";A$
30 IF A$="S" THEN 100 ELSE IF A$="R" THEN 200 ELSE IF A$="Q" THEN END ELSE GOTO 10
99 END
100 REM store data
110 GOSUB 300:GOTO 120
120 ST=1
130 PRINT
140 PRINT "photo #"ST
150 PRINT:LINE INPUT"DATE (MM/DD/YY):";DD$:LINE INPUT"PLACE:";PP$:LINE INPUT"LENS:";LL$:LINE INPUT"CAMERA:";CC$:LINE INPUT"EXPOSURE:";EE$
160 LSET D$=DD$:LSET P$=PP$:LSET L$=LL$:LSET C$=CC$:LSET E$=EE$
170 PUT #1,ST:ST=ST+1:IF ST<=36 THEN 130 ELSE CLOSE #1:GOTO10
200 REM retrieve data
210 CLS:GOSUB 300
220 PRINT:INPUT"PHOTO #";ST
225 IF ST=-1 THEN CLOSE #1:GOTO10
230 GET #1,ST:PRINT:PRINT"DATE:";D$:PRINT"PLACE:";P$:PRINT"LENS:";L$:PRINT"CAMERA:";C$:PRINT"EXPOSURE:";E$
240 PRINT:GOTO220
300 CLS:OPEN"D",#1,"PHOTO/DAT",58:FIELD #1,8 AS D$,20 AS P$,10 AS L$,10 AS C$,10 AS E$:RETURN
