0 CLEAR999:PCLEAR1:F=65497:POKEF,O:Z=15:FORY=0TOZ:READA:PALETTEY,A:NEXT:CLS1:E=599:DIMA(Z),B(Z),C(E),D(8),E(E),F(E),R(E),S(E),X(E),Y(E):G=30:FORP=0TOE:X(P)=(P-INT(P/G)*G)*9:Y(P)=INT(P/G)*9:R(P)=X(P)+8:S(P)=Y(P)+8:NEXT:FORN=1TO8:READA$(N),D(N):NEXT
1 W=1:HBUFFW,39:T=65312:V=-1:U=252:H=74:I=2:J=7:L=3:Q=12:R=8:S=65496  ' COPYRIGHT 1989  FALSOFT,INCORPORATED
2 POKEF,O:HCOLORR,O:HSCREEN2:FORA=0TOJ:HDRAW"BM296,"+STR$(A*Q)+A$(A+W):NEXT:FORP=0TOZ:HCOLORP:HLINE(308,P*Q)-(319,P*Q+11),PSET,BF:NEXT:IFK=0THENK=W:GOTO4
3 FORX=0TOE:HCOLORC(X):HLINE(X(X),Y(X))-(R(X),S(X)),PSET,B:A$="C8BM"+STR$(X(X))+","+STR$(Y(X)):HDRAWA$+A$(E(X)):HDRAWA$+A$(F(X)):NEXT
4 CLOSE#W:POKEF,O:HLINE(R,184)-(263,191),PRESET,BF:HCOLORR:HPRINT(1,23),"Electro-Dominoes  by Jeff Steidl"
5 A=INT(JOYSTK(O)/I):B=JOYSTK(W)/63:IFA<G THENM=O:B=INT(B*19):X=A+B*G:A=A*9:B=B*9ELSEB=INT(B*Z)*Q:IFA>G THENM=I:A=308ELSEA=296:M=W:IFB>84THENB=84
6 HGET(A,B)-(A+J,B+J),W:HCOLORRND(Z):HDRAW"BM"+STR$(A)+","+STR$(B)+"BD4BR1R6L3U3D6":A$=INKEY$:IFA$="H"THEN15ELSEHPUT(A,B)-(A+J,B+J),W:IFA$="S"THEN10ELSEIFA$="L"THEN11
7 IFBUTTON(O)THENIFM=2THENC=B/Q:M1=O:GOTO9ELSEIFM THEND=B/Q+W:M1=W:GOTO9ELSEIFM1=0THENHCOLORC:HLINE(A,B)-(R(X),S(X)),PSET,B:C(X)=C:GOTO5ELSEIFD=E(X)THENE(X)=F(X):F(X)=0ELSEIFD=F(X)THENF(X)=0ELSEIFE(X)=0THENE(X)=D ELSEF(X)=D ELSE5
8 HLINE(A+W,B+W)-(A+J,B+J),PRESET,BF:A$="C8BM"+STR$(A)+","+STR$(B):HDRAWA$+A$(E(X)):HDRAWA$+A$(F(X)):SOUND200,W
9 IFBUTTON(O)THEN9ELSE5
10 N$=" Save:":GOSUB12:POKES,O:OPEN"O",#W,N$:FORY=0TO525STEP75:POKEF,O:A$="":FORX=Y TOY+H:A$=A$+CHR$(E(X)+H)+CHR$(F(X)+H)+CHR$(C(X)+H):NEXT:POKES,O:WRITE#W,A$:NEXT:GOTO4
11 N$=" Load:":GOSUB12:POKES,O:OPEN"I",#W,N$:FORY=0TO525STEP75:INPUT#W,A$:POKEF,O:N=W:FORX=Y TOY+H:E(X)=ASC(MID$(A$,N,W))-H:F(X)=ASC(MID$(A$,N+W,W))-H:C(X)=ASC(MID$(A$,N+I,W))-H:N=N+L:NEXT:POKES,O:NEXT:GOTO2
12 HCOLORO:HLINE(R,184)-(263,191),PSET,BF:HCOLORR:A=18:HPRINT(Q,23),N$:N$=""
13 A$=INKEY$:IFA$=CHR$(13)THENRETURNELSEIFA$=CHR$(R)ANDA>18THENHCOLORO:N$=LEFT$(N$,A-19):A=A+V:HLINE(A*R,184)-(A*R+J,191),PSET,BF:ELSEIFA<G ANDA$>""THENHCOLORR:HPRINT(A,23),A$:N$=N$+A$:A=A+W
14 GOTO13
15 N$="Color:":GOSUB12:HSCREENI:HCOLORVAL(N$):FORY=0TOE:IFE(Y)ORC(Y)THENHLINE(X(Y),Y(Y))-(R(Y),S(Y)),PSET,B
16 NEXT:N=O:A(O)=X:SOUND200,W:POKET+L,63
17 IFINKEY$<>"^"THEN17
18 P=V:FORA=O TON:Y=A(A):HCOLORC(Y):HLINE(X(Y),Y(Y))-(R(Y),S(Y)),PSET,BF:IFE(Y)THENP=P+W:B(P)=Y+D(E(Y)):IFF(Y)THENP=P+W:B(P)=Y+D(F(Y))
19 NEXT:POKET,U:IFP=V THEN22
20 N=V:FORA=O TOP:Y=B(A):HCOLORC(Y):HLINE(X(Y),Y(Y))-(R(Y),S(Y)),PSET,BF:IFE(Y)THENN=N+W:A(N)=Y+D(E(Y)):IFF(Y)THENN=N+W:A(N)=Y+D(F(Y))
21 NEXT:POKET,O:IFN>V THEN18
22 A$=INKEY$:IFA$="H"THEN15ELSEIFA$="R"THEN2ELSE22
23 DATA,1,7,9,10,12,14,16,32,21,28,31,52,54,58,63,BD7BR4U6NF2G2,-30,BD7BR1E6NL2D2,-29,BD4BR1R6NH2G2,1,BR1BD1F6NU2L2,31,BR4BD1D6NE2H2,30,BR7BD1G6NU2R2,29,BR7BD4L6NE2F2,-1,BR7BD7H6NR2D2,-31
