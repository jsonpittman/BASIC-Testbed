10 R=RND(-TIMER):CLEAR100:DIMX(4,5),Y(4,5),MS(4),ML(4),PR(4),XS(102),YS(102):CL$=CHR$(128)+CHR$(128)+CHR$(128)
20 CLS(0):PRINT@74," 'SUB SEARCH' ";:PRINT@112,"BY";:PRINT@138," STEVE SWARD ";:PLAY"T1P1":PRINT@76,CL$;
30 FORW=1TO20:R=RND(500):PRINT@R,"sub";:PLAY"T170V15O1;A;A#;A-;O5;A;A#;A-;T2P6":PRINT@R,CL$;:NEXT
40 CLS(3):PRINT"MISSION: DESTROY ENEMY SUBMARINE";:PRINT@40,"*SPEED: 10KTS  ";:PRINT@72,"*DEPTH: UNKNOWN";
50 PRINT@128,"FORCE:1 SPRUANCE CLASS DESTROYER";:PRINT"*EQUIP  : SONAR (DISTANCE ONLY)":PRINT"*SPEED  : 0 TO 30 KTS":PRINT"*HEADING: 001 TO 360 DEGREES"
60 PRINT"*WEAPONS: 4 ASROCS":PRINT@296,"*RANGE: 10NM":PRINT@328,"*DEPTH SETTING: MUST BE":PRINT@360," WITHIN 25 FT OF SUB"
70 PRINT@480,"...HIT <ENTER>";:LINEINPUTA$
100 CLS(4):PRINT"SUB STARTS IN CENTER...COURSE   CHANGES EVERY 7-9 TURNS.":PRINT:PRINT"EACH PLAYER STARTS IN A CORNER.":PRINT:PRINT"TO REPAIR AND REARM SHIP, HEAD  FOR RED REPAIR DOCK IN CENTER.";
110 PRINT@256,"TO ENTER SHIP'S COURSE AND SPEED...HIT <ENTER>.   NEW SHIP TRACK";:PRINT"WILL THEN  >>FLICKER<<":PRINT:PRINT"YOU THEN HAVE THE OPTION OF     ATTACKING... HIT <Y> OR <N>";:PRINT@480,"...HIT <ENTER>";:LINEINPUTN$
120 CLS(3):PRINT@64," INPUT NUMBER OF PLAYERS";:INPUTP4:GOSUB810:IFP4>2THENMR=7ELSEMR=RND(3)+7
130 PRINT@160," SELECT DIFFICULTY...":PRINT:PRINT"1. LANDLUBBER-DISPLAYS SUB PATH 2. OLD SALT":INPUTA3:GOSUB1320
140 FORP=1TOP4:PR(P)=30:MS(P)=4:ML(P)=2:NEXTP
150 PMODE3,1:PCLS(6):COLOR8,6:TT=1:T=1:D=P4*300:DD=RND(D):GOSUB1530
160 CLS(0):PRINT@64,"SUB DEPTH IS 1 TO"D"FEET";:PLAY"T1P1P1"
170 DS=RND(36)*10:GOTO200
180 FORB=1TOP4:FORC=1TO4:X(B,C)=X(B,C+1):Y(B,C)=Y(B,C+1):NEXTC,B
190 CLS(0):IFTT=101THEN1490ELSEPRINT@64," YOU ARE ON TURN #"TT"..GIVE UP??";:PRINT@416,"TO CONTINUE GAME, HIT <ENTER>":PRINT@96,"":LINEINPUT" ENTER <I GIVE UP>...";G$:IFG$="I GIVE UP"THEN1490
200 MV=MV+1:IFMV=MR THENMV=0:GOTO170
210 T=T+1:TH=T:T=2:X(0,1)=XS(TH-1):Y(0,1)=YS(TH-1):DR=DS:SP=10:P=0:GOTO320
220 XS(T)=X(0,2):YS(T)=Y(0,2):IFA3=1THEN1450
230 P=1
240 GOSUB910:SCREEN1,1
250 FORN=1TO3:LINE(X(P,N),Y(P,N))-(X(P,N+1),Y(P,N+1)),PSET:NEXTN
260 FORN=1TO100:A$=INKEY$:IFA$<>""THEN280ELSENEXTN
270 FORN=1TO3:LINE(X(P,N),Y(P,N))-(X(P,N+1),Y(P,N+1)),PRESET:NEXTN:GOTO250
280 LINE(X(P,1),Y(P,1))-(X(P,2),Y(P,2)),PRESET:CLS(4):PRINT@64,"SKIPPER..WHAT COURSE (001-360)";:INPUTDR:IFDR>360ORDR=0THEN280
290 PRINT@160,".";:INPUT"..WHAT SPEED";SP
300 IFSP>PR(P)THENPRINT@228,"HEY! WE CAN'T GO THAT FAST !":PRINT:PRINT"TOP SPEED IS"PR(P)"KTS":GOTO290
310 TH=T:T=5:SCREEN1,1
320 'DIRECTIONS
330 IF DR=360THEN340ELSE370
340 X(P,T)=X(P,(T-1))
350 Y(P,T)=Y(P,(T-1))-SP
360 GOTO710
370 IF DR<>090THEN410
380 X(P,T)=X(P,(T-1))+SP
390 Y(P,T)=Y(P,(T-1))
400 GOTO710
410 IF DR<>180THEN450
420 X(P,T)=X(P,(T-1))
430 Y(P,T)=Y(P,(T-1))+SP
440 GOTO710
450 IF DR<>270THEN490
460 X(P,T)=X(P,(T-1))-SP
470 Y(P,T)=Y(P,(T-1))
480 GOTO710
490 IF DR>90THEN550
500 AA=90-DR:AB=DR
510 GOSUB770
520 X(P,T)=X(P,(T-1))+INT(SB)
530 Y(P,T)=Y(P,(T-1))-INT(SA)
540 GOTO710
550 IF DR>180THEN610
560 AA=DR-90:AB=90-AA
570 GOSUB770
580 X(P,T)=X(P,(T-1))+INT(SB)
590 Y(P,T)=Y(P,(T-1))+INT(SA)
600 GOTO710
610 IF DR>270THEN670
620 AA=DR-180:AB=90-AA
630 GOSUB770
640 X(P,T)=X(P,(T-1))-SA
650 Y(P,T)=Y(P,(T-1))+SB
660 GOTO710
670 AA=DR-270:AB=90-AA
680 GOSUB770
690 X(P,T)=X(P,(T-1))-SB
700 Y(P,T)=Y(P,(T-1))-SA
710 GOSUB840
720 T=TH:IFP=0THEN220
730 GOSUB980:GOTO1050
740 GOSUB1360
750 P=P+1:IFP<=P4 THEN240
760 TT=TT+1:GOTO180
770 R5=57.29577951:AC=90
780 AA=AA/R5:AB=AB/R5:AC=AC/R5
790 SA=(SIN(AA)/SIN(AC))*SP
800 SB=(SIN(AB)/SIN(AC))*SP:RETURN
810 DATA 0,0,5,5,255,0,250,5,255,191,250,186,0,191,5,186
820 FORP=1TOP4:READX,Y,X1,Y1:FORN=1TO4:IFN=3THENX(P,N)=X1:Y(P,N)=Y1 ELSEX(P,N)=X:Y(P,N)=Y
830 NEXTN,P:XS(1)=128:YS(1)=96:RETURN
840 IFX(P,T)<0ORX(P,T)>255ORY(P,T)<0ORY(P,T)>191THEN880
850 IFP=0THEN RETURN
860 IFX(P,T)<118ORX(P,T)>138ORY(P,T)<86ORY(P,T)>106THENRETURN
870 CLS(2):PRINT@64,"YOU HAVE REACHED THE REPAIR DOCK":PR(P)=30:MS(P)=4:ML(P)=2:PLAY"T1P1P2":GOSUB980:T=TH:GOTO750
880 IFP=0THENT=TH-1:MV=0:GOTO170
890 CLS(8):PRINT@96,"SKIPPER!  WE HIT THE REEF !!!":PR(P)=PR(P)-10:PLAY"T2P1":IFPR(P)<20THENPR(P)=15
900 PRINT:PRINT"WE HAVE PROP DAMAGE !":PRINT:PLAY"P1":PRINT"TOP SPEED IS NOW"PR(P)"KTS.":PRINT:PRINT"TRY AGAIN...":GOSUB1420:T=TH:GOTO240
910 CLS(3)
920 PRINT@32," STATUS OF DESTROYER #"P
930 PRINT@128," TOP SPEED ="PR(P)"KTS"
940 PRINT:PRINT" ASROCS ="MS(P)
950 PRINT:PRINT" LAUNCHERS ="ML(P)
960 PRINT@480,"...HIT <ENTER>";:LINEINPUTF$:RETURN
980 SX=ABS(XS(T)-X(P,5))
990 SY=ABS(YS(T)-Y(P,5))
1000 SD=INT(SQR(SX*SX+SY*SY))
1010 RETURN
1020 FOR H=1TO MS
1030 PLAY"T15V10O3CC#DD#EFF#GG#AA#B;P1T40O1V31ECBP2ECBP2ECBP2ECBP2ECBP2ECBP1P1P1"
1040 NEXT H:RETURN
1050 A$=INKEY$
1060 LINE(X(P,5),Y(P,5))-(X(P,4),Y(P,4)),PRESET
1070 PLAY"L20O4V5T15CE"
1080 LINE(X(P,5),Y(P,5))-(X(P,4),Y(P,4)),PSET
1090 IFA$="Y"THEN1110
1100 IFA$="N"THEN740ELSE1050
1110 FOR W=1TO5
1120 FOR WT=0TO8:CLS(WT):PRINT@160,"^ ^ ^ ^ BATTLE STATIONS ^ ^ ^ ^ "
1130 PLAY"T170V31O1;A;A#;A-;O5;A;A#;A-P2":NEXTWT,W
1140 IFMS(P)=0ORML(P)=0THENPRINT@64," HEY SKIPPER...HOW ABOUT HEADING FOR THE REPAIR DOCK ? ? ?":PLAY"T1P1P1":GOTO740
1150 PRINT@64," HOW MANY ROCKETS";:INPUTMS:IFMS<1THEN1150
1160 IFMS>MS(P)ORMS>ML(P)THENPRINT@256," SKIPPER...WE CAN'T DO THAT ! !":PLAY"P1P1":GOTO1140
1170 MS(P)=MS(P)-MS:FORWT=1TOMS
1180 PRINT@(128*WT+128),"WHAT DEPTH FOR ROCKET #"WT;:INPUT MD(WT)
1190 NEXTWT:SCREEN1,1:GOSUB1020:PLAY"T1P1P1"
1200 IF SD>10THENPLAY"P1":GOTO740
1210 FORWT=1TO MS:IFABS(MD(WT)-DD)<26THEN1430ELSENEXTWT
1220 PLAY"L4V1O4T1"
1230 FORE=1TO30:FORF=1TO7:PLAY"CP4T+":NEXTF:PLAY"V+":NEXTE
1240 PLAY"T38P1V31O1ECDP20ECDP20ECDP20ECDP20ECD"
1250 CLS(8):ONRND(2)GOTO1260,1290
1260 PRINT@96," SKIPPER! WE TOOK A HIT IN THE   ENGINE ROOM !":PRINT:PLAY"T1P1"
1270 IFPR(P)<21THENPR(P)=25
1280 PR(P)=PR(P)-10:PRINT@192," TOP SPEED IS NOW"PR(P)"KTS.":GOSUB1420:GOTO740
1290 PRINT@96," SKIPPER!!  WE TOOK A HIT AFT!!":PLAY"T1P1"
1300 ML(P)=ML(P)-1:PRINT@160," WE LOST A ROCKET LAUNCHER !!!":PLAY"P1":PRINT@320," LAUNCHERS NOW OPERATIONAL="ML(P):GOSUB1420:GOTO740
1320 CLS(0):PRINT@96,"GET READY TO COPY DISTANCE CODE.":PRINT"DON'T LET ANYONE SEE YOUR CODE!!";:PLAY"T1P1P1"
1330 FORN=1TOP4:CLS(0)
1340 PRINT@64," PLAYER #"N"YOUR NUMBER IS.....":KE(N)=RND(10):PRINT:LINEINPUT"...READY?...HIT <ENTER>";W$
1350 PRINT@192,"........"KE(N):PLAY"T5P1L50O5C10":NEXTN:RETURN
1360 CLS(2):PRINT" SKIPPER #"P"...USE YOUR CODE #  TO DETERMINE SUB'S DISTANCE.":PRINT:FORWT=1TO10
1370 IFWT=KE(P)THENPRINTWT". "SD:GOTO1390
1380 RN=RND(2):ONRND(2)GOSUB1400,1410
1390 NEXTWT:PRINT@480,"...HIT <ENTER>";:LINEINPUTF$:RETURN
1400 PRINTWT". "(ABS(SD+RND(RN*15))):RETURN
1410 PRINTWT". "(ABS(SD-RND(RN*15))):RETURN
1420 FORWT=1TO4000:NEXTWT:RETURN
1430 FORC=1TO250:PLAY"T40O5C":CIRCLE(XS(T),YS(T)),C,8:NEXTC:PLAY"T1P1"
1440 CLS(8):PRINT@37,"---MISSION COMPLETE---";:PRINT@99,"SUB DESTROYED AT"DD"FEET.";:PLAY"P1P1":GOTO1500
1450 DRAW"BM128,96"
1460 FORD=2TO(TT+1)
1470 LINE-(XS(D),YS(D)),PSET
1480 IFCN=1THEN1510ELSENEXTD:GOTO230
1490 TT=TT-1:CLS(8):PRINT@64,"BETTER LUCK NEXT TIME...........":PLAY"T1P1":PRINT"SUB WAS AT"DD"FEET.":PLAY"P1P1"
1500 CN=1:PCLS(6):SCREEN1,1:GOSUB1530:GOTO1450
1510 FORWY=1TO2:PLAY"T170V31O1;A;A#;A-;O5;A;A#;A-":NEXTWY:PLAY"T2P1P3":NEXTD
1520 GOTO1520
1530 CIRCLE(128,96),10,7,.95:PAINT(128,96),7,7:LINE(0,0)-(255,191),PSET,B:LINE(1,1)-(254,190),PSET,B:RETURN
