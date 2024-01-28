2 CLS(0):CLEAR2000,&H7D00:POKE&H7D04,1
5 Z$=INKEY$:IFZ$=""THEN5
6 Z$=INKEY$:IFZ$=""THEN6
20 PRINT"Welcome to Galactic Conflict"'PUT ANY MESSAGE HERE
40 R=42:DIMY(16),A(16):GOSUB2000:SZ=A(3):DIMG(SZ,SZ):Y(14)=32
50 FORZ=1 TO 8:READD$(Z):NEXT:FORZ=0 TO 7:READ RK$(Z):NEXT:FOR Z=0 TO 6:READTW(Z):NEXT
70 PRINTCHR$(12)
100 PRINT:B$=STRING$(23,"*"):A$=B$:GOSUB1000:A$="*  Galactic Conflict  *":GOSUB1000:A$="*    by Paul Alger    *":GOSUB1000:A$=B$:GOSUB1000:PRINT:PRINT
105 PRINT:R=42:GOSUB2000:LD$=A1$:RK$=B1$:CR=A(1):NR=A(2):SZ=A(3):LV=A(4):NC=A(5):WG=A(6):A$="Galaxy size:"+STR$(SZ)+" x"+STR$(SZ):GOSUB1000:A$="No. of levels:"+STR$(LV):GOSUB1000:PRINT
106 IF WG=1 THENPRINT"The game has been won by ";TP$(1):PRINT"Do you want to play anyway? (Y/N): ";:GOSUB1500:IFZ$="N"ORZ$="n"THEN9999
110 IF TR<3 THENPRINT:PRINT"NEW for new user!":PRINT"Enter Account #: ( 1 to";NR;") ";:GOSUB1500ELSE9999
120 IF Z$="NEW" OR Z$="new" THEN 5000
130 IF Z<1 OR Z>NR THEN PRINT:PRINT"The Galactic Police are watching!":TR=TR+1:GOTO110
140 R=Z:Y(0)=Z:GOSUB2000:ZL$=A1$:PRINT:PRINTA1$;", enter your password. ";:POKE&H7D03,36:GOSUB1500:POKE&H7D03,0
150 IF Z$=B1$ THEN 160 ELSE PRINT:PRINT"The Galactic Police eye you suspisiously!":GOTO110
160 NC=NC+1:POKE&H7D04,0:Y$(1)=A1$:Y$(2)=B1$:FORZ=1TO16:Y(Z)=A(Z):NEXT:R=41:GOSUB2000
162 LP$=Y$(1)':IFY$(1)=LEFT$(LP$(9),LEN(Y$(1))) THENPRINT"No back to back calls!":GOTO9999
165 A1$=LP$:GOSUB2100
170 Y(11)=Y(11)+1:PRINT:PRINT:A$="Welcome back "+Y$(1)+"!!":GOSUB1000:A$="This is turn number"+STR$(Y(11))+".":GOSUB1000
180 PRINT:PRINT:A$=RK$+" "+LD$+" is leading with"+STR$(CR)+" credits.":GOSUB1000:A$="There are"+STR$(NR)+" players playing.":GOSUB1000:PRINT:GOSUB4000:PRINT"Top Five:":PRINT:GOSUB8100
190 GOSUB1100
192 PRINT:R=Y(0):GOSUB2000:GOSUB6000
194 Z=Y(5)*(900+RND(200)):Y(6)=Y(6)+Z:PRINT"Your base(s) made";Z;"credits!"
195 Z=0:Z1=0:IF Y(8)>0 THEN Z=FIX(Y(8)*.1):Y(8)=Y(8)+Z
196 IF Y(7)>0 THEN Z1=FIX(Y(7)*.07):Y(7)=Y(7)+Z1
197 PRINT:PRINT"Interest on savings:";Z1:PRINT"Interest on loan:   ";Z:PRINT
198 GOSUB1100:PRINT:GOSUB3000
199 X=Y(9):Y=Y(10):MV=25
280 Z1$="LEVEL"+STR$(Y(15))+"/DAT":PRINT:PRINT"Loading galaxy":PRINT"Start";STRING$(SZ-13," ");"Finished":OPEN"I",#1,Z1$:FORX1=1TOSZ:FORY1=1TOSZ:INPUT#1,G(X1,Y1):NEXTY1:PRINT".";
281 NEXTX1:CLOSE#1:PRINT:PRINT
284 PRINT:IFY(11)=1THENPRINT"You start the game off in sector1,1"ELSEPRINT"You left off last time in sector";X;",";Y:G(X,Y)=G(X,Y)-50
290 PRINT:GOTO3100
300 'COMMAND LEVEL START
310 GOSUB4000
320 IF MV<1 THEN 4802
340 PRINT:PRINT"Sector";X;",";Y;"Level";Y(15):PRINTMV;"move(s) left."
350 PRINT:PRINT"Cmd>> ";:GOSUB1500:PRINT
360 IF LEFT$(Z$,1)="?" THEN 500
365 IF Z$="LST" OR Z$="lst" THEN 9000
370 IF Z$="STA" OR Z$="sta" THEN GOSUB3000:GOTO300
380 IF Z$="SRS" OR Z$="srs" THEN3100
390 IF Z$="TRA" OR Z$="tra" THEN 3300
400 IF Z$="NAV" OR Z$="nav"THEN 4100
410 IF Z$="WAR" OR Z$="war" THEN 4200
415 IF Z$="CAL" OR Z$="cal" THEN GOSUB8200:GOTO300
417 IF Z$="RUL"ORZ$="rul"THENGOSUB9100:GOTO300
420 IF Z$="TLP" OR Z$="tlp" THEN4400
430 IF Z$="GET" OR Z$="get" THEN 4500
440 IF Z$="BUI" OR Z$="bui" THEN 4600
450 IF Z$="END" OR Z$="end" THEN 4800
460 IF Z$="LRS" OR Z$="lrs" THEN 4700
470 IF Z$="LVL" OR Z$="lvl" THEN 7000
480 IF Z$="TOP" OR Z$="top"THEN GOSUB8100:GOTO300
490 PRINT:PRINT"No comprendo!":GOTO300
500 'COMMAND LIST
510 PRINT:PRINT:A$="Available Commands":GOSUB1000:PRINT:A$="Command           Description":GOSUB1000:A$=STRING$(29,"-"):GOSUB1000:A$="NAV        Navigation command":GOSUB1000
520 A$="STA        Your current Status":GOSUB1000:A$="TRA        Trade at Outpost   ":GOSUB1000:A$="WAR        Declare War on user":GOSUB1000:A$="LRS        Long range scan    ":GOSUB1000:A$="SRS        Short range scan   ":GOSUB1000
530 A$="BUI        Build your base   ":GOSUB1000:A$="TLP        Teleport your fleet":GOSUB1000:A$="GET        Get cargo          ":GOSUB1000
540 A$="LVL        Change levels     ":GOSUB1000:A$="LST        List players       ":GOSUB1000
545 A$="CAL        Last nine callers ":GOSUB1000:A$="RUL        Display rules      ":GOSUB1000
550 A$="TOP        List top 5 players":GOSUB1000:A$="END        End your turn     ":GOSUB1000:GOTO300
1000 'Print centered
1020 IF LEN(A$)<Y(14) THEN PRINTTAB((Y(14)-LEN(A$))/2);A$ ELSE PRINTA$
1099 RETURN
1100 'Print Continue Prompt with MCI trick
1102 A$="Hit /RETURN/ to continue: "
1110 PRINTA$;
1120 Z$=INKEY$
1130 IF Z$=CHR$(13) THEN 1150 ELSE 1120
1150 FOR Z=1 TO LEN(A$)
1160 PRINTCHR$(8);
1170 NEXTZ:PRINT"Thank you!"
1180 RETURN
1500 'INPUT ROUTINE
1510 LINEINPUTZ$:Z=VAL(Z$):RETURN
2000 'GET RECORD
2010 OPEN"D",#1,"GALAXUSR/DAT",200
2020 FIELD #1,10 AS A$,10 AS B$,80 AS C$,100 AS D$
2035 GET#1,R:A1$=A$:B1$=B$:C1$=C$:D1$=D$:CLOSE#1
2050 Z1=1:FOR Z=1TO80 STEP 5:Z$=MID$(C1$,Z,5):A(Z1)=CVN(Z$):Z1=Z1+1:NEXT
2055 IFR<41 THENZ1=0:FOR Z=1 TO50 STEP5:Z$=MID$(D1$,Z,5):B(Z1)=CVN(Z$):Z1=Z1+1:NEXT:AT$=RIGHT$(D1$,50)
2056 IF R=41 THEN Z1=0:FORZ=1TO100 STEP 10:LP$(Z1)=MID$(D1$,Z,10):Z1=Z1+1:NEXT
2057 IF R=42 THEN Z1=1:FOR Z=1 TO 100 STEP 20:TP$(Z1)=MID$(D1$,Z,10):TP(Z1)=CVN(MID$(D1$,Z+10,5)):TU(Z1)=CVN(MID$(D1$,Z+15,5)):Z1=Z1+1:NEXT
2058 FOR Z=1 TO LEN(B1$):IF RIGHT$(B1$,1)=" " THEN B1$=LEFT$(B1$,LEN(B1$)-1):GOTO2058
2059 IF RIGHT$(A1$,1)=" " THEN A1$=LEFT$(A1$,LEN(A1$)-1):GOTO2059
2060 RETURN
2100 'PUT RECORD
2102 D1$="":C1$="":FOR Z=1TO16:C1$=C1$+MKN$(A(Z)):NEXT:IFR<41 THENFORZ=0 TO 9:D1$=D1$+MKN$(B(Z)):NEXT:D1$=D1$+AT$
2103 IF R=41 THEN FORZ=1 TO 9:LP$(Z-1)=LP$(Z):D1$=D1$+LP$(Z):NEXT:D1$=D1$+LP$
2104 IF R=42 THEN FORZ=1TO5:D1$=D1$+TP$(Z)+MKN$(TP(Z))+MKN$(TU(Z)):NEXT
2110 OPEN"D",#1,"GALAXUSR/DAT",200
2120 FIELD#1,10 AS A$,10 AS B$,80 AS C$,100 AS D$
2130 LSET A$=A1$:LSET B$=B1$:LSET C$=C1$:LSET D$=D1$
2140 PUT#1,R
2150 CLOSE#1:RETURN
3000 'STATUS REPORT
3010 PRINT:PRINT"You currently have:":PRINT:FORZ=1 TO 8:PRINTUSING"##,###,###";Y(Z);:PRINT"  ";D$(Z):NEXT
3020 PRINTUSING"##,###,###";Y(13);:PRINT"  Power scanner":TW=(Y(1)*100000)+(Y(2)*5000)+(Y(3)*2500)+(Y(4)*2500)+(Y(5)*10000)+Y(6)+Y(7)-Y(8)+(Y(13)*20000):PRINT"---------------------------":PRINTUSING"##,###,###";TW;:PRINT"  Total worth"
3030 PRINT:PRINT:GOSUB1100:RETURN
3100 'SHORT RANGE SCAN
3110 PRINT"Sensors indicate:":WR=0:CG=0:NU=0:YB=0
3115 IF X<1 OR X>SZ OR Y<1 OR Y>SZ THEN PRINT"Nothing! (You left the Universe)":GOTO300
3120 IF G(X,Y)=99 THEN PRINT"A Trading Outpost.":GOTO300
3130 IF G(X,Y)=50 THEN PRINT"A Stargate!!":GOTO300
3150 IF G(X,Y)>40 AND G(X,Y)<50 THEN Z=G(X,Y)-40:PRINT"A class";Z;"Robodroid!!":WR=3:GOTO4200
3160 IF G(X,Y)=0 THEN PRINT"A neutral planet with no cargo.":NU=1:GOTO300
3170 IF G(X,Y)>90 AND G(X,Y)<99 THEN 8000
3180 Z$=STR$(G(X,Y)):Z1$=RIGHT$(Z$,2):UN=VAL(Z1$)
3190 IF LEN(Z$)>4 THEN Z2$=LEFT$(Z$,2):C=VAL(Z2$):Z3$=MID$(Z$,3,1):B=VAL(Z3$) ELSE Z2$="":C=0:Z3$=LEFT$(Z$,2):B=VAL(Z3$)
3200 IF UN=0 THEN PRINT"A neutral planet with";C;"cargo bays!":CG=C:NU=1:GOTO300
3205 IFC>0 THEN PRINTC;"cargo bay(s) and ";
3210 IF UN=Y(0) THEN PRINT"Your planet with";B;"base(s).":CG=C:YB=1:GOTO300
3220 IF UN>50 THEN WR=2:PRINT"An enemy fleet!!":UN=UN-50:IF UN>0 AND UN<=NR THEN R=UN:GOSUB2000:PRINT"The fleet belongs to:":PRINT"-=< ";RK$(A(12));" ";A1$;" >=-":PRINT"There are";A(2);"fighters deployed!":GOTO300
3230 IF UN>0 AND UN<41 THEN WR=1:PRINT"An enemy planet with";B;"base(s)!":IF UN>0 AND UN<=NR THEN R=UN:GOSUB2000:PRINT"This planet belongs to:":PRINT"-=< ";RK$(A(12));" ";A1$;" >=-":GOTO300
3240 WR=0:PRINT"This object is not recognized!":PRINT"I'm going to neutralize this sector!":G(X,Y)=0:GOTO300
3300 'TRADING BASE
3310 IF G(X,Y)<>99 THEN PRINT"There is no Trading Outpost here!":GOTO300
3320 PRINT:PRINT"Welcome to our Outpost.":PRINT:PRINT"[B] Buy goods":PRINT"[S] Sell goods":PRINT"[C] Credit Union":PRINT"[Q] Quit"
3330 PRINT:PRINT"Outpost>> ";:GOSUB1500
3340 IF Z$="B" OR Z$="b" THEN 3400
3350 IF Z$="S" OR Z$="s" THEN3500
3360 IF Z$="C" OR Z$="c" THEN3600
3370 IF Z$="Q" OR Z$="q" THEN 300
3380 IF Z$="?" THEN 3320
3385 PRINT"No comprendo!":GOTO3330
3400 'BUY
3405 P1=100000+RND(25000):P2=18000+RND(3000):P3=4000+RND(2000):P4=2000+RND(1000):P5=100+RND(100)
3410 PRINT:PRINT"Items available":PRINT:PRINT"No.   Description     Price":PRINTSTRING$(27,"-"):PRINT" 1.   Flagship      ";P1:PRINT" 2.   Scanner        ";P2
3420 PRINT" 3.   Fighter         ";P3:PRINT" 4.   Base kit        ";P4:PRINT" 5.   Quit             ";P5
3430 PRINT:PRINT"You have";Y(6);"credits.  Your choice (1-5) or ?: ":PRINT"Buy>> ";:GOSUB1500
3440 IF Z$="?" THEN 3410
3450 IF Z<1 OR Z>5 THEN 3430
3460 ON Z GOTO 3470,3475,3480,3485,3490
3470 Z=FIX(Y(6)/P1):IF Z=0 THENPRINT"You can't afford a Flagship!":GOTO3430 ELSE PRINT"You can buy";Z;"Flagship(s)."
3472 PRINT"How many do you want? ";:GOSUB1500:Z1=VAL(Z$):IF Z1>0 AND Z1<=Z THEN PRINT"Done..":Y(6)=Y(6)-(P1*Z1):Y(1)=Y(1)+Z1:GOTO3430 ELSE PRINT "No sale!!":GOTO3430
3475 Z=FIX(Y(6)/P2):IF Z=0 THENPRINT"You can't afford a Scanner!":GOTO3430 ELSE PRINT"You can buy";Z;"Scanner(s)."
3477 PRINT"How many do you want? ";:GOSUB1500:Z1=VAL(Z$):IF Z1>0 AND Z1<=Z THEN PRINT"Done..":Y(13)=Y(13)+Z1:Y(6)=Y(6)-(P2*Z1):GOTO3430 ELSEPRINT"No sale!!":GOTO3430
3480 Z=FIX(Y(6)/P3):IF Z=0 THENPRINT"You can't afford a Fighter!":GOTO3430 ELSEPRINT"You can buy";Z;"Fighter(s)."
3482 PRINT"How many do you want? ";:GOSUB1500:Z1=VAL(Z$):IF Z1>0 AND Z1<=Z THENPRINT"Done..":Y(6)=Y(6)-(P3*Z1):Y(2)=Y(2)+Z1:GOTO3430 ELSEPRINT"No sale!!":GOTO3430
3485 Z=FIX(Y(6)/P4):IF Z=0 THENPRINT"You can't afford a Base kit!":GOTO3430 ELSEPRINT"You can buy";Z;"Base kit(s).":
3487 PRINT"How many do you want? ";:GOSUB1500:Z1=VAL(Z$):IF Z1>0 AND Z1<=Z THENPRINT"Done..":Y(6)=Y(6)-(P4*Z1):Y(4)=Y(4)+Z1:GOTO3430 ELSEPRINT"No sale!!":GOTO3430
3490 Y(6)=Y(6)-P5:GOTO3300
3500 'SELL
3505 PRINT:PRINT
3507 IF Y(3)<1 AND Y(1)<2 THEN PRINT"You have nothing I want!":GOTO3300
3510 IF Y(3)>0 THEN PRINT"I see you have";Y(3);"Cargo bays.":P1=Y(3)*(2000+RND(1000)):PRINT"I'll give you";P1;"for it.":PRINT"Want to sell? (Y/N): ";:GOSUB1500:IF Z$="Y" OR Z$="y" THENPRINT"Done..":Y(6)=Y(6)+P1:Y(3)=0 ELSEPRINT"No cargo sold."
3520 IF Y(1)>1 THEN PRINT"I see you have";Y(1)-1;"Flagships.":P1=90000+RND(1000):PRINT"I'll give you";P1;"for one.":PRINT"Want to sell? (Y/N) ";:GOSUB1500:IF Z$="Y" OR Z$="y" THENPRINT"Done..":Y(1)=Y(1)-1:Y(6)=Y(6)+P1 ELSEPRINT"No Flagships sold."
3530 PRINT:PRINT"I see nothing else that I want.":GOTO3300
3600 'BANK
3610 PRINT:A$="Welcome to Galactic Federal.":GOSUB1000:PRINT
3620 A$="[D] Deposit   ":GOSUB1000:A$="[W] Withdraw  ":GOSUB1000:A$="[S] Statement ":GOSUB1000:A$="[L] Loan      ":GOSUB1000:A$="[Q] Quit bank ":GOSUB1000:PRINT
3630 PRINT:PRINT"Bank":PRINT"Your choice or ?: ";:GOSUB1500:PRINT
3640 IF Z$="?" THEN 3610
3650 IF Z$="D" OR Z$="d" THEN3750
3660 IF Z$="W" OR Z$="w" THEN3800
3670 IF Z$="S" OR Z$="s" THEN PRINT"Credits on hand: ";Y(6):PRINT"Credits on loan: ";Y(8):PRINT"Credits in Bank: ";Y(7):PRINT:GOTO3630
3680 IF Z$="Q" OR Z$="q" THEN 3300
3690 IF Z$="L" OR Z$="l" THEN 3710
3700 GOTO3630
3710 IF TW<500000 THEN PRINT"The loan officer throws you out!!":GOTO3630
3720 PRINT"I see you are worth";TW:PRINT"I'll loan you up to";:Z=FIX(TW/2):PRINTZ:PRINT"The terms are 10% per turn.":PRINT
3730 PRINT"Enter amount. Max is";Z;:GOSUB1500:Z1=VAL(Z$)
3740 IF Z1<0 OR Z1>Z THEN 3730 ELSE Y(6)=Y(6)+Z1:Y(8)=Y(8)+Z1:GOTO3630
3750 'SAVINGS
3752 IF Y(6)<0 THEN Y(6)=0
3755 IF Y(8)>0 THENPRINT"You have an outstanding loan.":PRINT"Any deposits made will go against it."
3760 PRINT:PRINT"Enter amount of deposit.":PRINT"Max is";Y(6);": ";:GOSUB1500:Z=VAL(Z$):IF Z<0 OR Z>Y(6) THEN3760
3770 IF Y(8)>0 THEN Y(8)=Y(8)-Z:Y(6)=Y(6)-Z:IF Y(8)=<0 THEN Y(7)=Y(7)+ABS(Y(8)):Y(8)=0:PRINT"You have paid off your loan!":GOTO3780
3775 IF Y(8)=0 THENY(7)=Y(7)+Z:Y(6)=Y(6)-Z
3780 PRINT"Done..":GOTO3630
3800 'WITHDRAW
3810 PRINT:PRINT"Enter amount of withdrawal.":PRINT"Max is";Y(7);": ";:GOSUB1500:Z=VAL(Z$):IF Z<0 OR Z>Y(7) THEN3810 ELSE Y(6)=Y(6)+Z:Y(7)=Y(7)-Z:PRINT"Done..":GOTO3630
4000 'TW CALC
4010 TW=(Y(1)*100000)+(Y(2)*5000)+(Y(3)*2500)+(Y(4)*2500)+(Y(5)*10000)+Y(6)+Y(7)-Y(8)+(Y(13)*20000)
4020 IF TW>TW(Y(12)) AND Y(12)<7 THEN Y(12)=Y(12)+1:PRINT:PRINT"Congratulations!":PRINT"You have been promoted to ";RK$(Y(12)):IFY(12)=7 THENPRINT"You just won the game!!":WG=1
4030 IF Y(12)>0 THEN IF TW<TW(Y(12)-1) THEN Y(12)=Y(12)-1:PRINT:PRINT"Sorry..":PRINT"You have been demoted to ";RK$(Y(12))
4050 TP$=Y$(1):TU(6)=0:TP$(6)="NONAME    ":TP(6)=0:L=0:FORZ=1TO5:IFTU(Z)=Y(0)THEN L=Z:Z=6
4051 NEXT
4052 IF LEN(TP$)<10 THEN TP$=TP$+" ":GOTO4052
4055 IFL=0THEN4065
4060 FOR Z=L TO 5:TP$(Z)=TP$(Z+1):TP(Z)=TP(Z+1):TU(Z)=TU(Z+1):NEXT
4065 L=0:FORZ=1TO5:IFTW>TP(Z)THENL=Z:Z=6
4070 NEXT:IF L>0 THEN 4075 ELSERETURN
4075 FORZ=5 TO L+1 STEP-1:TP$(Z)=TP$(Z-1):TP(Z)=TP(Z-1):TU(Z)=TU(Z-1)
4080 NEXT:TP$(L)=TP$:TP(L)=TW:TU(L)=Y(0):RETURN
4100 'NAV
4110 PRINT:PRINT"Enter course. (1-8): ";:GOSUB1500:Z2=FIX(VAL(Z$)):IF Z2<1 OR Z2>8 THENPRINT"Nav aborted!":GOTO300
4120 PRINT:PRINT"Enter warp factor. (1-8): ";:GOSUB1500:Z1=FIX(VAL(Z$)):IF Z1<1 OR Z1>8 THENPRINT"Nav aborted!":GOTO300
4130 IF Z2=1 THEN Y=Y-Z1
4140 IF Z2=2 THEN Y=Y-Z1:X=X+Z1
4150 IF Z2=3 THEN X=X+Z1
4160 IF Z2=4 THEN X=X+Z1:Y=Y+Z1
4165 IF Z2=5 THEN Y=Y+Z1
4170 IF Z2=6 THEN X=X-Z1:Y=Y+Z1
4180 IF Z2=7 THENX=X-Z1
4190 IF Z2=8 THENX=X-Z1:Y=Y-Z1
4199 MV=MV-1:GOTO290
4200 'WAR
4210 IF WR=0 THENPRINT"There is nobody here to attack!":GOTO300
4212 :IFWR=2 AND B(9)<>0 THENPRINT"That player has been attacked!":GOTO300
4215 FORZ=0 TO 8:IF B(Z)<1THENAK=Z:Z=10:NEXTELSE AK=8:NEXT
4216 O$="0":PN$=STR$(Y(0)):IF LEN(PN$)>2 THEN PN$=RIGHT$(PN$,2) ELSE PN$="0"+RIGHT$(PN$,1)
4217 X$=STR$(X):IF LEN(X$)>2 THEN X$=RIGHT$(X$,2)ELSEX$="0"+RIGHT$(X$,1)
4218 LE$=STR$(Y(15)):LE$=RIGHT$(LE$,1):Y$=STR$(Y):IF LEN(Y$)>2 THEN Y$=RIGHT$(Y$,2)ELSEY$="0"+RIGHT$(Y$,1)
4220 IF WR=1 THENPRINTA1$;"'s planet has";B;"base(s).":ST=B*3
4230 IF WR=2 THENPRINTA1$;"'s fleet has";A(2);"fighters deployed!":ST=A(2)
4240 IF WR=3THENST=(G(X,Y)-40)*Y(15):PRINT"The Robodroid is attacking!":Z=RND(3):IFZ=3 THENPRINT"The Robodroid surprized you!":Z1=FIX((RND(10)*.01)*Y(2)):IF Z1>0 THENPRINT"He captured";Z1;"of your fighter(s)!":Y(2)=Y(2)-Z1:ST=ST+Z1
4245 IF WR=3THENPRINT"He has";ST;"fighters deployed!"
4250 PRINT:PRINT"How many fighters will you deploy?":PRINT"Max is";Y(2);": ";:GOSUB1500:Z=VAL(Z$):IF Z<0 OR Z>Y(2) THEN 4250
4260 IF WR<>3 AND Z=0 THENPRINT"Attack Aborted!":GOTO300
4270 PRINT:YS=Z:FORQ=1TO3:PRINT"CONDITION RED!!";:FORQ1=1 TO 15:PRINTCHR$(8);:NEXTQ1,Q:PRINT"CONDITION RED!!"
4280 PRINT"You        Enemy":PRINTSTRING$(15," ");
4290 PRINTSTRING$(15,8);:Z1$=STR$(YS):Z2$=STR$(ST):Z1=LEN(Z1$)+LEN(Z2$):Z3$=STRING$(15-Z1," "):Z4$=Z1$+Z3$+Z2$:PRINTZ4$;
4295 IFYS<1 OR ST<1 THEN 4310
4300 Z1=RND(100):IF Z1>60 THEN YS=YS-1 ELSEST=ST-1
4305 GOTO4290
4310 PRINT:PRINT:PRINT:IF YS>0 THENST=0:PRINT"You won!!" ELSE IF ST>0 THENYS=0: PRINT"You lost!!":ELSEPRINT"It was a draw."YS=0:ST=0
4315 PRINT"You lost";Z-YS;"fighters.":Y(2)=Y(2)-(Z-YS):IF YS<1 AND Y(2)>0 THENPRINT"Do you want to deploy more fighters? (Y/N): ";:GOSUB1500:IF Z$="Y" OR Z$="y" THEN4250
4320 IF WR=1 AND ST<1 THEN A(5)=A(5)-B:G(X,Y)=G(X,Y)-UN+Y(0):Y(5)=Y(5)+B:PRINT"You have conquered this planet!":CD$="1":B(AK)=VAL(CD$+LE$+X$+Y$+PN$):GOSUB2100:GOTO290
4325 IF WR=1 THENPRINTA1$;"'s planet survived your attack!":CD$="2":B(AK)=VAL(CD$+LE$+X$+Y$+PN$):GOSUB2100:GOTO300
4330 IF WR=2 AND ST<1 THENPRINT"You beat ";A1$;"'s fleet!":PRINT"You get:":PRINTA(6);"credits.":Y(6)=Y(6)+A(6):A(6)=0:PRINTA(3);"cargo bays.":Y(3)=Y(3)+A(3):A(3)=0:Z1=FIX(A(2)/4):PRINTZ1;"fighters.":Y(2)=Y(2)+Z1:A(2)=1:GOSUB4360:GOSUB2100:GOTO300
4335 IF WR=2 THENPRINTA1$;"'s fleet won!":PRINT"Troups board your Flagship and":PRINT"take all cargo and credits!":A(2)=A(2)+FIX(Z/4):A(3)=A(3)+Y(3):Y(3)=0:A(6)=A(6)+Y(6):Y(6)=0:CD$="3":B(AK)=VAL(CD$+LE$+X$+Y$+PN$):GOSUB2100:GOTO300
4340 IF WR=3 AND ST<1 THENPRINT"You beat the Robodroid!":Z1=(G(X,Y)-40+Y(15))*(5000+RND(2000)):PRINT"He had";Z1;"credits!":Y(6)=Y(6)+Z1:G(X,Y)=0:GOTO290
4350 IF WR=3 THENPRINT"The Robodroid takes all your money!":PRINT"He tows your fleet away...":Y(6)=0:X=RND(SZ-2)+1:Y=RND(SZ-2)+1:GOTO290
4360 'GET WINNERS COMMENT
4370 B(9)=Y(0):PRINT:PRINT"Enter comment to ";A1$;" (50 chrs max)":AT$="Gotcha!!!":PRINT"<CR>=";AT$:GOSUB1500:IF LEN(Z$)>1 THENAT$=Z$
4380 RETURN
4400 'TLP
4410 IF G(X,Y)<>50 THEN PRINT"There is no Stargate here!":GOTO300
4420 PRINT"Enter X coordinate: ";:GOSUB1500:X=VAL(Z$):PRINT"Enter Y coordinate: ";:GOSUB1500:Y=VAL(Z$):GOTO290
4500 'GET
4510 IF CG=0THENPRINT"No cargo here!":GOTO300
4520 Z=Y(1)*10:IF Y(3)+CG>Z THENPRINT"It all won't fit!":C1=Z-Y(3):CG=CG-C1:Y(3)=Z:G(X,Y)=G(X,Y)-(C1*1000):GOTO290
4530 Y(3)=Y(3)+CG:G(X,Y)=G(X,Y)-(CG*1000):GOTO290
4599 'BUI
4600 IF NU=0 THENPRINT"You can't build a base here!":GOTO290
4605 IF Y(4)>Y(15) THENZ1=Y(15)ELSEZ1=Y(4)
4610 PRINT"Build how many bases?":PRINT"Max is";Z1;":";:GOSUB1500:Z=VAL(Z$):IF Z<0 OR Z>Z1 THEN4610
4620 IF Z=0THEN300
4630 G(X,Y)=G(X,Y)+(Z*100)+Y(0):Y(4)=Y(4)-Z:Y(5)=Y(5)+Z:GOTO290
4700 'LRS
4705 IF Y(13)<1 THENPRINT"You don't have a scanner!":GOTO300
4710 PRINT"Scan how far? Max is";Y(13);:GOSUB1500:Z=VAL(Z$):IF Z<0 OR Z>Y(13) THEN4710
4715 Y3=Y-Z:Y4=Y+Z:X3=X-Z:X4=X+Z
4720 FOR Y2=Y3 TO Y4:FOR X2=X3 TO X4
4725 IF X2=X AND Y2=Y THENPR$="^":GOTO4780
4730 IF X2>0 AND X2<21 AND Y2>0 AND Y2<21 THENLC$=STR$(G(X2,Y2))ELSEPR$="*":GOTO4780
4735 Z=VAL(RIGHT$(LC$,2)):IF Z=0 AND G(X2,Y2)>0 THEN PR$=STR$(FIX(G(X2,Y2)/1000)):PR$=RIGHT$(PR$,1):GOTO4780
4740 IF Z=50 THENPR$="S":GOTO4780
4745 IF Z>40 AND Z<50 THENPR$="R":GOTO4780
4750 IF Z>90 AND Z<99 THEN PR$="?":GOTO4780
4755 IF Z=99 THEN PR$="T":GOTO4780
4760 IF Z=Y(0) THEN PR$="$":GOTO4780
4765 IF Z>50 THEN PR$="#":GOTO4780
4770 IF Z>0 AND Z<41 THENPR$="E":GOTO4780
4775 IF Z=0 THEN PR$="0"
4780 PRINTPR$;:NEXTX2:PRINTCHR$(13);:NEXTY2:GOTO300
4800 'END
4801 PRINT"End your turn? (Y/N) ";:GOSUB1500:IF Z$="Y" OR Z$="y" THEN4802 ELSE 300
4802 IF YB=1 OR NU=1 THEN4804 ELSEPRINT"You can't stay here!":X=RND(SZ-2)+1:Y=RND(SZ-2)+1:PRINT"Your fleet was taken to";X;Y:MV=0:GOTO3100
4804 IF NU=1 THENPRINT"I'm charging you double to build this base for you!":G(X,Y)=150+Y(0):Y(5)=Y(5)+1:Y(8)=Y(8)+5000
4806 IF YB=1 THEN G(X,Y)=G(X,Y)+50
4810 GOSUB3000
4820 LD$=TP$(1):CR=TP(1):IFTU(1)=Y(0)THENPRINT"You are leading!!":RK$=RK$(Y(12))
4825 R=42:GOSUB2100
4830 R=Y(0):GOSUB2000:FORZ=1TO16:A(Z)=Y(Z):NEXTZ:FORZ=0TO9:B(Z)=0:NEXTZ:AT$="/":A(9)=X:A(10)=Y:GOSUB2100
4900 Z1$="LEVEL"+STR$(Y(15))+"/DAT":PRINT:PRINT"Saving galaxy":PRINT"Start";STRING$(SZ-13," ");"Finished":OPEN"O",#1,Z1$:FORX1=1TOSZ:FORY1=1TOSZ:WRITE#1,G(X1,Y1):NEXTY1:PRINT".";
4910 NEXTX1:CLOSE#1
4930 GOTO9999
5000 'NEW USER
5005 IF NR>39 THEN PRINT"Sorry.. game is closed to new users.":RUN"BBS
5010 PRINT:PRINT:PRINT"Welcome to Galactic Conflict.":PRINT"Since you have not played before,":PRINT"I need some information about you."
5020 POKE&H7D04,1:PRINT:PRINT:PRINT"What name will you be using?":PRINT"(10 characters max.) ";:GOSUB1500:IF LEN(Z$)>10 THEN Z$=LEFT$(Z$,10)ELSEIF LEN(Z$)=0 THEN5020
5025 GOSUB5100:Y$(1)=Z$
5030 PRINT"Fine ";Y$(1);".":PRINT:PRINT"Enter a password. (10 char. max) ";:GOSUB1500:IF LEN(Z$)>10 THEN Z$=LEFT$(Z$,10):Y$(2)=Z$ ELSE Y$(2)=Z$
5040 PRINT"Thank you.":PRINT:PRINT"How wide is your terminal screen? ";:GOSUB1500:Z=VAL(Z$):IF Z<20 THEN Z=20 ELSE IF Z>80 THEN Z=80
5050 Y(14)=Z:PRINT:PRINT:A$="I have it as:":GOSUB1000:A$="Name: "+Y$(1):GOSUB1000:A$="Password: "+Y$(2):GOSUB1000:A$="Terminal width: "+STR$(Y(14)):GOSUB1000:PRINT:PRINT
5060 PRINT"Is this correct? (Y/N) ";:GOSUB1500:IF Z$="Y" OR Z$="y" THEN 5065 ELSE 5020
5065 PRINT:PRINT"Hold on while I create your account.":R=42:GOSUB2000:A(2)=A(2)+1:AN=A(2):GOSUB2100
5070 R=AN:Y(15)=1:Y(1)=1:Y(2)=10:Y(4)=3:Y(6)=10000:Y(8)=167500:Y(9)=1:Y(10)=1:A1$=Y$(1):B1$=Y$(2)
5080 FORZ=1TO16:A(Z)=Y(Z):NEXT:FORZ=0TO9:B(Z)=0:NEXT:GOSUB2100
5090 PRINT:PRINT:A$="Your account # is"+STR$(AN)+".":GOSUB1000:A$="Your password is "+Y$(2)+".":GOSUB1000:PRINT:A$="Write these down!":GOSUB1000:A$="You'll need them later.":GOSUB1000:PRINT:GOSUB1100
5095 PRINT:PRINT"I'll spot you enough credits to ge started":PRINT"but you'll have to pay me back.":PRINT"I charge 10% interest.":PRINT
5099 PRINT:PRINT"Now you must log in using your":PRINT"account # and password.":GOTO70
5100 'Upper-lower case convertion
5120 Z3$=LEFT$(Z$,1):FOR Z=2 TO LEN(Z$):Z1$=MID$(Z$,Z,1)
5130 IF ASC(Z1$)<48 THEN Z3$=Z3$+Z1$:Z5=1:GOTO5160
5140 IF Z5=0 AND ASC(Z1$)>64 AND ASC(Z$)<91 THEN Z2=ASC(Z1$)+32:Z2$=CHR$(Z2) ELSE Z5=0:Z2$=Z1$
5150 Z3$=Z3$+Z2$
5160 NEXT
5170 Z$=Z3$:RETURN
6000 'ATTAC REPORT
6010 FORZ=0TO8:IFB(Z)=0THEN6040
6020 AT$=STR$(B(Z)):CD$=LEFT$(AT$,2):X$=MID$(AT$,4,2):Y$=MID$(AT$,6,2):PN$=RIGHT$(AT$,2):LE$=MID$(AT$,3,1)
6025 IFCD$=" 1" THENPRINT"Player #";PN$;" took over your base at ";X$;",";Y$;" Level ";LE$:PRINT
6028 IF CD$=" 2" THENPRINT"Player #";PN$;" attacked your base at ";X$;",";Y$;" Level ";LE$:PRINT" but failed to take it over!":PRINT
6030 IF CD$=" 3" THENPRINT"Player #";PN$;" attacked your fleet but lost!":PRINT
6040 B(Z)=0:NEXT
6050 AT$=RIGHT$(D1$,50):IF B(9)=0 THEN RETURN
6060 PRINT"Player #";B(9);"overran your fleet.":PRINT"That player left you this comment:":PRINTAT$:B(9)=0:AT$="\":PRINT:RETURN
7000 'SWITCH LEVELS
7002 PRINT"Enter level. (1 to";LV;") ";:GOSUB1500:Z=VAL(Z$):IF Z<1 OR Z>LV THENPRINT"LVL Aborted!":GOTO300ELSE LL=Z
7010 Z1$="LEVEL"+STR$(Y(15))+"/DAT"
7015 PRINT"Saving this level":PRINT"Start";STRING$(SZ-13," ");"Finished"
7020 OPEN "O",#1,Z1$:FORX1=1TOSZ:FORY1=1TOSZ:WRITE#1,G(X1,Y1):NEXTY1:PRINT".";:NEXTX1:CLOSE#1
7040 PRINT:Z1$="LEVEL"+STR$(LL)+"/DAT"
7045 PRINT"Loading level";LL:PRINT"Start";STRING$(SZ-13," ");"Finished"
7050 OPEN"I",#1,Z1$:FORX1=1TOSZ:FORY1=1TOSZ:INPUT#1,G(X1,Y1):NEXTY1:PRINT".";:NEXTX1:CLOSE#1:Y(15)=LL:GOTO290
8000 '???
8010 Z=G(X,Y)-90
8020 IF Z=1 THENPRINT"An abandoned Flagship!!":Y(1)=Y(1)+1
8030 IF Z=2 THEN PRINT"A Space mine!!":Z1=RND(80000):PRINT"It expoded causing";Z1;"credits damage to your Flagship!":PRINT"I'm loaning you the money to get it repaired.":Y(8)=Y(8)+Z1
8040 IF Z=3 THENZ1=RND(5)+5:PRINTZ1;"fighters who join your fleet!":Y(2)=Y(2)+Z1
8050 IF Z=4 THENPRINT"A Fairy God Mother!":Z1=RND(20000)+20000:PRINT"She gives you";Z1;"credits cause you've been good!":Y(6)=Y(6)+Z1
8060 IF Z=5 THEN PRINT"An Atomic explosion!!":PRINT"Your fleet suffered no damage but your turn is over!":G(X,Y)=100+50+Y(0):GOTO4820
8070 IFZ>5 THENPRINT"A treasure chest!!":Z1=RND(20000):PRINT"It has";Z1;"credits inside":Y(6)=Y(6)+Z1
8080 G(X,Y)=0:GOTO290
8100 'TOP COMMAND
8105 PRINT" #  Name"," Credits":PRINT
8110 FOR Z=1TO5:PRINTUSING"##";TU(Z);:PRINT" "+TP$(Z),TP(Z):NEXT:PRINT:RETURN
8200 'CAL COMMAND
8205 PRINT"The last 9 callers were:":PRINT
8210 FOR Z=0 TO8:PRINTLP$(Z):NEXT:RETURN
9000 'LST COMMAND
9010 PRINT"Start at what player? (CR=1) ";:GOSUB1500:Z2=VAL(Z$):IFZ2=0 THEN Z2=1 ELSE IF Z2>NR OR Z2<0 THENPRINT"There are only";NR;"players!":GOTO9010
9020 PRINT"End at what player? (CR=";NR;") ";:GOSUB1500:Z1=VAL(Z$):IF Z1=0 THEN Z1=NR ELSE IF Z1<0 OR Z1>NR THEN PRINT"Try again!":GOTO9020
9030 OPEN"D",#1,"GALAXUSR/DAT",200
9040 FIELD#1,10AS A$,10 AS B$,80 AS C$,100 AS D$
9050 FOR R=Z2 TO Z1:GET#1,R
9055 Z3=CVN(MID$(C$,56,5))
9060 PRINTR;A$;RK$(Z3):NEXT:CLOSE#1:GOTO290
9100 OPEN "I",#1,"RULES/TXT"
9105 PRINT"Hit 'A' to abort":
9110 IF EOF(1)=-1 THEN 9140
9115 Z$=INKEY$:IFZ$="A"ORZ$="a"THEN9140
9120 LINE INPUT #1,A$:PRINTA$
9130 GOTO 9110
9140 CLOSE#1:RETURN
9999 PRINT:PRINT:PRINT"See ya later!!":PRINT"Please hang up now.":R=42:A1$=LD$:B1$=RK$:A(1)=CR:A(2)=NR:A(3)=SZ:A(4)=LV:A(5)=NC:A(6)=WG:GOSUB2100:RUN
10000 DATA Flagship(s),Fighter(s),Cargo bay(s),Base kit(s),Base(s),Credits on hand,Credits in bank,Credits on loan
10001 DATA Cadet,Ensign,Leftenant,Commander,Captain,Admiral,Fleet Admiral,Supream Admiral
10002 DATA 500000,1000000,2000000,3000000,4000000,6000000,8000000
