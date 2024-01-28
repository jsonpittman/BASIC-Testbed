5 CLS3:PRINT@4,"**BAUD RATE SELECT0R**";
10 PRINT@72,"1). BAUD 600";
15 PRINT@136,"2). BAUD 1200";
20 PRINT@196+4,"3). BAUD 2400";
25 PRINT@200+95,"ENTER 1, 2, OR 3";:INPUT D
30 ON D GOTO 35, 40, 45
35 D=87:GOTO50
40 D=41:GOTO50
45 D=18:GOTO 50
50 POKE150,(D)
80 CLS(3):PRINT@196,"DOUBLE STRIKE (Y OR N)";:INPUT F$
90 IF F$="Y"THEN GOTO110 
100 IF F$="N" THEN GOTO 120
110 O=31:GOTO 130
120 O=19:GOTO 130
130 PRINT#-2,CHR$(27);CHR$(O)
140 CLS3
150 PRINT@194,"HOW MANY PAGES WILL I PRINT";:INPUT C
160 FOR P=1 TO C
170 CLS6:PRINT@168,"P R I N T I N G";
180 FOR X=1 TO 4
190 PRINT#-2,STRING$(77,42)
200 PRINT#-2,"* RECEIPT NO.   *  * R  NO.                                                 *"
210 PRINT#-2,"*     STUB      *  * E                                                      *"
220 PRINT#-2,"*               *  * C                                    ------------19--  *"
230 PRINT#-2,"*               *  * E                                                      *"
240 PRINT#-2,"*               *  * I  RECEIVED FROM-----------------------------------    *"
250 PRINT#-2,"*               *  * P                                                      *"
260 PRINT#-2,"*               *  * T  -------------------------------------/100(dollars)  *"
270 PRINT#-2,"*               *  *                                                        *"
280 PRINT#-2,"*               *  *    FOR:--------------------------------------------    *"
290 PRINT#-2,"*               *  *                                                        *"
300 PRINT#-2,"*               *  *   $-----            (signed)------------------------   *"
310 PRINT#-2,"*               *  *                                                        *"
320 PRINT#-2,STRING$(77,42)
330 PRINT#-2,STRING$(77,46)
340 NEXT X
350 PRINT#-2,STRING$(4,13)
360 NEXT P
370 PRINT@325,"* * * FINISHED * * *";
380 PRINT@388+2,"CONTINUE?<any key>";
390 EXEC44539:GOTO100
