10 '*** SCROLL PROTECT
20 '*** BY RIC PUCELLA
25 CLEAR &HFF,&H7F00
30 DATA 26,80,142,128,0,166,132,183,255,223,167,128,140,224,0,39,5,183,255,222,32,239,28,175,57
40 FOR A=3072 TO 3096:READB:POKEA,B:NEXTA:EXEC3072
50 FORX=&H7F00 TO &H7F1D:READB$:B=VAL("&H"+B$):POKE X,B:NEXTX
60 DATA BD,B3,E4,83,01,FF,10,22,35,40,C3,05,FF,34,10,9E,88,BF,7F,FE,35,10,DD,88,86,63,B7,7F,FD,39
70 FORX=&H7FA0 TO &H7FB8:READB$:B=VAL("&H"+B$):POKE X,B:NEXTX
80 DATA B6,7F,FD,81,63,27,05,86,0D,7E,B9,B1,BE,7F,FE,9F,88,7F,7F,FD,86,0D,7E,B9,B1
90 CLS:PRINT"LINES FROM 0 TO 15"
100 PRINT@128,"TOP LINE:";:LINEINPUT TP$
110 TP=VAL(TP$)
120 IFTP<0 OR TP>15 THEN 100
130 PRINT@128,"BOTTOM LINE:";:LINEINPUT BT$
140 BT=VAL(BT$)
150 IF BT<0 OR BT>15 OR BT<=TP+1 THEN 130
160 TP=(TP*32+1024)
170 T1=INT(TP/256):T2=TP-(T1*256)
180 BT=(BT*32+1024)
190 B1=INT(BT/256):B2=BT-(B1*256)
200 CLS0
210 POKE &HA347,B1
220 POKE &HA348,B2+31
230 POKE &HA34C,T1
240 POKE &HA34D,T2
250 POKE &HA92B,T1
260 POKE &HA92C,T2
270 POKE &HA932,B1
280 POKE &HA933,B2+31
320 PR=BT-TP
340 PR=PR+TP
350 P1=INT(PR/256):P2=PR-(P1*256)
360 POKE &HA354,P1
370 POKE &HA355,P2
420 POKE &HB903,&H7F
430 POKE &HB904,&H00
431 POKE &HB958,&H7E
432 POKE &HB959,&H7F
433 POKE &HB95A,&HA0
440 CLS
