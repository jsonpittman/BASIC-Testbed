5 '         ECHO
10 ' SENDS SCREEN OUTPUT
20 ' TO PRINTER
30 ' BY JOHN STEWART,  MAY 1986
40 FORX=&H200 TO &H241
50 READ A$
60 POKE X,VAL("&H"+A$)
70 NEXT X
80 DEFUSR0=&H200
90 DEFUSR1=&H219
100 CLS:PRINT"TO SEND OUTPUT TO PRINTER TYPE  A=USR0(0) AND PRESS ENTER":PRINT:PRINT"TO STOP OUTPUT TO PRINTER TYPE  A=USR1(0) AND PRESS ENTER"
110 DATA A6,8D,0,3D,26,12,6C,8D,0,37,BE,1,68,AF,8D,0,2E,30,8D,0,10,BF,1,68,39,AE,8D,0,22,BF,1,68,6F,8D,0,1D,39,34,2,96,6F,26,E,86,FE,97,6F,35,2,34,2,AD,9F,A0,2,F,6F,35,2,6E,9D,0,0,0,0,0
10 'ECHO
20 'WRITTEN BY RICH BARBERIAN
30 'COPYRIGHT (C) NOVEMBER 1991
40 'BY FALSOFT, INC.
50 'RAINBOW MAGAZINE
60 '  ******************
70 DIM J(40)
80 CLS0:G=21
90 S=1:FOR I=1 TO 4:J(I)=I:GOSUB 350:NEXT
100 FOR I=1 TO 21:J(I)=RND(4):NEXT
110 OG=G:G=1:FORH=1 TO OG:FORK=1TO4:SET(H*3,K,3):NEXT:NEXT
120 FOR TM=1 TO 200:NEXT
130 FORP=1 TO 21
140 FOR I=1 TO P:GOSUB 350:NEXT
150 FOR I=1 TO P
160 N$=INKEY$:IF N$="" THEN 160
170 IF N$="O"THEN N=1
180 IF N$=";"THEN N=2
190 IF N$=","THEN N=3
200 IF N$="K"THEN N=4
210 IF J(I)<>N THEN 270
220 GOSUB 350:NEXT
230 FOR K=1TO4:SET(G*3,K,8):NEXT:G=G+1:SOUNDG*3,2
240 FOR TM=1 TO 200:NEXT
250 NEXT P
260 FORI=1 TO 254 STEP10:SOUND I,1:NEXT
270 FORGG=1TO4:GOSUB350:SOUND1,3:NEXT
280 IF P<5 THENPRINT@384,"YOU NEED HELP!!!"
290 IF P>4 ANDP<11 THENPRINT@384,"YOU'RE A NOVICE"
300 IF P>10 ANDP<16THENPRINT@384,"YOU'RE AN EXPERT"
310 IF P>15 THENPRINT@ 384,"CONGRADULATIONS, MASTER!!"
320 PRINT@448,"PLAY AGAIN???  (Y/N)"       
330 D$=INKEY$:IF D$="" THEN 330
340 IF D$="N"THEN END ELSE 80
350 IFJ(I)=1THENX=30:Y=8:C=2:S=50
360 IFJ(I)=2THENX=46:Y=16:C=3:S=60
370 IFJ(I)=3THENX=30:Y=24:C=4:S=70
380 IFJ(I)=4THENX=14:Y=16:C=6:S=80
390 SOUND S,1:Q=0:R=5
400 FORM=1 TO 6:SET(X+Q,Y,C):SET(X+R,Y,C):Y=Y+1:Q=Q+1:R=R-1:NEXT
410 Q=0:R=5:Y=Y-6
420 FORM=1 TO 6:SET(X+Q,Y,5):SET(X+R,Y,5):Y=Y+1:Q=Q+1:R=R-1:NEXT
430 RETURN
