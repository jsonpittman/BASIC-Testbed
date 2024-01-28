10 '**********************
20 '*    VACATION LOG    *
30 '*                    *
40 '*    BY FRED RAU     *
50 '*                    *
60 '**********************
70 CLS3
80 INPUT "NO. OF PAGES";C
90 FOR P=1 TO C
100 CLS3:PRINT@104," V A C A T I O N ";
110 PRINT@141," L O G ";
120 PRINT@168," P R I N T I N G ";
130 PRINT#-2,"":PRINT#-2,""
140 FOR X=1 TO 3
150 K=2:L=K+L
160 PRINT#-2,""
170 PRINT#-2,"DATE :-----------"
180 PRINT#-2,""
190 PRINT#-2,"ENDING MILES--------ENDING MILES--------ENDING MILES--------ENDING MILES--------"
200 PRINT#-2,""
210 PRINT#-2,"MILES START---------MILES START---------MILES START---------MILES START--------"
220 PRINT#-2,""
230 PRINT#-2,"TOTAL MILES---------TOTAL MILES---------TOTAL MILES---------TOTAL MILES--------"
240 PRINT#-2,""
250 PRINT#-2,"GALS.OF GAS---------GALS.OF GAS---------GALS.OF GAS---------GALS.OF GAS---------"
260 PRINT#-2,""
270 PRINT#-2,"M.P.G.---------------M.P.G.---------------M.P.G.---------------M.P.G.----------"
280 PRINT#-2,""
290 PRINT#-2,"MEALS--------------------------------------------------------------------------"
300 PRINT#-2,""
310 PRINT#-2,"CAMPGROUND/MOTEL---------------------------------------------------------------"
320 PRINT#-2,""
330 PRINT#-2,"MISCELLANEOUS------------------------------------------------------------------"
340 PRINT#-2,"................................................................................"
350 NEXT X
360 PRINT#-2,"":PRINT#-2,"":PRINT#-2,"":PRINT#-2,"":PRINT#-2,"":PRINT#-2,"":PRINT#-2,"":PRINT#-2,"":PRINT#-2,""
370 NEXT P
380 PRINT@324,"* * FINISHED PRINTING * *";
390 GOTO 390
