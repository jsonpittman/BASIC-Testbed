10 CLEAR200,&H6000
20 IF PEEK(&H60AD)<>204 THEN LOADM"ROOTS":POKE&HFF40,0
30 CLS:PRINT" SIZE OF DISPLAY -"," <S>mall",,"  <M>edium",,"   <L>arge"
40 A$=INKEY$:IF A$="" THEN 40
50 IF A$="S" THEN SX=64:SY=64
60 IF A$="M" THEN SX=128:SY=128
70 IF A$="L" THEN SX=256:SY=192
80 READ N:POKE&H6000,N:'DEGREE OF EQUATION
90 READ C5:A=C5:LO=&H6067:GOSUB320
100 READ C4:A=C4:LO=&H606C:GOSUB320
110 READ C3:A=C3:LO=&H6071:GOSUB320
120 READ C2:A=C2:LO=&H6076:GOSUB320
130 READ C1:A=C1:LO=&H607B:GOSUB320
140 READ C0:A=C0:LO=&H6080:GOSUB320
150 READ XC:A=XC:LO=&H600E:GOSUB320:READ XD
160 READ YC:A=YC:LO=&H6018:GOSUB320:READ YD
170 XS=XD/SX:A=XS:LO=&H6013:GOSUB 320:IF A$="L" THEN SX=SX-1
180 YS=YD/SY:A=YS:LO=&H601D:GOSUB 320:IF A$="L" THEN SY=SY-1
190 POKE&H6022,0:POKE&H6023,SX
200 POKE&H6024,0:POKE&H6025,SY
210 PMODE4,1:COLOR0,5:PCLS:SCREEN1,1:POKE&HB5,0
220 'YOUR FAST POKE
230 EXEC &H60AD:'SLOW POKE
240 GOTO 240
250 DATA 3,0,0,4,0,-3,0,-1,2,-1,2
260 'DATA 3,0,0,1,0,0,-1,-1,2,-1,2
270 'DATA 4,0,5,4,3,2,1,-1,2,-1,2
280 'DATA 4,0,5,4,3,2,1,-.7,.5,-2,1
290 'DATA 4,0,8,0,-8,0,1,-1,2,-1,2
300 'DATA 5,1,0,0,0,0,1,-2,4,-2,4
310 'DATA 5,16,0,-20,0,5,0,-1,2,-1,2
320 Z$=MKN$(A)
330 FOR N=1 TO 5:POKE LO+N-1,ASC(MID$(Z$,N,1)):NEXT:RETURN
