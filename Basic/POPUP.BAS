0 'COPYRIGHT 1990 FALSOFT, INC.
10 'POP-UP MENUS.BY:DOUGLAS B. LIMING
20 CLS 3 : COUNT=5 : BL=128 + 16 * (3-1) + 15 : DIM ITEM$(12),CHEK$(12,15)
30 PRINT : PRINT :PRINT @ 10,"POP-UP MENU" : PRINT @ 39,"BY: DOUGLAS B. LIMING" : PRINT
40 FOR H=0 TO 63 : SET (H,5,2) : NEXT H
50 FOR Y=1 TO COUNT : READ ITEM$(Y) : NEXT Y
60 DATA ITEM ONE,ITEM TWO,ITEM THREE,ITEM FOUR,ITEM FIVE
70 FOR U=1 TO COUNT : FOR T=U+1 TO COUNT
80 IF LEN(ITEM$(U))>LEN(ITEM$(T)) THEN BIG$=ITEM$(U) ELSE BIG$=ITEM$(T)
90 NEXT T : NEXT U
100 HOP=LEN(BIG$) : BIG=INT(HOP/2) : BEGIN=15-BIG
110 SPCE$=" "
120 FOR D=1 TO HOP : SPCE$=SPCE$+" " : NEXT D
130 START=INT(COUNT/2) : OPS=START*32 : OP=256-OPS : ST=BEGIN+(OP-1)
140 FOR K=1 TO COUNT
150 JAKE=INT((BEGIN+OP)/32) : PRINT @ BEGIN+OP,SPCE$;
160 CHEK$(K,JAKE)=ITEM$(K) : PRINT @ BEGIN+OP,ITEM$(K); : OP=OP+32 : NEXT K
170 HOT=ST 
180 PRINT @ ST,"*";
190 PUSH$=INKEY$ : IF PUSH$<>CHR$(94) AND PUSH$<>CHR$(10) AND PUSH$<>CHR$(13) THEN 190
200 PRINT @ ST,CHR$(BL);
210 IF PUSH$=CHR$(94) THEN IF ST<>HOT THEN ST=ST-32 ELSE ST=HOT+(32*(COUNT-1))
220 IF PUSH$=CHR$(10) THEN IF ST<>HOT+(32*(COUNT-1)) THEN ST=ST+32 ELSE ST=HOT
230 IF PUSH$=CHR$(13) THEN SOUND 190,1 :GOTO 250
240 GOTO 180
250 FOR Y=1 TO COUNT
260 DAW=INT(ST/32)
270 IF CHEK$(Y,DAW)=ITEM$(Y) THEN PIC$=CHEK$(Y,DAW)
280 NEXT Y
290 CLS : PRINT @ 192,"YOU CHOSE ";: PRINT PIC$
300 END
