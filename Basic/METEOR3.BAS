1 REM**************************
2 REM*   METEOR STORM  V.3    *
3 REM*   BY FRED B. SCERBO    *
4 REM*   60 HARDING AVENUE    *
5 REM* NORTH ADAMS, MA 01247  *
6 REM*   COPYRIGHT (C) 1989   *
7 REM**************************
10 PMODE4,1:PCLS0:CLEAR500
15 CLS0:PRINTSTRING$(32,188)STRING$(32,204);
20 FORI=1TO 256 :READ A:PRINTCHR$(A+128);:NEXT
25 PRINTSTRING$(32,195)STRING$(32,179);
30 PRINT@420,"    BY FRED B.SCERBO    ";
35 PRINT@452,"   COPYRIGHT (C) 1989   ";
40 PRINT@484,"   SELECT LEVEL (1-3)   ";
45 DATA61,60,59,,49,62,61,56,61,60,60,61,53,60,60,62,60,61,52,62,60,60,58,62,60,60,61,52,62,60,60,61
50 DATA53,,52,59,62,,53,,53,51,50,,,,,58,,,,59,51,,,58,,,53,48,59,51,51,55
55 DATA53,,,52,,,53,,53,,,,,,,58,,,,58,48,,,58,,,53,48,58,53,51,
60 DATA55,50,,,,,55,50,55,51,51,55,,,49,59,,,49,59,51,51,58,59,51,51,55,49,59,48,52,59
65 DATA67,67,67,67,67,65,67,67,67,67,67,65,67,67,67,66,67,67,67,67,65,67,67,,65,67,67,,33,35,35,35
70 DATA74,,,,68,68,,,74,,68,69,,,,74,69,64,,69,,74,68,75,78,,74,,36,,,37
75 DATA76,76,76,76,77,,,,74,,,69,,,,74,69,76,78,76,,74,,68,,,74,,,,44,45
80 DATA75,67,67,67,71,64,,65,75,,,69,67,67,67,74,71,66,68,67,65,75,,,,65,75,,37,35,35,39
85 DIMN$(9):FORI=0TO9:READN$(I):NEXT
90 DATA BR2U5R3D5NL3,BR4NU5BR,BR2U3R3U2NL3BD5NL3,BR2R3U3NL2U2NL3BD5,BR2BU3NU2R3U2D5,BR2R3U3L3U2R3BD5,BR2U5NR3D2R3D3NL3,BR2BU4UR3D5,BR2U5R3D2NL3D3NL3,BR2BU3NR3U2R3D5
95 XA$="NFUFDLNHGHUENFRD2ULND2GLNENU3HNEUENF2R2NG2F":XB$="NU2NENHND2FNRHNGL3EREFDFGLHGHUR2GLDFNERNU2NERE":XC$="NU2NL2NDNHNGNF2NER2NHNUNENR2NFNGD2E2HLHLG2FRFR":GOTO110
100 X=(JOYSTK(0)+6)*4:Y=(JOYSTK(1)+14)*2:RETURN
105 S(1)=0:S(2)=0:S(3)=0
110 QB$="C0BRNU5RU5RD5RU5RD5RU5RNL4D2NL4D3L6C1"
115 GS=0:PT=0
120 SL$=INKEY$:IF SL$="1"THEN125ELSEIF SL$="2"THEN130ELSEIF SL$="3"THEN135ELSE120
125 UK=6:GOTO140
130 UK=4:GOTO140
135 UK=2:GOTO140
140 CLS0:PMODE0,3:PCLS0:SCREEN0,1
145 O=RND(71)+55:J=90
150 W=RND(144)+56:V=30
155 M=RND(50)+150:K=100:FORT=1TO120:A=RND(256):B=RND(168):PSET(A,B,5):NEXTT:PCOPY3TO1:PMODE0,1:SCREEN1,1
160 PMODE0,3:DRAW"S8BM60,186C5L3U5NR3D2NR2D3BL2UHEUHL2D3NR2D2BL3EU3HLGD3FRBL5NELHU3ERNFLGD3FBL5NHREUHGHUERF":PCOPY3TO4:GOSUB330
165 W$=STR$(W):V$=STR$(V):M$=STR$(M):K$=STR$(K):O$=STR$(O):J$=STR$(J)
170 S(1)=S(1)+4:S(2)=S(2)+4:S(3)=S(3)+4:PCOPY3TO2:PMODE0,2
175 GOSUB345:SS$="S"+STR$(S(1)):SZ$="S"+STR$(S(2)):SO$="S"+STR$(S(3))
180 DRAW SS$+"BM"+W$+","+V$+"C5"+XA$:KS$=SS$
185 DRAW SZ$+"BM"+M$+","+K$+"C5"+XB$:AZ$=SZ$
190 DRAW SO$+"BM"+O$+","+J$+"C5"+XC$:AO$=SO$:PCOPY2TO1:PMODE0,1:SCREEN1,1
195 IFS(1)=>56THEN280ELSEIFS(2)=>56THEN280ELSEIFS(3)=>56THEN280
200 GOSUB100:IFPEEK(339)=254THEN225
205 IF PPOINT(W,V)=0THEN235
210 IF PPOINT(M,K)=0THEN250
215 IF PPOINT(O,J)=0THEN265
220 GOTO165
225 LINE(0,169)-(X,Y),PSET:LINE-(0,169),PRESET:LINE(252,169)-(X,Y),PSET:LINE-(252,169),PRESET:PLAY"O5T255CG":FORI=2TO UK STEP2:CIRCLE(X,Y),I,0:NEXT:GOTO205
230 LINE(188,192)-(X+2,Y),PRESET:LINE(252,192)-(X+2,Y),PRESET:CIRCLE(X-2,Y),2,0:CIRCLE(X+2,Y),2,0:CIRCLE(X,Y),2,0:RETURN
235 DRAWSS$:DRAW"BM"+W$+","+V$:DRAW"C0"+XA$:GOSUB325
240 M1=M1+25:S(1)=0:GS=GS+25:GOSUB330
245 W=RND(144)+56:V=30:GOTO165
250 DRAWSZ$:DRAW"BM"+M$+","+K$:DRAW"C0"+XB$:GOSUB325
255 M1=M1+25:S(2)=0:GS=GS+25:GOSUB330
260 M=RND(50)+150:K=100:GOTO165
265 DRAWSO$:DRAW"BM"+O$+","+J$:DRAW"C0"+XC$:GOSUB325
270 M1=M1+25:S(3)=0:GS=GS+25:GOSUB330
275 O=RND(71)+55:J=90:GOTO165
280 FORI=1TO2:PMODE0,1:SCREEN1,0:PLAY"O3T255FCO1DC":PMODE0,1:SCREEN1,1:NEXT:IFS(1)=>56THEN S(1)=0ELSEIF S(2)=>56THEN S(2)=0ELSEIF S(3)=>56THEN S(3)=0
285 PT=PT+1:GOSUB340:IFPT=5THEN310
290 PMODE0,1:SCREEN0,1:GOTO160:DRAWKS$+"BM"+W$+","+V$+"C0"+XA$:DRAWAZ$+"BM"+M$+","+K$+XB$:DRAWAO$+"BM"+O$+","+J$+XC$:GOTO160
295 PMODE0,1:PCLS:SCREEN1,1
300 SOUND150,6:PMODE0,1:SOUND150,6:SCREEN1,0:SOUND150,6:PMODE0,1:PCLS:SCREEN1,1:GOTO145
305 PMODE0,1:SOUND176,10:SCREEN1,0:SOUND147,10:SCREEN1,1:SOUND176,10:SCREEN1,0:SOUND147,10:SCREEN1,1:SOUND176,10:SCREEN1,0:SOUND147,10:PMODE0,1:PCLS:SCREEN1,1:GOTO145
310 PMODE0,3:SCREEN1,1
315 SCREEN1,1
320 X$=INKEY$:IFX$<>CHR$(13)THEN320ELSERUN
325 FORI=1TO2:PMODE0,1:SCREEN1,0:PLAY"O3L255BCBCO1BCBC":PMODE0,1:SCREEN1,1:NEXT:RETURN
330 PCOPY4TO3:MS$=STR$(M1):MK=LEN(MS$)-1:MS$=RIGHT$(MS$,MK):FORID=1TO MK:A(ID)=VAL(MID$(MS$,ID,1)):NEXTID
335 PMODE0,3:LINE(62,188)-(130,174),PRESET,BF:DRAW"S8BM64,187"+Q$:FORSW=1TOID-1:DRAWN$(A(SW))+Q$:NEXTSW:RETURN
340 PMODE0,3:SOUND150,1:DRAW"S8BM162,186C5U5D2R3U2D5BR3NU5BR4U5L2NDR4NDL2D5BR5NHREUHGHUERF":DRAW"S8BM210,187"+QB$+N$(PT):RETURN
345 IF S(1)>57THEN S(1)=56ELSEIF S(2)>57THEN S(2)=56ELSEIF S(3)>57THEN S(3)=56
350 RETURN
