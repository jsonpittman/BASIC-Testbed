10 REM  ************
20 REM  *  LEASTQ  *
30 REM  ************
40 DIM A(3,4),X(100),Y(100),Z(3)
50 N=2 : N1=N+1 : N2=N1+1
60 INPUT"NUMBER OF DATA POINTS ";M : FOR K=1 TO M : PRINT K;TAB(5);
70 INPUT X(K),Y(K) : X(K)=X(K)/100 : NEXT K
80 A(1,1)=M : FOR J=2 TO N1 : A(1,J)=0 : L=J-1
90 FOR K=1 TO M : A(1,J)=A(1,J)+X(K)^L : NEXT K : NEXT J
100 FOR I=2 TO N1 : FOR J=1 TO N1 : A(I,J)=0 : L=I+J-2
110 FOR K=1 TO M : A(I,J)=A(I,J)+X(K)^L : NEXT K : NEXT J : NEXT I
120 A(1,N2)=0 : FOR I=1 TO M : A(1,N2)=A(1,N2)+Y(I) : NEXT I
130 FOR K=2 TO N1 : A(K,N2)=0 : L=K-1
140 FOR I=1 TO M : A(K,N2)=A(K,N2)+X(I)^L*Y(I) : NEXT I : NEXT K
150 FOR L=1 TO N1 : IF A(L,L)<>0 THEN 200
160 IF L>=N1 THEN 190
170 H=L+1 : FOR I=H TO N1 : FOR J=1 TO N2
180 A(L,J)=A(L,J)+A(I,J) : NEXT J : NEXT I : IF A(L,L)<>0 THEN 200
190 PRINT"NO SOLUTION POSSIBLE." : STOP
200 FOR I=1 TO N1 : IF A(I,L)=0 THEN 230
210 D=A(I,L)
220 FOR J=1 TO N2 : A(I,J)=A(I,J)/D : NEXT J
230 NEXT I
240 FOR I=1 TO N1 : IF I=L OR A(I,L)=0 THEN 260
250 FOR J=1 TO N2 : A(I,J)=A(L,J)-A(I,J) : NEXT J
260 NEXT I : NEXT L
270 FOR I=1 TO N1 : Z(I)=A(I,N2)/A(I,I) : NEXT I
280 PRINT : PRINT "COEFFICIENTS"
290 PRINT "A = ";Z(3)
300 PRINT "B = ";Z(2)
310 END
