10 REM **       LABELS       **
20 REM **         BY         **
30 REM **  ANA M. RODRIGUEZ  **
40 CLS:PRINTTAB(13);"LABELS"
50 PRINT"ENTER NAME":INPUT N$
60 PRINT"ENTER NUMBER & STREET":INPUT S$
70 PRINT"ENTER CITY, STATE & ZIP CODE":INPUT C$
80 CLS:PRINT "REMEMBER: TURN ON YOUR PRINTER"
90 INPUT "HOW MANY LABELS";L
100 REM PRINT LABELS
110 FOR A=1TOL
115 PRINT#-2,CHR$(27);CHR$(19)
120 PRINT#-2,TAB(3);N$:PRINT#-2,TAB(3);S$:PRINT#-2,TAB(3);C$
130 PRINT#-2:PRINT#-2
140 NEXT A
150 CLS:INPUT"DO YOU WANT TO PRINT NEW LABELS (Y-N)";A$
160 IF A$="Y" THEN 40
170 END
