10 ' APPLEPIE  04/02/85
20 REM: ONE-CRUST APPLE PIE
30 L1$ = "DOROTHY ALLEN"
40 L2$ = "P.O. BOX 531"
50 L3$ = "BREWSTER, WA. 98812"
60 L4$ = "PHONE: 689-2831"
70 GOSUB 440
80 PRINT #-2,TAB(16);"APPLE  PIE"
90 PRINT#-2:PRINT#-2
100 PRINT#-2,TAB(14);"ONE  CRUST  PIE"
110 PRINT#-2:PRINT#-2
120 PRINT#-2,"     PASTRY     FILLING    TOPPING   "
130 GOSUB 480
140 PRINT#-2:PRINT#-2
150 PRINT#-2,TAB(9);"MIX AND ADD";TAB(32);"MIX TOGETHER";
160 PRINT#-2,TAB(55);"BAKE AT 375"
170 PRINT#-2,TAB(9);"TOGETHER ";TAB(32);"AND TOSS WITH";
180 PRINT#-2,TAB(55);"1 HOUR"
190 PRINT#-2,TAB(36);"APPLES"
200 PRINT#-2:PRINT#-2
210 PRINT#-2,TAB(9);"1 CUP FLOUR";TAB(32);"1/2 CUP SUGAR";
220 PRINT#-2,TAB(55);"1/2 CUP SUGAR"
230 PRINT#-2,TAB(9);"1 CUBE MARGARINE";TAB(32);"2  TBSP FLOUR";
240 PRINT#-2,TAB(55);"1/2 CUP FLOUR"
250 PRINT#-2,TAB(9);"1/4 CUP MILK";TAB(32);"1/2 TSP CINNAMON";
260 PRINT#-2,TAB(55);"1/3 CUP MARGARINE"
270 PRINT#-2,TAB(32);"1/8 TSP NUTMEG"
280 PRINT#-2,TAB(32);"    DASH OF SALT"
290 PRINT#-2,TAB(32);"4 LARGE GOLDEN APPLES"
300 PRINT#-2:PRINT#-2
310 PRINT#-2,TAB(17);"PREPARE PASTRY AND TURN INTO 9 INCH PIE PLATE"
320 PRINT#-2,TAB(25);"POUR IN THE APPLE PIE FILLING"
330 PRINT#-2,TAB(27);"SPRINKLE WITH THE TOPPING"
340 PRINT#-2:PRINT#-2
350 PRINT#-2,TAB(30);"FROM THE KITCHEN OF"
360 GOSUB 440
370 PRINT#-2,TAB(13);L1$
380 PRINT#-2,TAB(13);L2$
390 PRINT#-2,TAB(13);L3$
400 PRINT#-2,TAB(13);L4$
410 GOSUB 480
420 END
430 REM: DEFINE MACRO FOR EMPHASIZED AND EXPANDED TEXT
440 PRINT#-2:ESC$=CHR$(27)
450 PRINT#-2,ESC$;CHR$(43);ESC$;"E";ESC$;"W";CHR$(1);CHR$(30)
460 PRINT#-2,ESC$;CHR$(33):RETURN
470 REM: REINITIALIZES PRINTER TO NORMAL PRINTING
480 PRINT#-2,CHR$(27);"@":RETURN
