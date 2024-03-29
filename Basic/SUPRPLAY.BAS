1 '****************************
2 '*        SUPERPLAY         *
3 '*       (C) 1987 BY        *
4 '*      JEREMY SPILLER      *
5 '****************************
10 CLEAR 2000,&H7B7C:RESTORE
20 PO=&H7B7D:CH=0:FOR D=1 TO 11:CLS:PRINT"WORKING ON LINE";D:CH=0
30 READ D$:FOR X=1 TO LEN(D$)/2-1:P=VAL("&H"+MID$(D$,X*2-1,2)):POKE PO,P:CH=CH+P:PO=PO+1:NEXT X
40 IF RIGHT$(D$,2)<>RIGHT$("00"+HEX$(CH),2) THEN PRINT"ERROR IN LINE";D:STOP
50 NEXT D
60 CLS:PRINT"POKING PITCH TABLE":R=1.0594631:PITCH=545:REM--------MODIFY 'PITCH' IF THE NOTES     SEEM OFF.
70 Z=&H7C80:S=1:FORX=0TO60:P=S*PITCH:A=INT(P/256):B=P-A*256:POKEZ,A:POKEZ+1,B:Z=Z+2:S=S*R:NEXT
80 PMODE 4,1:PCLS:SCREEN 1,1:B=&H7C00:FOR W=1 TO 3:PCLS:B=B+256:A=0:Z=0:FOR X=0 TO 6.2831853 STEP 0.0246399424
82 ON W GOSUB 490,600,510
84 POKE B+Z,A:PSET(Z,A/2):Z=Z+1:NEXT X,W
90 EXEC &H7B7D
100 JS$="V31W1
110 J1$="T4L2O3CD"
120 J2$="L4EGFFAGGO4CO3BO4CO3GECDEFGAGFE"
130 J3$="DECO2GBO3DFED"
140 J4$="ECD"
150 J5$="O2GO3CO2BO3C"
160 J6$="L4EGO4CP2
170 J7$="W3T3L1O3EL2FGCGFDED
180 J8$="T4L4DW2FEFDO2BGBO3DFED
190 J9$="W1ECD
200 J$="W1"+J2$+J3$+"W2"+J4$+J2$+J5$+J6$
210 POKE&HFFDE,0:CLS:PRINT"THIS IS HOW THE old PLAY STATE- MENT SOUNDS!"
220 PLAY J1$+J2$+J3$+J4$+J2$+J5$+"P1"
230 POKE&HFFDF,0:CLS:PRINT@140,"SUPERPLAY":PRINT@200,"BY JEREMY SPILLER"
240 PLAY "P1"+JS$+J1$+J$
250 PLAY J7$+J8$+J7$+J8$+J9$+J$
260 D1$="V31W1T4O3L8C"
270 D2$="L8CFFL4EDCO2AO3L4O1W3AA
280 D3$="W2O3L8CCFFL4EDD+EO4W3O1EE
290 D4$="T4W3O3L4EECDW1EECDW2L8EEL4EDCO2A
300 D5$="T4L4O1W3FO3AAP4O1CO3AAP4O1FO3AO1CO3AO1FO3AA
310 PLAY D1$+D2$+D3$+D4$+D5$+D1$+D2$+D3$+D4$+"L2O1FP1"
320 L1$="V31T5O3L3EL8DL4CDEDECDDDL1D
330 L2$="L4DL8CL4O2BO3CDCDO2BO3CCCL1C
340 L3$="L3O2GL8G+L3AL8G+L3GL8G+L3AL8G+L4G
350 PLAY "W1"+L1$+"W2"+L2$+"W3"+L3$+"O3DDL1DW2"+L3$+"O3EEL1E"+"W1"+L1$+"W3L4DL2C+L4DL2EEL1G"
360 CLS:PRINT@136,"THATS ALL FOLKS!"
370 PRINT@256,"WELL, NOT QUITE ALL! IF YOU     WANT TO SAVE THIS VERSION OF    SUPERPLAY AS AN ML PROGRAM,     PRESS <T>APE, <D>ISK OR <Q>UIT"
380 A$=INKEY$:IF A$=""THEN 380
390 IF A$="Q"THEN END ELSE IF A$="T"THEN 400 ELSE IF A$="D" THEN 430 ELSE 380
400 CLS:PRINT"YOU HAVE CHOSEN A SAVE TO TAPE. PLEASE PLACE A TAPE IN YOUR     RECORDER AND PREPARE TO RECORD  THIS VERSION OF SUPERPLAY.":Q$="CLOADM":GOSUB 450
410 IF F$="" THEN 360
420 CSAVEM F$,&H7B7D,&H7FFF,&H7B7D:GOTO 460
430 CLS:PRINT"YOU HAVE CHOSEN A SAVE TO DISK. PLEASE PLACE A DISKETTE IN YOUR DRIVE TO SAVE THIS VERSION OF   SUPERPLAY.":Q$="LOADM":GOSUB 450
440 IF F$=""THEN 360 ELSE SAVEM F$,&H7B7D,&H7FFF,&H7B7D:GOTO 460
450 PRINT:PRINT"PLEASE TYPE A SUITABLE FILENAME (8 LETTERS OR LESS) OR <ENTER>  ALONE TO ABORT.":INPUT F$:RETURN
460 CLS:PRINT F$:PRINT"HAS NOW BEEN SAVED AS A STAND-  ALONE ML PROGRAM. TO INSTALL    IT SIMPLY RUN THE FOLLOWING     PROGRAM:"
470 PRINT:PRINT"10 CLEAR 200,&H7B7C":PRINT"20 ";Q$;CHR$(34);F$;CHR$(34):PRINT"30 EXEC":PRINT"40 CLEAR 200,&H7FFF":PRINT"50 PLAY";CHR$(34);"V31";CHR$(34)
480 PRINT:INPUT"ANOTHER SAVE (Y OR N)";A$:IF A$="Y" THEN 360 ELSE END
485 REM THE LINE NUMBERS OF ANY     OF THE FOLLOWING FORMULAS       MAY BE PLUGGED INTO LINE 82.    (ON W GOSUB XXX,XXX,XXX)
490 A=COS(X)*88+COS(X*2)*44+SIN(X*3)*22+COS(X*4)*11+95:RETURN
500 A=SIN(X)*64+SIN(X*2)*32+SIN(X*3)*16+SIN(X*4)*8+SIN(X*8)*8+128:RETURN
510 A=80*ATN(SIN(5*X)+TAN(.2*X)+COS(3*X))+128:RETURN
520 A=SIN(X)*32+COS(X*2)*32+SIN(X*3)*32+COS(X*4)*32+128:RETURN
530 A=20*TAN(SIN(X)+COS(X))+128:RETURN
540 A=SIN(X*X)*63+COS(X*X)*63+128:RETURN
550 A=COS(X/2)*127+128:RETURN
560 A=COS(X/2)*32+SIN(X)*96+128:RETURN
570 A=SIN(X)*127+128:RETURN
580 A=114*ATN(COS(4*X)+SIN(3*X))+127:RETURN
590 A=230*TAN(SIN(X)*COS(X))+128:RETURN
600 A=210*TAN(SIN(X*.99)*COS(X*1.01))+133:RETURN
610 A=127*LOG(X+.01)*SIN(X)*COS(X)+127:RETURN
620 A=100*ATN(COS(4*X)*SIN(X))+118:RETURN
625 REM THE DATA BELOW CONTAINS     ONLY ZEROS. THERE ARE NO        LETTER O'S, AND NO COMMAS.      ALL LINES ARE EXACTLY THE       SAME LENGTH!
630 DATA 86FB97F9B6FA8043B7FA80B1FA8027161A508E80007FFFDEF1
640 DATA EC847FFFDFED818CFA8025F11CAF338D001E308CD3ECC12763
650 DATA 16308B10AEC1ECC13402A680A7A0350283000126F320E339B0
660 DATA 00629A6D001B007D9AC7002400A19B2900620103FA8003804E
670 DATA 000081572714815626168D49C11F2252D7DF585858CA07D7B6
680 DATA E0397E9ADCBD9CCB5D26037EB44A96E23DDDD50FFD0FFE7E31
690 DATA 9B44BD9CCB5AC102230220E7CBFBD7F93996DEC60C7FFF401F
700 DATA 3DEBE0588EFA80EC85DDFDD6F9D7FADCE13DDDD58D46DDE392
710 DATA 8E00AB1F12CEFFFF1A501E881E881E881E88A69F00FAD6E02D
720 DATA 3D8A03B7FF20DCFBD3FDDDFB301F26E21F21334112DCE3938E
730 DATA D5DDE322DDFC011233CBFF0112CC0000DDE339DDD5DDE3220C
