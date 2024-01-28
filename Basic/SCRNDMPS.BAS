5 '***    SCRNDMPS    ***            By H. Allen Curtis                Copyright 1987
10 X=&H1200:WIDTH40
20 FOR I=0TO23:READ D:POKEX+I,D:NEXT
30 FOR I=24TO192:READ D$:D=VAL("&H"+D$):C=C+D:POKEX+I,D:NEXT
40 IFC=19727THEN50ELSELOCATE14,4:PRINT"DATA ERROR":STOP
50 CLS2:LOCATE4,4:PRINT"Have you customized SCRNDMPS to suit your printer? <Y/N>  ";
60 K$=INKEY$:IFK$=""THEN60ELSEIFK$="Y"THEN280
70 LOCATE4,7:PRINT"Consult your printer manual to find  ASCII codes for setting an 8 dot line   spacing.  If your printer only has an 8 dot line spacing for graphics, then     look for a code or codes to turn on     graphics.
80 PRINT"    As an example, one printer uses the  ESCape code 27, followed by 65 (the     ASCII code for A), followed by 8 (the   dot spacing).  For this code sequence   you would type 27,65,8.  Now, type the  sequence for your printer: ";
90 LINEINPUTQ$
100 C$=Q$:K=1:Z$=",0":L1$="400 DATA "
110 IFINSTR(C$,",")=0THEN120ELSEC$=RIGHT$(C$,LEN(C$)-INSTR(C$,",")):K=K+1:GOTO110
120 L1$=L1$+STR$(K)+","+Q$:FORJ=1TO7-K:L1$=L1$+Z$:NEXT
130 CLS5:LOCATE4,4:PRINT"Next, find the ASCII codes for       setting the desired graphics mode and   the number of dots per line.  SCRNDMPS  requires 384 dots per line.
140 PRINT"    As an example, one printer uses the  sequence 27,75,128,1 where the codes    128 and 1 represent 128 + 1*256 = 384   dots per line.
150 PRINT"    Now, type your code sequence.        Remember to include commas between      codes. ";
160 LINEINPUTQ$
170 C$=Q$:K=1:L2$="410 DATA "
180 IFINSTR(C$,",")=0THEN190ELSEC$=RIGHT$(C$,LEN(C$)-INSTR(C$,",")):K=K+1:GOTO180
190 L2$=L2$+STR$(K)+","+Q$:FORJ=1TO8-K:L2$=L2$+Z$:NEXT
200 CLS3:LOCATE4,4:PRINT"Look up the code sequence to turn    off graphics and return to the text     mode.  The example printer uses the     code sequence 27,64 which resets the    printer to its power-up state.
210 PRINT"    Type the corresponding sequence for  your printer. ";
220 LINEINPUTQ$
230 C$=Q$:K=1:L3$="420 DATA "
240 IF INSTR(C$,",")=0THEN250ELSEC$=RIGHT$(C$,LEN(C$)-INSTR(C$,",")):K=K+1:GOTO240
250 L3$=L3$+STR$(K)+","+Q$:FORJ=1TO6-K:L3$=L3$+Z$:NEXT
260 CLS6:LOCATE4,4:PRINT"Customize SCRNDMPS by EDITing lines  400, 410, and 420 to:":LOCATE4,9:PRINTL1$:LOCATE4,11:PRINTL2$:LOCATE4,13:PRINTL3$
270 PRINT:PRINT:PRINT"    If you have not already done so,     EDIT lines 320-350 to take options you  want.":PRINT:PRINT:PRINT"         Then rerun SCRNDMPS.":LOCATE0,22:END
280 CLS5:LOCATE4,8:PRINT"Is your printer ready?  <Y/N> ";
290 K$=INKEY$:IFK$=""THEN290ELSEIFK$="Y"THEN300ELSELOCATE2,10:PRINT"Ready your printer and rerun SCRNDMPS.":LOCATE0,22:END
300 CLS5:LOCATE4,8:PRINT"Do you have a mode 1 or 3 screen     ready to dump?  <Y/N> ";
310 K$=INKEY$:IFK$=""THEN310ELSEIFK$="Y"THEN320ELSELOCATE4,12:PRINT"Run a program to generate the        desired screen.  Then reload SCRNDMPS   and run it.":LOCATE0,22:END
320 'POKEX+77,33 'REVERSE DOTS IN 8 DOT COLUMN
330 'POKEX+97,67 'NEGATIVE IMAGE
340 'POKEX+101,189 'SET LINE FEED
350 'POKEX+131,18 :X=X-4  'SET BAUD
360 EXECX+134
370 'SAVEM"SCRNDMPS",&H1200,&H12C0,X+134
380 'CLS3:MOTORON:LOCATE4,4:PRINT"Position tape for recording.":PRINT"    Then press any key.":GOSUB390:MOTOROFF:ATTR5,6:PRINT"Depress recorder buttons PLAY and RECORDand then press any key.";:GOSUB390:CSAVEM"SCRNDMPS",&H1200,&H12C0,X+134:END
390 'K$=INKEY$:IFK$=""THEN390ELSERETURN
400 DATA 3,27,65,8,0,0,0,0
410 DATA 4,27,75,128,1,0,0,0,0
420 DATA 2,27,64,0,0,0,0
430 DATA 34,10,30,8C,E3,8D,11,35,10,39
440 DATA 34,10,30,8C,E1,20,F4
450 DATA 34,10,30,8C,E3,20,ED
460 DATA E6,80,A6,80,BD,A2,85,5A,26,F8,39
470 DATA A6,84,8D,E,BD,A2,85,BD,A2,85,30,88,B0,A,50,26,EF,39
480 DATA 20,12,48,56,48,56,48,56,48,56,48,56
490 DATA 48,56,48,56,48,56,1F,98,12,39
500 DATA 86,A,8C,A2,85,86,D,BD,A2,85,C6,7,86,20
510 DATA BD,A2,85,5A,26,F8,8D,A9,33,41,1F,31,C6,C0,D7,50,39
520 DATA C6,12,D7,96,C6,FE,D7,6F,8D,8C
530 DATA 1F,52,31,A9,FF,70,1E,42,8E,70,71
540 DATA BF,FF,A2,CE,7B,AF,C6,50,D7,51
550 DATA 8D,C0,8D,96,A,51,26,F8,8E,7A,7B
560 DATA BF,FF,A2,1E,42,17,FF,75,86,D,BD,A2,85
570 DATA 86,A,BD,A2,85,F,6F,39
