0 ' COPYRIGHT 1989  FALSOFT,INC
5 'MOONSCAPE  BY JIM FORSTER
10 ON BRK GOTO225
15 POKE65497,0
20 HSCREEN2:HCLS8
25 FOR P=1TO10:READPP:PALETTEP,PP:NEXTP
30 DATA 3,15,17,8,63,32,56,0,50,31
35 FORU=1TO200:D=RND(159)*2:F=RND(95)*2:HSET(D,F,5):NEXTU
40 D=RND(300)+10:F=RND(100)+10
45 HCOLOR9,8:HCIRCLE(D,F),9:HPAINT(D,F),9,9
50 HLINE(D-4,F+7)-(D-5,F+7),PSET:HLINE(D+4,F+7)-(D+5,F+7),PSET
55 HCOLOR1,8
60 HDRAW"BM0,165"
65 FORT=1TO100
70 D=RND(2)
75 IF D=1 THEN F$="+"ELSE F$="-"
80 D$="M+"+STR$(RND(8))+","+F$+STR$(RND(8))
85 HDRAW D$
90 IFT>65THEN95ELSENEXTT
95 FOR E=76TO192:IFHPOINT(320,E)<>8 THEN 105 ELSE NEXTE
100 NEXTT
105 FORZ=0TO320:HPAINT(Z,192),1,1:NEXTZ
110 HCOLOR2,8:EX=RND(235)+30:EY=RND(36)+30:HCIRCLE(EX,EY),30
115 HDRAW"BM"+STR$(EX-22)+","+STR$(EY+19)+"R5H2R3HG2D2R4UR3UR4FR3F2R6FR2UR4E4D4R4F":HPAINT(EX,EY+23),3,2
120 HDRAW"BM"+STR$(EX)+","+STR$(EY-17)+"S3R4DR4E2R5FD3R3U2ER4F6G8F3L2H3UL4G3L2GR3E3D2G3R3D4F2R3E2RF3DF3DG3DG3DG3D2F2GL3U3L2U8H3LH3U2H3L3H4U3H2LU3HU3L4G2LDH3L2U3E3R2F2DR3F2R2":HPAINT(EX,EY-15),3,2
125 HDRAW"BM"+STR$(EX-14)+","+STR$(EY-17)+"S3H2UL3HUL4U2LG2L3"
130 HDRAW"BM"+STR$(EX-14)+","+STR$(EY-17)+"S3G2DG2L3DG2D3R2D2G2L2G2LD3G2L3G2L5":HPAINT(EX-17,EY-16),3,2
135 HDRAW"BM"+STR$(EX-17)+","+STR$(EY+1)+"D2L2H2L3U2G2D2LG2D4R2E2R4F3RE2U2EUH2U3":HPAINT(EX-19,EY+4),3,2
140 HPAINT(EX,EY),4,2
145 FORZZ=1TO130
150 HH=RND(52)+2:VV=RND(50)+5:IF((HH<20 AND VV>15 AND VV<45) OR (HH>38 AND VV>15 AND VV<45) OR (VV<20 AND HH>15 AND HH<45) OR (VV>38 AND HH>15 AND HH<45)) THEN 160
155 IF((HH<20 AND VV<20) OR (HH<20AND VV>38) OR (HH>38 AND VV<17) OR (HH>38 AND VV>38))THEN150
160 HSET((EX-30)+HH,(EY-30)+VV,10):HSET((EX-30)+HH+2,(EY-30)+VV-1,10)
165 NEXTZZ
170 HCOLOR7,8
175 J=158:K=97
180 FORW=1TO100:K=K+1:J=158:FORO=1TO5
185 IF HPOINT(J,K)=1THEN190ELSEJ=J+1:NEXTO:NEXTW
190 HLINE(J,K)-(J,K-8),PSET
195 HLINE-(J+7,K-12),PSET,B
200 HCOLOR4,8
205 HSET(J+1,K-11):HSET(J+2,K-11):HSET(J+3,K-11):HCOLOR6,8:HLINE(J+4,K-11)-(J+7,K-11),PSET:HCOLOR7,8:HLINE(J+1,K-10)-(J+7,K-10),PSET:HCOLOR6,8:HLINE(J+1,K-9)-(J+7,K-9),PSET
210 X$=INKEY$:IFX$=""THEN215ELSERUN
215 IF RND(125)=1 THEN PALETTE5,55:GOSUB220:PALETTE5,63:GOSUB220:PALETTE5,55:GOSUB220:PALETTE5,63:GOTO210ELSE210
220 FORT=1TO50:NEXTT:RETURN
225 POKE65496,0:HSCREEN0:WIDTH32:END
