0 'COPYRIGHT 1990 FALSOFT, INC.
10 ' WORMY                           DAN TANDBERG, M.D.              ALBUQUERQUE, NEW MEXICO
20 GOTO250
30 'MAIN LOOP
40 X=PEEK(A(H)):IF X<>C THEN100
50 POKEA(H-U),Q:POKEA(H),P:IFG<U THENPOKEA(H-L),C ELSEG=G-U:L=L+U:PRINT@26,L;
60 PLAYS$(K):IFH=M THENGOSUB170
70 K$=INKEY$:IFK$>"D"ANDK$<"I"THENK=ASC(K$)-68
80 A(H+U)=A(H)+D(K):H=H+U:GOTO40
90 'EATS FOOD
100 IFX<>R THEN150ELSEPLAYS$(7)
110 F=1088+RND(414):IFPEEK(F)<>C THEN110
120 V=3+INT(L/14):O=5-INT(L/50):IFO<U THENO=U
130 G=G+RND(16):POKEF,R:GOTO50
140 'HIT WALL OR TAIL?
150 IFX=B THENPLAYS$(5):PRINT@106,"hit the wall!";:GOTO190ELSEPLAYS$(6):PRINT@106,"hit yourself!";:GOTO190
160 'RELOCATE ADDRESSES
170 FORI=1TOL:A(I)=A(H-L+I):NEXTI:H=I-U:RETURN
180 'REPLAY
190 IFL>Z THENZ=L
200 PRINT@426,"another game?";:GOSUB220:IFK$="N"THENSTOPELSE330
210 'PAUSE
220 K$=INKEY$:IFK$<>""THEN220
230 K$=INKEY$:IFK$=""THEN230ELSERETURN
240 'INSTRUCTIONS
250 CLS:PRINT"INSTRUCTIONS:",,,,"USE THE E,F,G&H KEYS TO MOVE THEWORM AROUND THE SCREEN.  EAT THEFOOD TO GROW LONGER.  IF YOU HITYOURSELF OR THE EDGE OF THE     SCREEN YOU'LL DIE.  HOW LONG CANYOU GROW?"
260 'INITIALIZE
270 M=999:DIMA(M),D(4),S$(7):FORI=1TO4:READD(I):NEXTI:FORI=1TO7:READS$(I):NEXTI:Z=0
280 P=98:'HEAD
290 Q=79:'TAIL
300 R=103:'FOOD
310 PRINT@416,"CHOOSE DEGREE OF DIFFICULTY     (1 IS HARD  7 IS EASY)":GOSUB220:D=VAL(K$):IFD<1ORD>7THEN310ELSE:T=INT(128/D-10):L$=K$
320 'RESTART
330 CLS0:B=PEEK(1024):'EDGES
340 C=143:'FOREGROUND
350 PRINT@1,"     ";:PRINT@1,Z;:PRINT@14,"wormy";:PRINT@26,"     ";
360 FORI=64TO448STEP32:PRINT@I,CHR$(B);STRING$(30,C);CHR$(B);:NEXTI:PRINTL$;
370 A(0)=1056+32*RND(13)+RND(16):POKEA(0),Q:A(1)=A(0)+1:POKEA(1),Q:A(2)=A(1)+1:POKEA(2),P:L=2:H=2:K=4:U=1:GOTO110
380 DATA-32,32,-1,1
390 'SOUNDS
400 DATA T=T;O=O;V=V;6;5
410 DATA T=T;O=O;V=V;5;4
420 DATA T=T;O=O;V=V;8;7
430 DATA T=T;O=O;V=V;9;8
440 DATA T80;O1;V31;9;2;5;8;2;5;3;7;1;7;4;1
450 DATA T40;O1;V31;1;2;1;2;1;2;1;2;O5;P2;2
460 DATA T80;O5;V9;8;9;8
470 END
