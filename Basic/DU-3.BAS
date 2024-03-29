10 '****************
15 ' A DISK UTILITY
20 ' FOR THE COCO-3
25 ' MIKE JORGENSON
30 '****************
35 '
40 PCLEAR1:CLEAR3500
45 DIM FL$(68),XF(68),V(68)
50 CLS:ON BRK GOTO75
55 PALETTE 9,0:PALETTE 10,2
60 WIDTH 40:VERIFY ON
65 V$="ON":A$="0":GOTO75
70 FORX=1TO DF:FL$(X)="":NEXT
75 GOSUB325:ATTR 2,0
80 PRINT"C= COPY  D= DRIV  K= KILL  L= LOAD":PRINT"   N= NAME  S= SCAN  Q= QUIT  V= "V$
85 Q$=INKEY$:IFQ$=""THEN85
90 Q=INSTR("CDKLNSQV",Q$)+1:ON Q GOTO85,105,210,240,565,290,480,610,95
95 IFV$="ON"THENV$="OFF":VERIFYOFF:GOTO100 ELSEV$="ON":VERIFYON
100 LOCATE 3,Y:GOTO80
105 IF DF<1THEN100 ELSEGOSUB440
110 GOSUB370:ATTR 2,0:PRINT"COPY ALL OR SINGLE FILE:  <A/S> ?"
115 Q$=INKEY$:IFQ$="A"THEN165 ELSEIFQ$="S"THEN120 ELSE115
120 LOCATE 3,Y:LINEINPUT"ENTER THE FILE NUMBER TO COPY ?  ";C$:C=VAL(C$):IF C>DF OR C<1THEN100
125 ATTR 3,0:IF A=B THEN140
130 PRINT:PRINT"   COPYING:  "FL$(C)" TO "B$:COPY""+FL$(C)+":"+A$TO""+FL$(C)+":"+B$
135 SOUND100,6:GOTO160
140 CLS:PRINT:PRINT"   COPYING:  "FL$(C):PRINT:PRINT"   ";
145 COPY""+FL$(C)+":"+A$
150 PRINT:PRINT:SOUND100,6
155 LINEINPUT"   INSERT SOURCE DISK, THEN <ENTER> ";Q$
160 GOSUB370:ATTR 2,0:GOTO80
165 LOCATE 3,Y:PRINT"COPY ALL, ARE YOU SURE:  <Y/N> ? "
170 Q$=INKEY$:IFQ$=""THEN170
175 IF Q$<>"Y"THEN100
180 ATTR 3,0:IF A=B THEN190
185 Y=Y+2:FORX=1TO DF:LOCATE 3,Y:PRINT"COPYING:  "FL$(X)" TO "B$:COPY""+FL$(X)+":"+A$TO""+FL$(X)+":"+B$:NEXT:SOUND100,6:GOTO160
190 CLS:FORX=1TO DF
195 PRINT:PRINT:SOUND100,6:LINEINPUT"   INSERT SOURCE DISK, THEN <ENTER> ";Q$:PRINT:PRINT"   ";
200 COPY""+FL$(X)+":"+A$
205 NEXT:GOTO150
210 GOSUB470:LOCATE 3,6
215 PRINT"CHANGE WORKING DRIVE TO:  ";:ATTR 2,0:PRINT"<0-3> ?"
220 A$=INKEY$:IFA$=""THEN220
225 A=VAL(A$):IF A>3THEN220
230 IF A<1THENA$="0"
235 DRIVE A:GOTO70
240 IF DF<1THEN100 ELSEGOSUB370
245 ATTR 2,0:PRINT"KILL ALL OR SINGLE FILE:  <A/S> ?"
250 Q$=INKEY$:IFQ$="A"THEN270 ELSEIFQ$="S"THEN255 ELSE250
255 LOCATE 3,Y:LINEINPUT"ENTER THE FILE NUMBER TO KILL ?  ";K$:K=VAL(K$):IF K>DF OR K<1THEN100
260 PRINT:ATTR 3,0
265 PRINT"   KILLING:  "FL$(K):KILL""+FL$(K):IF DF>1THEN SOUND100,6:GOTO70 ELSE70
270 LOCATE 3,Y:PRINT"KILL ALL, ARE YOU SURE:  <Y/N> ? "
275 Q$=INKEY$:IFQ$=""THEN275
280 IF Q$<>"Y"THEN100
285 ATTR 3,0:Y=Y+2:FORK=1TO DF:LOCATE 3,Y:PRINT"KILLING:  "FL$(K):KILL""+FL$(K):NEXT:GOTO70
290 IF DF<1THEN100 ELSEGOSUB370
295 ATTR 2,0:LINEINPUT"ENTER A FILE NUMBER TO RENAME ?  ";N$:N=VAL(N$):IF N>DF OR N<1THEN100
300 GOSUB470:LOCATE 3,6
305 PRINT"RENAME:  "FL$(N)" - TO WHAT ?":ATTR 2,0
310 PRINT:PRINT"   <INCLUDE EXT>:  ";:ATTR 3,0:LINEINPUT N$:L=LEN(N$):IF L>12 OR L<1THEN160
315 RENAME""+FL$(N)TO""+N$
320 SOUND100,6:GOTO70
325 FR=FREE(A):DF=0
330 DSKI$ A,17,2,X$,Y$
335 FORX=3TO9:DSKI$ A,17,X,Y$,Z$:FORK=1TO128 STEP32:GOSUB340:NEXTK:Y$=Z$:FORK=1TO128 STEP32:GOSUB340:NEXTK,X:GOTO370
340 SB$=MID$(Y$,K,14):L$=LEFT$(SB$,1):IFL$=CHR$(0)THENRETURN ELSEIFL$=CHR$(255)THENY=128:RETURN
345 IF ASC(SB$)>127THENRETURN
350 DF=DF+1:XF(DF)=0:V(DF)=0:Y=ASC(RIGHT$(SB$,1))+1:FL$(DF)=LEFT$(SB$,8)+"/"+MID$(SB$,9,3)
355 XF(DF)=ASC(MID$(SB$,12,1))
360 V(DF)=V(DF)+1:Z=ASC(MID$(X$,Y,1)):IF Z<78THENY=Z+1:GOTO360
365 RETURN
370 GOSUB470:IF DF>0THEN380
375 LOCATE 3,6:PRINT"NO FILES PRESENT IN DISK DIRECTORY!":SOUND100,6:Y=11:LOCATE 3,Y:RETURN
380 T=0:IF DF<22THENY=4 ELSEY=3
385 FORX=1TO DF:IF T=0 AND Y=17THENY=Y-1:FORK=1TO6:PRINT:NEXT
390 IF T=0THENT=1:Y=Y+1:Z=1 ELSET=0:Z=20
395 ATTR 2,0:LOCATE Z,Y
400 IF X<10THENPRINTX;" ";:ATTR 3,0:PRINTFL$(X);V(X):GOTO415
405 PRINTX;:ATTR 3,0
410 PRINTFL$(X);V(X)
415 NEXT:ATTR 2,0:IF T=0THENY=Y+1:Z=5 ELSEZ=24
420 LOCATE Z,Y:PRINT"Free =";
425 ATTR 2,0,B:PRINT FR
430 IF DF<22THENY=Y+3 ELSEY=Y+2
435 LOCATE 3,Y:RETURN
440 GOSUB470:LOCATE 3,6:PRINT"THE SOURCE DRIVE IS: ";A:PRINT
445 PRINT"   DESTINATION DRIVE:  ";:ATTR 2,0:PRINT"<ENTER=0> ?"
450 B$=INKEY$:IFB$=""THEN450
455 B=VAL(B$):IF B>3THEN450
460 IF B<1THENB$="0"
465 RETURN
470 CLS:LOCATE 7,1:ATTR 1,0,B
475 PRINT"<<<  COCO-3 DISK UTIL  >>>":ATTR 3,0:RETURN
480 CLS:LOCATE 7,1:ATTR 1,0,B
485 PRINT"<<<  COCO-3 DISK SCAN  >>>":LOCATE 3,6:ATTR 3,0:PRINT"SCANNING DISK ON DRIVE: ";A
490 ATTR 2,0:LOCATE 3,9:INPUT"START AT WHICH TRACK:  <0-34> ";SX
495 IF SX>34THEN490
500 LOCATE 3,11:INPUT"START AT WHICH SECTOR:  <1-18> ";SK
505 IF SK<1 OR SK>18THEN500
510 FOR X=SX TO 34
515 FOR K=SK TO 18
520 DSKI$ A,X,K,Y$,Z$
525 ATTR 3,0:PRINT:PRINT
530 PRINT"   "Y$;Z$
535 ATTR 2,0:PRINT:PRINT
540 PRINT"  ";X,K
545 NEXT K:SK=1:NEXT X
550 ATTR 3,0,B:SOUND100,6
555 PRINT:PRINT:LINEINPUT"   PRESS <ENTER> WHEN READY ... ";Q$
560 GOSUB370:ATTR 2,0:GOTO80
565 IF DF<1THEN100 ELSEGOSUB370
570 ATTR 2,0:LINEINPUT"ENTER A FILE NUMBER TO LOAD ?  ";L$:L=VAL(L$):IF L>DF OR L<1THEN100
575 ATTR 3,0:PRINT
580 PRINT"   LOADING:  "FL$(L)
585 FORX=1TO1000:NEXT:WIDTH 32
590 IF XF(L)=2 THEN600
595 LOAD FL$(L)+":"+A$
600 LOADM FL$(L)+":"+A$
605 POKE &HFF40,0:EXEC
610 PCLEAR4:CLS:ATTR 3,0
615 PALETTE CMP:END
620 '*** END PROGRAM ***
