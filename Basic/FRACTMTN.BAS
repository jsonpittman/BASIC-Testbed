0 ' COPYRIGHT 1989 FALSOFT,INC
5 ' FRACTAL MOUNTAIN PROGRAM
6 ' BY ANDRE NEEDHAM
7 ' P.O. BOX 2516
8 ' RENTON, WA  98056
10 DIMX(32,32),Y(32,32):ON BRK GOTO 340
20 INPUT"(C)OMPOSITE OR (R)GB";Q$:PRINT"JUST A MINUTE..."
30 POKE65497,0:I=5:II=32:R=.4
40 X(0,0)=160:Y(0,0)=20:X(II,0)=310:Y(II,0)=140:X(0,II)=10:Y(0,II)=140
50 FORT=I TO1 STEP-1:Q=2^T
60 A=0:B=0
70 AA=A+Q:A2=A+Q/2:X(A2,B)=(X(A,B)+X(AA,B))/2+RND(2*Q+1)-Q-1:Y(A2,B)=(Y(A,B)+Y(AA,B))/2+(RND(2*Q+1)-Q-1)*R  'ACROSS
80 A=A+Q::IF INT(A+B+.01)=II THEN A=0:B=B+Q:IFB>II THEN 100
90 GOTO70
100 A=0:B=0
110 BB=B+Q:B2=B+Q/2:X(A,B2)=(X(A,B)+X(A,BB))/2+RND(2*Q+1)-Q-1:Y(A,B2)=(Y(A,B)+Y(A,BB))/2+(RND(2*Q+1)-Q-1)*R  'DOWN
120 B=B+Q:IF INT(A+B+.01)=II THENB=0:A=A+Q:IFA>II THEN 140
130 GOTO110
140 A=0:B=0
150 AA=A+Q:BB=B+Q:A2=A+Q/2:B2=B+Q/2
160 X(A2,B2)=(X(AA,B)+X(A,BB))/2+RND(2*Q+1)-Q-1:Y(A2,B2)=(Y(AA,B)+Y(A,BB))/2+(RND(2*Q+1)-Q-1)*R  'DIAGONAL
170 A=A+Q:IF INT(A+B+.01)=II THEN A=0:B=B+Q:IFB>II THEN 190
180 GOTO150
190 NEXT
200 HSCREEN2:PALETTE0,0:PALETTE3,63:HCOLOR4,0:IFQ$="R" THENPALETTE2,56 ELSE PALETTE2,32
210 HCLS2
220 FORA=0TO II-1:FORB=0TO II-1:R=X(A,B):S=Y(A,B):HDRAW"BM=R;,=S;":HLINE-(X(A,B+1),Y(A,B+1)),PSET:HLINE-(X(A+1,B),Y(A+1,B)),PSET:HLINE-(X(A,B),Y(A,B)),PSET   'DRAW TRIANGLES
230 IFA+B+1<II THEN R=X(A,B+1):S=Y(A,B+1):HDRAW"BM=R;,=S;":HLINE-(X(A+1,B+1),Y(A+1,B+1)),PSET:HLINE-(X(A+1,B),Y(A+1,B)),PSET
240 XX=(X(A,B+1)+X(A+1,B+1)+X(A+1,B))/3:YY=(Y(A,B+1)+Y(A+1,B+1)+Y(A+1,B))/3 'FIND TRIANGLE MIDPOINT FOR PAINT
250 IF Y(A,B)-RND(55)-55 <0 THEN CX=3 ELSE CX=2  'MAKE TOP OF MOUNTAIN MORE "SNOWY"
260 IF A+B+1<II THEN HPAINT(XX,YY),CX,4
270 IF Y(A,B)-RND(55)-55<0 THEN CC=3 ELSE CC=2
280 XX=(X(A,B)+X(A,B+1)+X(A+1,B))/3:YY=(Y(A,B)+Y(A,B+1)+Y(A+1,B))/3:HPAINT(XX,YY),CC,4   'FIND OTHER TRIANGLE'S MIDPOINT
290 IFA+B+1=II THEN 310
300 NEXTB
310 NEXTA
320 HLINE(0,140)-(10,140),PSET:HLINE(310,140)-(319,140),PSET:HPAINT(0,139),5,4
330 GOTO30
340 HSCREEN0:POKE65496,0
