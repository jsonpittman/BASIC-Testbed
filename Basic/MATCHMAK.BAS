1 'MATCH MAKER
2 'BY KEVIN SPEIGHT
3 'COPYRIGHT (C) 1992
4 'FALSOFT, INC.
5 'RAINBOW MAGAZINE
10 MN=50:MC=20:DIMS$(MN,MC),Q$(MC),Q(MC):GOTO180
20 CLS:INPUT"HOW MANY CRITERIA";C:IF C<1OR C>MC THEN20 ELSE FOR Y=1TO C:PRINT:PRINT"CRITERION #"Y;:LINEINPUTQ$(Y):INPUT"RELATIVE WEIGHT (ENTER=1)";Q(Y):IFQ(Y)=0 THEN Q(Y)=1
30 NEXTY
40 CLS:INPUT"NUMBER OF PEOPLE";N:IFN/2<>INT(N/2)THEN INPUT"PLEASE LEAVE SOMEONE OUT--AN    EVEN NUMBER IS NEEDED <ENTER>";P$:GOTO40 ELSEIFN<1OR N>MN THEN40 ELSEPRINT:ST=1
50 FORX=ST TON:CLS:PRINT"PERSON #"X;"--NAME:";:LINEINPUTS$(X,1):PRINT:PRINT"ENTER DATA:":FORY=1TO C:PRINTQ$(Y);:INPUTXX:S$(X,Y+1)=STR$(XX):NEXTY:PRINT:NEXTX:GOTO180
60 IFN>1 THENCLS:PRINT"OUTPUT TO sCREEN OR pRINTER?" ELSE180
70 I$=INKEY$:IFI$="P" THEN DV=-2 ELSE IF I$="S" THEN DV=0 ELSE 70
80 CLS:PRINT#DV,"PAIRINGS:":PRINT#DV:A=1
90 IF LEFT$(S$(A,1),1)="*" THEN IF A<N THEN A=A+1:GOTO90 ELSE 150 ELSE B=A+1:FL=0:PRINT#DV,S$(A,1);"--";
100 IF B>N  THEN 140 ELSE IF LEFT$(S$(B,1),1)="*" THEN B=B+1:GOTO100
110 FORY=2TO C+1:D=0:D=ABS((VAL(S$(A,Y))*Q(Y-1))-(VAL(S$(B,Y))*Q(Y-1)))+D:NEXT Y
120 IF FL=0 THEN BD=D:CO=B ELSE IF D<BD THEN BD=D:CO=B
130 FL=1:B=B+1:IF B<=N THEN 100
140 PRINT#DV,S$(CO,1):S$(CO,1)="*"+S$(CO,1):A=A+1:IF A<N THEN 90
150 FORX=1TON:IF LEFT$(S$(X,1),1)="*" THEN S$(X,1)=RIGHT$(S$(X,1),LEN(S$(X,1))-1)
160 NEXTX
170 PRINT:INPUT"<ENTER>";P$
180 CLS:PRINT:PRINTSTRING$(32,156);TAB(11);"MATCHMAKER":PRINTSTRING$(32,147);TAB(8);"BY KEVIN SPEIGHT"
190 PRINT:PRINT"CHOOSE:":PRINTTAB(10)"1) LOAD DATA":PRINTTAB(10)"2) SAVE DATA":PRINTTAB(10)"3) ENTER NEW DATA":PRINTTAB(10)"4) ADD TO DATA":PRINTTAB(10)"5) PRODUCE PAIRINGS":PRINTTAB(10)"6) QUIT"
200 I$=INKEY$:IF I$=""THEN200 ELSE I=VAL(I$):IF I<1 OR I>6 THEN 200 ELSE ON I GOTO 210,240,250,270,60,280
210 CLS:PRINT"ARE YOUR SURE YOU WANT TO LOAD  DATA (ANY DATA IN MEMORY WILL BEERASED)? yES OR nO?"
220 I$=INKEY$:IF I$=""THEN220 ELSE IF I$="Y" THEN 230 ELSE 180
230 GOSUB300:OPEN "I",#DN,F$:INPUT#DN,VF:IFVF<>33THENCLOSE#DN:GOTO180 ELSEINPUT#DN,N:INPUT#DN,C:FORX=1 TO N:FOR Y=1 TO C+1:LINE INPUT#DN,S$(X,Y):NEXTY,X:FORY=1TO C:LINE INPUT#DN,Q$(Y):INPUT#DN,Q(Y):NEXTY:CLOSE#DN:GOTO180
240 IFN<1 THEN180 ELSEGOSUB300:OPEN"O",#DN,F$:PRINT#DN,33:PRINT#DN,N:PRINT#DN,C:FORX=1 TO N:FOR Y=1 TO C+1:PRINT#DN,S$(X,Y):NEXTY,X:FORY=1TOC:PRINT#DN,Q$(Y):PRINT#DN,Q(Y):NEXTY:CLOSE#DN:GOTO180
250 CLS:PRINT"ARE YOU SURE YOU WANT TO ENTER  NEW DATA? (ANY OLD DATA IN      MEMORY WILL BE LOST) yES OR nO?"
260 I$=INKEY$:IF I$=""THEN 260 ELSE IF I$="Y" THEN 20 ELSE180
270 IFN>MN-2 OR N=0 THEN180 ELSECLS:INPUT"HOW MANY PEOPLE TO ADD";NN:IFNN/2<>INT(NN/2) THEN INPUT"PLEASE LEAVE SOMEONE OUT. AN    EVEN NUMBER NEEDED <ENTER>";P$:GOTO270 ELSE IFNN<1 OR NN+N>MN THEN 270 ELSEST=N+1:N=N+NN:GOTO50
280 CLS:PRINT"ARE YOU SURE YOU WANT TO QUIT?  (DATA WILL BE LOST) yES OR nO?"
290 I$=INKEY$:IFI$=""THEN 290 ELSE IF I$="Y" THEN END ELSE 180
300 CLS:INPUT"FILENAME";F$:IFLEN(F$)>8 THEN 300 ELSE IF PEEK(&HC000)=68 THEN DN=1 ELSE DN=-1
310 RETURN
