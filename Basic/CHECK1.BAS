0 'CHECK1/BAS  CHECK, BUDGET MANAGEMENT PROGRAM  VERSION 1.00.00 09/01/86
1 'COPYRIGHT 1989, FALSOFT INC.
5 GOTO 900
8 DIMD$(165)
10 GOTO 100
25 OPEN"D",#1,"CHECK/ACC",11:FIELD#1,11AS CA$:L=LOF(1):RETURN
30 OPEN"D",#1,"CHECK/DAT",157:FIELD#1,9AS CN$,9AS DN$,8AS DT$,50AS PT$,50AS FR$,11AS AC$,9AS AM$,1AS ST$,10AS BL$:L=LOF(1):RETURN
35 LSET CN$=C1$:LSET DN$=D1$:LSET DT$=D2$:LSET PT$=P1$:LSET FR$=F1$:LSET AC$=A1$:LSET AM$=A2$:LSET ST$=S1$:LSET BL$=B1$:RETURN
40 IFST$="N"THEN S2$="NOT VERIFIED"ELSEIFST$="Y"THEN S2$="VERIFIED"
45 CLS:PRINT@35,"RECORD NUMBER "R" OF "L:PRINT@96,"CHECK NO. . ."CN$:PRINT"DEPOSIT NO. ."DN$:PRINT"DATE. . . . ."DT$:PRINT"PAID TO . . ."PT$:PRINT"FOR . . . . ."FR$:PRINT"ACCOUNT . . ."AC$:PRINT"AMOUNT. . . .":PRINT"STATUS. . . ."S2$
50 PRINT"BALANCE . . .":PRINT@365,USINGC$;VAL(AM$):PRINT@429,USINGCC$;VAL(BL$):RETURN
53 CLS:PRINT@38,"DELETE ACCOUNT NAME":PRINT@356,"FOR ACCOUNT MENU ENTER 0":PRINT@96,"NUMBER OF ACCOUNT TO BE DELETED?":RETURN
55 CLS:PRINT@40,"DELETING RECORDS":PRINT@451,"FOR MAIN MENU  PRESS ENTER":PRINT@101,"RECORDS MUST BE DELETED":PRINT@135,"IN NUMERICAL ORDER":PRINT@202,"WHICH RECORD":PRINT@232,"IS TO BE DELETED":RETURN
60 IFR9=0THEN R9=R ELSEIFR<R9 THEN R9=R
61 RETURN
100 CLS:PRINT@32,"CHECK, BUDGET MANAGEMENT PROGRAM":PRINT@97,"TO ENTER RECORDS  -  - PRESS A":PRINT@129,"TO VIEW RECORDS-  -  - PRESS B":PRINT@161,"TO EDIT RECORDS-  -  - PRESS C"
105 PRINT@193,"TO DELETE RECORDS -  - PRESS D":PRINT@225,"TO INSERT RECORD  -  - PRESS E":PRINT@257,"FOR ACCOUNT ROUTINES - PRESS F":PRINT@289,"FOR OTHER ROUTINES-  - PRESS G"
110 A$=INKEY$:IFA$="A"THEN385ELSEIFA$="B"THEN545ELSEIFA$="C"THEN610ELSEIFA$="D"THEN725ELSEIFA$="E"THEN850ELSEIFA$="F"THEN115ELSEIFA$="G"THEN RUN"CHECK2"ELSE110
115 'ACCOUNT NAME ROUTINES
120 CLS:PRINT@40,"ACCOUNT ROUTINES":PRINT@99,"ESTABLISH ACCOUNT- PRESS A":PRINT@131,"VIEW ACCOUNTS -  - PRESS B":PRINT@163,"DELETE ACCOUNT-  - PRESS C":PRINT@195,"PRINT OF ACCOUNTS- PRESS D":PRINT@227,"FOR MAIN MENU -  - PRESS E"
125 PRINT@195,"SORT ACCOUNTS -  - PRESS D":PRINT@227,"PRINT ACCOUNTS-  - PRESS E":PRINT@259,"FOR MAIN MENU -  - PRESS F"
130 A$=INKEY$:IFA$="A"THEN135ELSEIFA$="B"THEN190ELSEIFA$="C"THEN230ELSEIFA$="D"THEN340ELSEIFA$="E"THEN285ELSEIFA$="F"THEN100ELSE130
135 'ENTER ACCOUNT NAMES
140 GOSUB25:R=L
145 R=R+1:IFR>165THEN185
150 CLS:PRINT@34,"ESTABLISHING AN ACCOUNT LIST":PRINT@74,"ACCOUNT "R:PRINT:INPUT"NAME OF ACCOUNT";C2$:IFC2$="^^"THEN180ELSEIFLEN(C2$)>11THENPLAY"DCD":CLS:PRINT@233,"ENTRY TO LONG":FORC=1TO500:NEXT:GOTO150
155 B$="           ":B1$=C2$+B$
160 IFR=1THEN170ELSEFORR1=1TO R-1:GET#1,R1:IFCA$=LEFT$(B1$,11)THEN165ELSENEXTR1:GOTO170
165 PLAY"DCD":CLS:PRINT@229,"ACCOUNT ALREADY EXIST":FORC=1TO500:NEXTC:GOTO150
170 LSET CA$=C2$:PUT#1,R:PRINT@449,"ESTABLISH ANOTHER ACCOUNT Y/N?"
175 A$=INKEY$:IFA$="Y"THEN145ELSEIFA$<>"N"THEN175
180 CLOSE:GOTO120
185 CLS:PRINT@198,"NO MORE ACCOUNT NAMES":PRINT@231,"CAN BE ESTABLISED":CLOSE:GOTO120
190 'VIEW ACCOUNT NAMES
195 GOSUB25:R=1:IFL=0THEN225
200 CLS:B1=0:PRINT@2,"LIST OF ESTABLISHED ACCOUNTS":PRINT@36,"THERE ARE "L" ACCOUNTS":B=79:FORR=R TO L:GET#1,R:B=B+16:B1=B1+1:PRINT@B,R;CA$:IFB1=20 AND R<L THEN205ELSENEXTR:GOTO215
205 B1=0:R=R+1:PRINT@450,"TO CONTINUE LIST PRESS ENTER"
210 A$=INKEY$:IFA$=CHR$(13)THEN200ELSE210
215 PRINT@450,"FOR ACCOUNT MENU PRESS ENTER"
220 A$=INKEY$:IFA$<>CHR$(13)THEN220
225 CLOSE:GOTO120
230 'DELETE ACCOUNT NAME
235 R=1:R2=0:GOSUB25:OPEN"D",#2,"TEMP/ACC",11:FIELD#2,11AS T4$:GOSUB53
240 PRINT@160,"      ":PRINT@128:INPUTR1:IFR1<>0 AND R1<R OR R1>L THEN240ELSEIFR1=0THEN CLOSE:GOTO120
245 FORR=1TO L:GET#1,R:IFR1=R THEN265
250 LSET T4$=CA$:R2=R2+1:PUT#2,R2
255 NEXTR
260 CLOSE:KILL"CHECK/ACC":RENAME"TEMP/ACC"TO"CHECK/ACC":GOTO120
265 CLS:PRINT@43,"ACCOUNT "R:PRINT:PRINT"ACCOUNT NAME ."CA$:PRINT@452,"DELETE THIS ACCOUNT Y/N?"
270 A$=INKEY$:IFA$=""THEN270ELSEGOSUB53
275 PRINT@160,"      ":PRINT@128:INPUTR1:IFR1<>0 AND R1<=R OR R1>L THEN275
280 IFA$="Y"THEN255ELSE250
285 'HARDCOPY OF ACCOUNTS
290 CLS:PRINT@37,"PRINTOUT OF ACCOUNTS":PRINT@99,"DISABLE PRINTER AUTOMATIC":PRINT@137,"LINE ADVANCE":PRINT@229,"WHEN PRINTER IS READY":PRINT@266,"PRESS ENTER":PRINT@451,"FOR ACCOUNT MENU  ENTER M"
295 A$=INKEY$:IFA$="M"THEN100ELSEIFA$<>CHR$(13)THEN295
300 GOSUB25:IFL=0THEN335ELSER=1:C=1
305 PRINT#-2,TAB(24)"CHECK, BUDGET MANAGEMENT PROGRAM";CHR$(10):PRINT#-2,TAB(34)"ACCOUNT LIST";CHR$(10);CHR$(10)
310 GET#1,R:PRINT#-2,TAB(10)R TAB(13)CA$
315 R=R+55:IFR>L THEN330ELSEGET#1,R:PRINT#-2,TAB(30)R TAB(33)CA$
320 R=R+55:IFR>L THEN325ELSEGET#1,R:PRINT#-2,TAB(50)R TAB(53)CA$
325 R=R-109:IFR>55THEN335ELSEPRINT#-2,CHR$(10):GOTO310
330 R=R-54:IFR>55 OR R>L THEN335ELSEPRINT#-2,CHR$(10):GOTO310
335 CLOSE:GOTO120
340 'ALPHABETIZE ACCOUNT NAMES
345 CLS:PRINT@194,"ALPHABETIZING ACCOUNT NAMES"
350 GOSUB25:IFL=0THEN CLOSE:GOTO100
355 FORR=1TO L:GET#1,R:D$(R)=CA$:NEXTR:R=R-1
360 FORR1=1TO L:FORR2=R1 TO L:IFD$(R1)<D$(R2) THEN370
365 D2$=D$(R1):D$(R1)=D$(R2):D$(R2)=D2$
370 NEXTR2:PRINTR1;:NEXTR1
375 FORR3=1TO L:LSET CA$=D$(R3):PUT#1,R3:NEXTR3
380 CLOSE:GOTO120
385 'ENTER RECORDS
390 GOSUB25:L0=L:IFL0=0THEN395ELSEFORD=1TO L0:GET#1,D:D$(D)=CA$:NEXT:CLOSE:GOTO400
395 CLS:PRINT@197,"NO ACCOUNTS HAVE BEEN":PRINT@234,"ESTABLISHED":FORC=1TO750:NEXT:CLOSE:GOTO100
400 GOSUB30:R=L:V=0:X=1:X1=1:X2=1:IFL=0THEN410
405 GET#1,L:V=VAL(BL$)
410 R=R+1
415 CLS:PRINT@39,"RECORD NUMBER "R:PRINT
420 INPUT"CHECK NO(OR MMDDYIIN)";C1$:IFC1$="^"THEN535ELSEIFC1$="^^"THEN540ELSEIFLEN(C1$)>9THEN PLAY"DCD":GOTO420
425 IFX=2THEN645
430 INPUT"DEPOSIT NO.(MMDDYIIN)";D1$:IFD1$="^"THEN535ELSEIFD1$="^^"THEN540ELSEIFLEN(D1$)>9THEN PLAY"DCD":GOTO430
435 IFVAL(C1$)>0AND VAL(D1$)>0OR VAL(C1$)=0AND VAL(D1$)=0THEN PLAY"DCD":CLS:PRINT@101,"EACH RECORD MUST HAVE":PRINT@140,"EITHER":PRINT@167,"A CHECK NUMBER OR":PRINT@199,"A DEPOSIT NUMBER":PRINT@229,"BUT CAN NOT HAVE BOTH":FORC=1TO2000:NEXT:GOTO535
440 IFX=2THEN655
445 INPUT"DATE. . . .(MM/DD/YY)";D2$:IFD2$="^"THEN535ELSEIFD2$="^^"THEN540ELSEIFLEN(D2$)>8THEN PLAY"DCD":GOTO445
450 IFX=2THEN665
455 INPUT"PAID TO . . .";P1$:IFP1$="^"THEN535ELSEIFP1$="^^"THEN540ELSEIFLEN(P1$)>50THEN PLAY"DCD":GOTO455
460 IFX=2THEN675
465 INPUT"FOR . . . . .";F1$:IFF1$="^"THEN535ELSEIFF1$="^^"THEN540ELSEIFLEN(F1$)>50THEN PLAY"DCD":GOTO465
470 IFX=2THEN685
475 INPUT"ACCOUNT . . .";A1$:IFA1$="^"THEN535ELSEIFA1$="^^"THEN540ELSEIFLEN(A1$)>11THEN PLAY"DCD":GOTO475
485 LSET AC$=A1$:FORD=1TOL0:IFAC$=D$(D)THEN490ELSENEXTD:PLAY"DCD":CLS:PRINT@229,"ACCOUNT DOES NOT EXIST":FORC=1TO500:NEXT:GOTO535
490 IFX=2THEN695
495 INPUT"AMOUNT. . . .";A2$:IFA2$="^"THEN535ELSEIFA2$="^^"THEN540ELSEIFLEN(A2$)>9THEN PLAY"DCD":GOTO495
500 IFX=2THEN705
505 S1$="N":PRINT"STATUS. . . .  NOT VERIFIED"
510 IFVAL(C1$)>0THEN V=V-VAL(A2$)ELSEV=V+VAL(A2$)
515 B1$=STR$(V):PRINTUSING"BALANCE      "+CC$;V:GOSUB35
520 PUT#1,R:PRINT"MORE DATA Y/N"
525 A$=INKEY$:IFA$="Y"THEN410ELSEIFA$<>"N"THEN525ELSECLOSE:GOTO100
530 CLOSE:GOTO100
535 IFX1=1THEN415ELSEIFX1=2THEN625
540 IFX2=1THEN530ELSEIFX2=2THEN620
545 'VIEWING ROUTINE
550 GOSUB30:C0$="####"
555 CLS:PRINT@40,"VIEWING RECORDS":PRINT@101,USING"THERE ARE"+C0$+" RECORDS";L:PRINT@138,"IN THE FILE":PRINT@451,"FOR MAIN MENU  PRESS ENTER":PRINT@196,"WHICH RECORD IS VIEWING":PRINT@234,"TO START AT":PRINT:INPUTR
560 IFR<0 OR R>L THEN555ELSEIFR=0THEN CLOSE:GOTO100
565 GET#1,R
570 GOSUB40
575 PRINT@449,"<^> R-1   <SB> R+1   <M> MENU"
580 A$=INKEY$
585 IFA$="^" AND R>1 THEN R=R-1:GOTO605
590 IFA$=CHR$(32) AND R<L THEN R=R+1:GOTO605
595 IFA$="M"THEN555ELSE580
605 GET#1,R:IFVAL(CN$)>0THEN V=V-VAL(AM$)ELSEV=V+VAL(AM$)
608 GOTO570
610 'EDIT ROUTINE
615 GOSUB25:L0=LOF(1):FORD=1TOL0:GET#1,D:D$(D)=CA$:NEXT:CLOSE:X=2:X1=2:X2=2:R9=0:GOSUB30
620 CLS:PRINT@40,"EDITING RECORDS":PRINT@451,"FOR MAIN MENU  PRESS ENTER":PRINT@106,"WHICH RECORD":PRINT@136,"IS TO BE EDITED":INPUTR:IFR<0 OR R>L THEN620ELSEIFR=0 AND R9=0THEN622ELSEIFR>0THEN625ELSEIFR9>0THEN800
622 CLOSE:GOTO100
625 GET#1,R:GOSUB40:PRINT@454,"EDIT THIS RECORD Y/N"
630 A$=INKEY$:IFA$="Y"THEN635ELSEIFA$="N"THEN620ELSE630
635 CLS:PRINT@37,"EDIT CHECK NUMBER Y/N":PRINT@96,"CHECK NUMBER."CN$
640 A$=INKEY$:IFA$="Y"THEN642ELSEIFA$<>"N"THEN640ELSE644
642 GOSUB60:GOTO420
644 C1$=CN$
645 CLS:PRINT@40,"EDIT DEPOSIT NO. Y/N":PRINT@96,"DEPOSIT NO. .";DN$
650 A$=INKEY$:IFA$="Y"THEN652ELSEIFA$<>"N"THEN650ELSE654
652 GOSUB60:GOTO430
654 D1$=DN$:GOTO435
655 CLS:PRINT@40,"EDIT DATE Y/N":PRINT@96,"DATE. . . . ."DT$
660 A$=INKEY$:IFA$="Y"THEN445ELSEIFA$<>"N"THEN660ELSED2$=DT$
665 CLS:PRINT@40,"EDIT PAID TO Y/N":PRINT@96,"PAID TO . . ."PT$
670 A$=INKEY$:IFA$="Y"THEN455ELSEIFA$<>"N"THEN670ELSEP1$=PT$
675 CLS:PRINT@42,"EDIT FOR Y/N":PRINT@96,"FOR . . . . ."FR$
680 A$=INKEY$:IFA$="Y"THEN465ELSEIFA$<>"N"THEN680ELSEF1$=FR$
685 CLS:PRINT@40,"EDIT ACCOUNT Y/N":PRINT@96,"ACCOUNT . . ."AC$
690 A$=INKEY$:IFA$="Y"THEN475ELSEIFA$<>"N"THEN690ELSEA1$=AC$
695 CLS:PRINT@40,"EDIT AMOUNT Y/N":PRINT@96,"AMOUNT. . . ."AM$
700 A$=INKEY$:IFA$="Y"THEN702ELSEIFA$<>"N"THEN700ELSE704
702 GOSUB60:GOTO495
704 A2$=AM$
705 CLS:PRINT@40,"EDIT STATUS Y/N":PRINT@96,"STATIS. . . ."ST$
710 A$=INKEY$:IFA$="Y"THEN715ELSEIFA$<>"N"THEN710ELSES1$=ST$:GOTO720
715 PRINT:INPUT"STATUS. . . .";S1$:PRINTS1$:IF S1$<>"Y" AND S1$<>"N"THEN PLAY"DCD":GOTO715
720 B1$=BL$:GOSUB35:PUT#1,R:GOTO620
725 ' DELETE ROUTINE
730 GOSUB30:OPEN"D",#2,"CHCKTEMP/DAT",157:FIELD#2,9AS TC$,9AS T3$,8AS TD$,50AS TP$,50AS TF$,11AS T1$,9AS T2$,1AS TS$,10AS TB$:R=1:GOSUB55:R9=0:R2=0
735 PRINT@288,"      ":PRINT@256:INPUTR1:IFR1<>0 AND R1<R OR R1>L THEN735ELSEIFR1=0THEN CLOSE:KILL"CHCKTEMP/DAT":GOTO100
740 FORR=1TO L:GET#1,R:IFR=R1 THEN760
745 LSET TC$=CN$:LSET T3$=DN$:LSET TD$=DT$:LSET TP$=PT$:LSET TF$=FR$:LSET T1$=AC$:LSET T2$=AM$:LSET TS$=ST$:LSET TB$=BL$:R2=R2+1:PUT#2,R2
750 NEXTR
755 CLOSE:KILL"CHECK/DAT":RENAME"CHCKTEMP/DAT"TO"CHECK/DAT":IFR9>0THEN799ELSE100
760 GOSUB40:PRINT@453,"DELETE THIS RECORD Y/N?"
765 A$=INKEY$:IFA$=""THEN765ELSEGOSUB55
770 PRINT@288,"      ":PRINT@256:INPUTR1:IFR1<>0 AND R1<=R OR R1>L THEN770
775 IFA$="Y"THEN780ELSE745
780 GOSUB60:GOTO750
799 GOSUB30
800 'ROUTINE FOR RECALCULATING THE BALANCE OF THE RECOREDS
805 IFR9>L THEN CLOSE:GOTO100
806 V=0:IFR9=1THEN808ELSE830
808 FORR=R9 TO L:GET#1,R
810 C1$=CN$:D1$=DN$:D2$=DT$:P1$=PT$:F1$=FR$:A1$=AC$:A2$=AM$:S1$=ST$
815 IFVAL(C1$)>0THEN V=V-VAL(A2$)ELSEV=V+VAL(A2$)
820 B1$=STR$(V):GOSUB35:PUT#1,R:NEXTR:CLOSE:GOTO100
830 R=R9-1:GET#1,R:V=VAL(BL$):GOTO808
850 'INSERT EMPTY RECORD 
855 OPEN"D",#1,"CHECK/DAT",157:FIELD#1,157AS Z$:L=LOF(1):OPEN"D",#2,"TEMP/DAT",157:FIELD#2,157AS Y$
860 R1=0:CLS:PRINT@451,"FOR MAIN MENU PRESS ENTER":PRINT@0:INPUT"   LAST RECORD BEFORE INSERT    ";R9
862 IFR9=0THEN CLOSE:KILL"TEMP/DAT":GOTO100
863 IFR9>L THEN860
865 FORR=1TO R9:GET#1,R:LSET Y$=Z$:R1=R1+1:PUT#2,R1:NEXTR
870 X$="":LSET Y$=X$:R1=R1+1:PUT#2,R1
875 FORR=R9+1 TO LOF(1):GET#1,R:LSET Y$=Z$:R1=R1+1:PUT#2,R1:NEXTR
877 CLOSE:KILL"CHECK/DAT":RENAME"TEMP/DAT"TO"CHECK/DAT":GOTO100
900 CLEAR 2500:FILES 2,400:C$="$######.##":CC$="$#######.##":GOTO 8
