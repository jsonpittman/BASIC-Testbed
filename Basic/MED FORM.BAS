10 '****************************
20 'AUTHORIZATION TO CONSENT
30 'FOR THE TREATMENT OF A MINOR
40 '****************************
50 'PROGRAM BY J. A. UPPERMAN
60 'BASED ON AN AUTHORIZATION
70 'FORM BY RIVERSIDE METHODIST
80 'HOSPITAL, COLUMBUS, OHIO
90 '****************************
150 'ENTER THE INFORMATION THAT
160 'APPLIES TO YOU AND YOUR
170 'CHILD STARTING AT LINE 1000
180 '***************************
200 CLEAR 1500:GOSUB 1000
210 POKE 282,0
220 CLS:PRINT"AUTHORIZATION TO CONSENT FOR":PRINT"TREATMENT OF:":PRINT CH$:GOSUB 880
230 PRINT"NAME OF PERSON BEING APPOINTED  GUARDIAN?"
240 LINE INPUT GA$:IF GA$="" THEN SOUND 100,1:SOUND 50,2:GOTO 230 ELSE GOSUB 880
250 PRINT"AUTHORIZATION EXPIRES ON NOON":PRINT"OF WHAT DATE?"
260 LINE INPUT EX$:IF EX$="" THEN SOUND 150,1:SOUND 100,2:GOTO 250 ELSE GOSUB 880
270 PRINT"MEDICAL HISTORY ON FILE:": IF HI$="" THEN PRINT:PRINT"<<NOTHING ON FILE AT THIS TIME>>":PRINT:GOTO 290
280 PRINT HI$
290 PRINT"DO YOU WISH TO ADD TO THIS      INFORMATION <y/n>";
300 INPUT YN$:IF YN$="n" OR YN$="N" THEN 330 ELSE IF YN$<>"y" AND YN$<>"Y" THEN 290
310 CLS:PRINT"TYPE IN ADDITIONAL INFORMATION":PRINT"(250 CHARACTERS MAXIMUM)":PRINT
320 LINE INPUT MH$
330 GOSUB 880:PRINT"PARENT SIGNING FORM:"
340 PRINT"1> ";PA$(1):PRINT"2> ";PA$(2):INPUT"ENTER 1 OR 2";PN
350 IF PN<>1 AND PN<>2 THEN 330
360 GOSUB 880
370 PRINT"SET THE PRINTER TO THE TOP OF   THE PAPER"
380 PRINT:INPUT"PRESS <ENTER> WHEN READY.";YN$
390 '***************************
400 'PRINTING FORM
410 CLS:PRINT"PLEASE WAIT - PRINTING FORM":GOSUB 880
420 FOR CT=1 TO 2:PRINT#-2:NEXT
430 PRINT#-2,TAB(14)"AUTHORIZATION TO CONSENT FOR TREATMENT OF A MINOR"
440 PRINT#-2:PRINT#-2,TAB(8)"I hereby grant to: ";GA$
450 PRINT#-2:PRINT#-2,TAB(8)"Authority to give an informed consent for the treatment of:":PRINT#-2,TAB(12)CH$;"  Born: ";DA$:PRINT#-2
460 PRINT#-2,TAB(8)"Should such child require medical care of any nature by reason":PRINT#-2,TAB(8)"of any condition or incident, except that the following procedures":PRINT#-2,TAB(8)"should not be performed without my consent unless the concurring"
470 PRINT#-2,TAB(8)"medical opinion of two physicians is that such procedures are":PRINT#-2,TAB(8)"necessary to relieve the suffering or preserve the life or limb":PRINT#-2,TAB(8)"of such child and I cannot be reached after reasonable attempts."
480 PRINT#-2
490 PRINT#-2,TAB(12)"A> Major Surgery"
500 IF OT$<>"" THEN PRINT#-2,TAB(12)"B> ";OT$
510 PRINT#-2
520 PRINT#-2,TAB(8)"Facts concerning the child's history, including allergies,":PRINT#-2,TAB(8)"physical impairments and medications being taken, to which a":PRINT#-2,TAB(8)"physician should be alerted are as follows:"
530 PRINT#-2
540 IF HI$="" AND MH$="" THEN PRINT#-2,TAB(12)"No special instructions at this time.":GOTO 680
550 A$=HI$+" "
560 IF A$="" OR A$=" " THEN 610
570 FOR CT=60 TO 1 STEP-1
580 IF MID$(A$,CT,1)<>" "THEN NEXT
590 B$=LEFT$(A$,CT):PRINT#-2,TAB(12);B$
600 A=LEN(A$):A$=RIGHT$(A$,(A-CT)):GOTO 560
610 PRINT#-2
620 C$=MH$+" "
630 IF C$="" OR C$=" " THEN 680
640 FOR CT=60 TO 1 STEP-1
650 IF MID$(C$,CT,1)<>" "THEN NEXT
660 D$=LEFT$(C$,CT):PRINT#-2,TAB(12);D$
670 C=LEN(C$):C$=RIGHT$(C$,(C-CT)):GOTO 630
680 PRINT#-2
690 IF PE$<>"" THEN PRINT#-2,TAB(8)"Our Pediatrician is:  ";PE$:PRINT#-2,TAB(12)"Phone:";PP$:PRINT#-2
700 IF FA$<>"" THEN PRINT#-2,TAB(8)"Our family physician is:  ";FA$:PRINT#-2,TAB(12)"Phone:";FP$:PRINT#-2
710 IF DE$<>"" THEN PRINT#-2,TAB(8)"Our Dentist is:  ";DE$:PRINT#-2,TAB(12)"Phone:";DP$:PRINT#-2
720 PRINT#-2,TAB(8)"Our Hospital of choice is: ";
730 IF HO$="" THEN PRINT#-2,"No specific Hospital":PRINT#-2 ELSE PRINT#-2,HO$:PRINT#-2
740 IF HE$<>"" THEN PRINT#-2,TAB(8)"Our Health Insurance Plan is: ";HE$:PRINT#-2,TAB(12)"I.D. Number: ";ID$:PRINT#-2
750 PRINT#-2,TAB(8)"This authorization expires at noon on ";EX$
760 PRINT#-2:PRINT#-2:PRINT#-2:PRINT#-2,TAB(8)STRING$(24,"-");TAB(40);STRING$(32,"-")
770 PRINT#-2,TAB(8)"Witness";TAB(40);"Parent's Signature        Date"
780 PRINT#-2:PRINT#-2,TAB(40);PA$(PN)
790 PRINT#-2,TAB(40);ST$
800 PRINT#-2,TAB(40);CI$
810 PRINT#-2,TAB(40);"Home Phone: ";HP$
820 IF WP$(PN)<>"" THEN PRINT#-2,TAB(40)"Work Phone: ";WP$(PN)
830 PRINT#-2,CHR$(12); 'FORM FEED -OMIT IF YOUR PRINTER DOES NOT   ACCEPT IT.
840 CLS:PRINT"THE FORM FOR ":PRINTCH$:PRINT"IS FINISHED PRINTING."
850 POKE 282,255
860 END
870 '***************************
880 PRINT STRING$(32,"*"):RETURN
900 '***************************
910 'SUBSTITUTE THE INFORMATION THAT APPLIES TO YOU AND YOUR    CHILD ON THE FOLLOWING LINES.
920 'note!  ANY LINE THAT DOES  NOT APPLY TO YOU OR YOUR CHILD, SUCH AS A SPECIFIC TYPE OF DOC- TOR OR PARENT'S WORK PHONE NUM- BER MAY BE OMITTED OR PRECEDED  WITH AN APOSTROPHE <'>.  THE    COMPUTER WILL SKIP THAT ENTRY ONTHE FORM.
990 '***************************
1000 CH$="John E. Doe Jr."  'CHILD'S NAME
1010 DA$="January 1, 1978" 'CHILD'S DATE OF BIRTH
1020 OT$="Treatment with penicillin based antibiotics"'OTHER TREATMENT RESTRICTED. 50 CHARACTERS MAXIMUM.
1030 HI$="John Jr. is allergic to Penicillin."
1040 'HI$ IS THE CHILD'S MEDICAL HISTORY.  240 CHARACTER MAXIMUM LENGTH.
1050 PE$="A. Kiddedoc M.D." 'PEDIATRICIAN
1060 PP$="(614) 555-1234" 'PEDIATRICIAN'S PHONE
1070 FA$="I. Kurem, M.D. "  'FAMILY DOCTOR
1080 FP$="(614) 555-5678" 'FAMILY DOCTOR'S PHONE
1090 DE$="I Yankum D.D.S." 'FAMILY DENTIST
1100 DP$="(614) 555-9012" 'DENTIST'S PHONE 
1110 HO$="County General Hospital West" 'HOSPITAL OF CHOICE
1120 HE$="Blue Cross" 'HEALTH INSURANCE
1130 ID$="1122-33445" 'I.D. NUMBER
1140 PA$(1)="Mr. John E. Doe, Sr." 'FATHER'S NAME
1150 PA$(2)="Mrs. Jane Doe" 'MOTHER'S NAME
1160 ST$="123 E. Main St." 'STREET ADDRESS
1170 CI$="Anytown, Ohio 43210" 'CITY AND STATE
1180 HP$="(614) 555-9876" 'HOME PHONE
1190 WP$(1)="(614) 555-5432" ' FATHER'S WORK PHONE
1200 WP$(2)="(614) 555-2345" ' MOTHER'S WORK PHONE
1210 RETURN
