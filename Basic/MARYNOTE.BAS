0 ' COPYRIGHT 1989 FALSOFT,INC
10 CLS
20 GOSUB250
30 PMODE 4,1:SCREEN1,1:PCLS
40 FORT=10TO50STEP10:LINE(10,T)-(245,T),PSET:NEXTT
50 LINE(10,10)-(10,50),PSET:LINE(245,10)-(245,50),PSET:LINE(10,70)-(10,110),PSET:LINE(245,70)-(245,110),PSET
60 FORT=70TO110STEP10:LINE(10,T)-(245,T),PSET:NEXTT:FORT=130TO170STEP10:LINE(10,T)-(185,T),PSET:NEXTT
70 LINE(110,10)-(110,50),PSET:LINE(180,10)-(180,50),PSET:LINE(110,70)-(110,110),PSET:LINE(180,70)-(180,110),PSET:LINE(10,130)-(10,170),PSET
80 LINE(180,130)-(180,170),PSET:LINE(185,130)-(185,170),PSET:LINE(110,130)-(110,170),PSET
90 LINE(10,10)-(10,50),PSET:LINE(245,10)-(245,50),PSET
100 DRAW"BM25,105;XA$;"
110 DRAW"BM25,45;XA$;"
120 DRAW"BM25,165;XA$;"
130 DRAW"BM50,15;XHD$;"
140 PLAY"E"
150 DRAW"BM65,20;XHD$;":PLAY"D":DRAW"BM80,25;XHU$;":PLAY"C":DRAW"BM95,20;XHD$;":PLAY"D"
160 DRAW"BM120,15;XHD$;":PLAY"E":DRAW"BM135,15;XHD$;":PLAY"E":DRAW"BM150,15;XHD$;":PLAY"E"
170 DRAW"BM165,17;XHR$;":PLAY"P5"
180 DRAW"BM190,20;XHD$;":PLAY"D":DRAW"BM205,20;XHD$;":PLAY"D":DRAW"BM220,20;XHD$;":PLAY"D":DRAW"BM235,22;XHR$;":PLAY"P5"
190 DRAW"BM50,75;XHD$;":PLAY"E":DRAW"BM65,65;XHD$;":PLAY"G":DRAW"BM80,65;XHD$;":PLAY"G":DRAW"BM95,67;XHR$;":PLAY"P5"
200 DRAW"BM120,75;XHD$;":PLAY"E":DRAW"BM135,80;XHD$;":PLAY"D":DRAW"BM150,85;XHU$;":PLAY"C":DRAW"BM165,80;XHD$;":PLAY"D"
210 DRAW"BM190,75;XHD$;":PLAY"E":DRAW"BM205,75;XHD$;":PLAY"E":DRAW"BM220,75;XHD$;":PLAY"E":DRAW"BM235,75;XHD$;":PLAY"E"
220 DRAW"BM45,140;XHD$;":PLAY"D":DRAW"BM60,140;XHD$;":PLAY"D":DRAW"BM75,135;XHD$;":PLAY"E":DRAW"BM90,140;XHD$;":PLAY"D"
230 DRAW"BM120,145;XHU$;":PLAY"C":DRAW"BM135,143;XDW$;":PLAY"P15"
240 GOTO240
250 A$="U30R3F2D3G4L2G6D8F3R8E3U5H4L3G4D3F3R2E2U2"
260 HD$="U1D2F1R3E1U2H1L3G1D10"
270 HU$="U1D2F1R3E1U2H1L3G1U7"
280 HR$="L3R7L2U3L3D3"
290 DW$="L3R7L2D3L3U3D3R3U3R2BR3BD2R1"
300 RETURN
