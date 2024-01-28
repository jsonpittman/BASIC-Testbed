0 'DISK TABLE
1 'Written by Steve Ricketts
2 'Copyright (C) December 1991
3 'by Falsoft, Inc.
4 'Rainbow Magazine
5 'This program will print out     a reference table which can     be used to easier mess with     disk utilities, saving the
6 'hassle of converting hex to     decimal and decimal to hex.
7 '*****************************
8 '
9 '
10 PRINT#-2,CHR$(27);CHR$(15)
11 'Above is Epson code for         condensed print. Replace        with the code for your          individual printer.
20 PRINT#-2,"Track DEC/HEX Sector DEC/HEX    Gran DEC/HEX"
30 PRINT#-2,STRING$(44,"-"):PRINT#-2,"";
40 FOR T=0 TO 39
50 IF T=17 THEN NEXTT
60 PRINT#-2,"Track ";RIGHT$(STR$(T),2);" / ";:T$="0"+HEX$(T):PRINT#-2,RIGHT$(T$,2);:T$="":PRINT#-2," Sector  1";"/01","Gran ";RIGHT$(STR$(G),2);" / ";:G$="0"+HEX$(G):PRINT#-2,RIGHT$(G$,2):G$="":G=G+1
70 PRINT#-2,"Track ";RIGHT$(STR$(T),2);" / ";:T$="0"+HEX$(T):PRINT#-2,RIGHT$(T$,2);:T$="":PRINT#-2," Sector 10";"/0A","Gran ";RIGHT$(STR$(G),2);" / ";:G$="0"+HEX$(G):PRINT#-2,RIGHT$(G$,2):G$="":G=G+1
80 NEXTT
