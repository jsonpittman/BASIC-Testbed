0 '<LISTING3> <ANGLO>
5 CLS:CLEAR500
10 A$(1)="  THE ANGLO-SAXONS WERE TWO     CLOSELY RELATED GERMANIC TRIBES LOCATED IN NORTHERN GERMANY FAC-ING THE NORTH SEA."
20 A$(2)=STRING$(14+32,143)
30 A$(3)="  THE JUTES WERE ANOTHER GERMAN-IC TRIBE THAT WAS SITUATED IN   DENMARK, IN WHAT IS NOW CALLED  JUTLAND."
40 A$(4)=STRING$(24+32,143)
50 A$(5)="  AT ABOUT THE SAME TIME, IN THELATE FIFTH CENTURY A.D., DUE TO PRESSURE FROM OTHER GERMANIC    TRIBES, THESE SEA-GOING TRIBES  CROSSED OVER INTO SOUTHERN ENG- LAND."
60 A$(6)=STRING$((27+32),143)
70 A $(7)="  THEY QUICKLY OVERPOWERED THE  REMNANTS OF ROMAN SETTLERS AND  THE INDIGENOUS CELTIC PEOPLES.  IN A FEW HUNDRED YEARS, THE MIX OF GERMANIC TRIBES, ROMAN COLON-ISTS AND CELTIC INHABITANTS     DEVELOPED INTO THE ENGLISH RACE."
80 A$(8)=STRING$(32,143)
90 A$(9)="  LATER SEA-GOING DANES CROSSED THE NORTH SEA AND SETTLED IN    COASTAL NORTHERN ENGLAND.  STILLLATER, THE NORMANS, FRENCH-     SPEAKING DESCENDANTS OF VIKINGS,TOPPLED THE SAXON NATION IN 1066A.D."
100 A$(10)=" THESE INVADERS BROUGHT     THEIR LANGUAGE AND CUSTOMS WITH THEM. THEY WERE SUPERIMPOSED ON THE SAXON INHABITANTS BUT, BY   AND LARGE, THE RACE WAS UN-     CHANGED."
199 'GOTO 299
200 FOR A=1 TO 10
210 FOR B=1 TO LEN(A$(A))
220 PRINTMID$(A$(A),B,1);
230 FOR T=1TO 20:NEXTT,B,A
240 GOTO 240
299 '***
300 FOR T= 0 TO LEN(A$(A))
310 FOR A= 1 TO 10
320 T=LEN(A$(A))
330 FOR Z= 1 TO 3000:NEXT
340 PRINTLEFT$(A$(A),T);
350 NEXTA,T
360 GOTO360
