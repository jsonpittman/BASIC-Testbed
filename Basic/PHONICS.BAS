10 REM"PHONICS WHEELS"
20 REM"STEVE BLYN,COMPUTER ISLAND,STATEN ISLAND,NY,1988"
30 CLS5:R=17:R1=5:R2=17
40 DIM A$(R),B$(R1),C$(R2)
50 FOR X=1 TO 17:READ A$(X):NEXT X
60 FOR Y=1 TO 5:READ B$(Y):NEXT Y
70 FOR Z= 1 TO 17:READ C$(Z):NEXT Z
80 CLS RND(5)+1
90 FOR T=1160 TO 1175:POKE T,255:NEXT T
100 POKE 1207,255:POKE1239,255:POKE 1271,255
110 FOR T=1288 TO 1303:POKE T,255:NEXT T
120 POKE 1256,255:POKE 1224,255:POKE 1192,255
130 EN$=INKEY$
140 IF EN$="3" THEN 150 ELSE IF EN$="4" THEN 150 ELSE 130
150 FOR T= 1 TO 10
160 A=RND(R):B=RND(R1):C=RND(R2)
170 PLAY"O3L50;C"
180 PRINT@204,A$(A);
190 PRINT@206,B$(B);
200 PRINT@208,C$(C);:NEXT T
210 IF EN$="4" THEN PRINT@210,"E";
220 EN$=INKEY$
230 IF EN$="9" THEN END ELSE IF EN$=CHR$(13) THEN 80 ELSE 220
240 DATA B,D,F,G,H,J,K,L,M,N,P,R,S,T,V,W,Z,A,E,I,O,U
250 DATA B,D,F,G,H,J,K,L,M,N,P,R,S,T,V,W,Z
