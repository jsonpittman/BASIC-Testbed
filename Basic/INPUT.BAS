20 'INPUT.BAS COPYRIGHT 1987 BY RICHARD STEINBRUECK, ALL RIGHTS RESERVED this routine is to be substitued for lines 21-29 in RNDROBIN.BAS
21 DA=1:YN$="IS THIS CORRECT <Y/N>":CLS:INPUT"HOW MANY TEAMS IN THE TOURNAMENT(5-12)";T:IF(T<5 OR T>12)THENCLS:GOTO21
22 DIMN$(T),TS$(T),T$(T),A$(T):CLS:PRINT"ENTER YOUR SECOND TEAM, CONTINUE WITH YOUR LIST, ENTERING  THE FIRST TEAM LAST.":PRINT:PRINT"MAX LENGTH OF NAME IS 19 CHAR":FORX=1TOT:PRINT"NAME OF TEAM";X;:INPUTN$(X):NEXTX:PRINTYN$;:INPUTQ$:IFQ$="N"THEN22
23 CLS:PRINT"WHAT IS THE NAME OF YOUR TOURNA-MENT (MAX. 40 CHARACTERS)":INPUTTP$:PRINTYN$;:INPUTQ$:IFQ$="N"THEN23ELSEIFLEN(TP$)>40THENPRINT"TOO LONG-TRY AGAIN":FORX=1TO1000:NEXTX:GOTO23
24 CLS:PRINT"WHAT IS THE DATE OF THE TOURNA- MENT (IE. MAY 10, 1987)":INPUTD$,Y$:PRINTYN$;:INPUTQ$:IFQ$="N"THEN24ELSEDT$=D$+", "+Y$
25 CLS:INPUT"WHAT TIME DOES THE TOURNAMENT   START (HH,MM) NOTE COMMA BETWEENHOUR AND MINUTES";H,M:PRINTYN$;:INPUTQ$:IFQ$="N"THEN25ELSEIF(H<1 OR H>12 OR M<0 OR M>59)THEN PRINT"TRY AGAIN":FORX=1TO1000:NEXTX:GOTO25
26 CLS:INPUT"HOW MANY MINUTES LONG IS EACH   ROUND";L:INPUT"HOW LONG IS EACH BREAK BETWEEN  EACH ROUND";B:PRINTYN$;:INPUTQ$:IFQ$="N"THEN26
27 CLS:PRINT"this is the information you haveentered":PRINT"THERE ARE";T;"TEAMS IN ";TP$;" ON ";DT$;" STARTING AT ";M;"MINUTES AFTER";H;".  EACH ROUND IS";L;"MINUTES LONG WITH A";B;"MINUTE BREAK BETWEEN EACH ROUND.":PRINTYN$:INPUTQ$:IFQ$="N"THEN21
28 PRINT"THE TEAMS ARE:":FOR X=1 TO T:PRINTN$(X):NEXT X:PRINTYN$;:INPUTQ$:IFQ$="N"THEN21
29 '
