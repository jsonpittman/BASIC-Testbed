4 '****************************
5 '*   ELECTRONIC  AQUARIUM   *
6 '*            by            *
7 '*      Sandy Tadman        *
8 '*     (C) JULY 1987        *
9 '****************************
10 PMODE 4:SCREEN 1,1:PCLS
11 R=160:E=R+24:E1=R+27
12 FORGR=1TO254:A=RND(50):LINE(GR,190)-(GR,(140+A)),PSET:NEXTGR:'weed
13 LINE(1,155)-(20,190),PSET,BF:LINE(3,157)-(17,187),PRESET,B
14 F$="S7H1U2E1R2E8RERER9F2RFRFRF2DFE3UERE2RRER2FD3GDGDG3LG2F5RF5D2GL5HLH5DG3LGLGL2GL9HLHL3HLH3LH3G1L2H1U1E1BR14F3R2EUR2EUH2L":'fish
15 FOR M=168 TO 0 STEP-3
16 S$=STR$(M) + ",96"
17 DRAW"BM"+S$+"C1;XF$;":GOSUB 20
18 DRAW"BM"+S$+"C0;XF$;":NEXT M
19 GOTO 16
20 PLAY"T255L4B":FOR X=96 TO 0 STEP-20:CIRCLE(R,X),4:CIRCLE(E,85),4,,.01:CIRCLE(E,85),4,0:
21 FORY=X+40TO 0STEP-20:CIRCLE(R,Y),4,0:CIRCLE(E,85),4:NEXTY:'eye
22 Z=RND(30):IF Z>28 GOSUB26
23 NEXT X:R=R-3:E=E-3:E1=E1-3:IF R<=10 THEN END
24 CIRCLE(E1,85),4,0:CIRCLE(E1,85),4,0,.01
25 RETURN
26 FOR B=151 TO 0 STEP-10:CIRCLE(5,B),5:NEXT B:'filter
27 PLAY"O1T250CDEFGABO2CDEFGABO3CDEFG"
28 FORB=151 TO 0STEP-10:CIRCLE(5,B),5,0:NEXT B
29 RETURN
