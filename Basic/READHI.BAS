100 ' HIGH-RESOLUTION JOYSTICK INTERFACE FOR REAL-WORLD INPUTS
110 POKE &HFFD9,0
120 CLEAR 200,&H7EFF
130 CLS
140 FOR A=&H7F00 TO &H7F42
150 READ H$: POKE A,VAL("&H"+H$)
160 NEXT A
170 DEF USR0=&H7F00
180 GOSUB 210
190 IF (PEEK(&HFF00)AND1)>0 THEN 180
200 GOTO 180
210 X=USR0(0):Y=USR0(8)
220 IF X=LX AND Y=LY THEN CLS: PRINT @230, X, Y
230 LX=X: LY=Y
240 RETURN
250 DATA BD,B3,ED,E7,8C,3D,B6,FF,01,84,F7,AA,8C,35,B7,FF
260 DATA 01,B6,FF,03,84,F7,B7,FF,03,8D,06,1F,10,BD,B4,F4,39,B6
270 DATA FF,20,84,03,8A,FC,B7,FF,20,5F,5A,26,FD,8E,00,94
280 DATA 84,23,B7,FF,20,30,1F,26,FC,30,01,B6,FF,00,2A,F9
290 DATA 39
