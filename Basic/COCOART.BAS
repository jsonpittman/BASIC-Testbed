10 GOTO90
20 FORJ=0TOM
30 POKE65495,0'HIGH SPEED
40 P(J)=P(J)+V(J)
50 IFP(J)<0THENP(J)=0:V(J)=-V(J)
60 IFP(J)>L(J)THENP(J)=L(J):V(J)=-V(J)
70 NEXT
80 RETURN
90 CLEAR
100 DIMP(3),V(3),L(3)
110 PCLEAR4:PMODE4,1:PCLS5:SCREEN1,1
120 L(0)=255:L(1)=191
130 L(2)=L(0):L(3)=L(1)
140 FORJ=0TO3
150 P(J)=RND(L(J))
160 V(J)=RND(0)*2-4
170 IFV(J)=0THENV(J)=1
180 NEXT
190 M=3
200 FORI=0TO200
210 GOSUB20
220 LINE(P(0),P(1))-(P(2),P(3)),PRESET
230 NEXT
240 A$=INKEY$:IFA$=""THEN240
250 POKE65494,0'NORMAL SPEED
260 CLS:PRINT,,"       COCO GRAPHICS DEMO","              MENU"
270 PRINT,,,,"   [1] SAVE IT"," [2] LOAD IT","   [3] VIEW IT"," [4] DRAW IT","   [5] DIR"," [6] QUIT",,,,,,,"      ENTER OPTION NUMBER"
280 A1$=INKEY$:IFA1$=""THEN280
290 IFA1$="1"THENGOSUB380
300 IFA1$="2"THENGOSUB450
310 IFA1$="3"THENGOSUB490
320 IFA1$="4"THENGOSUB510
330 IFA1$="5"THENGOSUB520
340 IFA1$="6"THEN570
350 GOTO260
360 GOTO360
370 GOTO10
380 CLS:INPUT"GIVE IT A NAME";N$
390 IFN$=""THEN380
400 IF LEN(N$)>8THENPRINT"THAT'S TOO LONG":FORX=1TO500:NEXTX:GOTO380
410 SAVEM N$+"/ART",3584,9727,3584
420 PRINT"ITS DISK FILE NAME IS ";N$;"/ART"
430 FORX=1TO4000:NEXTX
440 GOTO260
450 CLS:INPUT"WHAT'S ITS NAME";N1$
460 IFN1$=""THEN450
470 LOADM N1$+"/ART"
480 GOTO260
490 PMODE4,1:SCREEN1,1
500 A2$=INKEY$:IFA2$=""THEN500ELSE260
510 GOTO10
520 DIR
530 PRINT:PRINT"WITH";FREE(0); "GRANULES REMAINING,"
540 PRINT"PRESS ANY KEY TO CONTINUE."
550 EXEC44539'HOLD UNTIL KEY IS PRESSED
560 GOTO260
570 POKE113,0:EXEC40999'CLEARS OUT MACHINE! LIKE TURNING IT OFF AND THEN ON AGAIN!
