1 'ACES UP
2 'BY GEORGE QUELLHORST
3 'COPYRIGHT (C) 1993
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
6 DATA 35,1,187,1,339,1,491,1
7 CLEAR2000:HBUFF1,1075:HBUFF2,1075:HBUFF3,1075:HBUFF4,1075:HBUFF5,2120:HBUFF6,40:HBUFF7,40:HBUFF8,40:HBUFF9,40:HBUFF10,1300:POKE&HF80F,0:POKE&HF84F,0:POKE&HF89C,0:PALETTE0,63:PALETTE1,60:PALETTE2,0:PALETTE3,36:ONBRKGOTO73
8 DIMN$(14),C(52),N(52),S(52),W(52),PI(4,13),SS(52):POKE&HA27E,&HFF:CU=1:GOSUB60:POKE282,255:RESTORE:FORZ=1TO4:READX(Z),Y(Z):NEXTZ:POKE&HF015,&H21
9 POKE65497,.:WIDTH80:CLS1:POKE&HFF9A,&H3F:LOCATE27,11:PRINT"PLEASE WAIT DRAWING SCREEN":LOCATE30,13:PRINT"AND SHUFFLING CARDS":LOCATE34,15:PRINT"(10 SECONDS)"
10 POKE&HE190,1:EXEC&HA956:R=RND(-TIMER):GOSUB30:POKE&HE6B9,&H39:HSCREEN4:POKE&HE6B9,&H20:HCLS0:HCOLOR3:HLINE(171,168)-(468,182),PSET,BF:HGET(171,168)-(468,182),10
11 HCLS0:Z=1:FORZ=1TO4:HCOLOR2:HDRAW"S16BM"+STR$(X(Z))+",1"+C$:NEXTZ:HGET(35,1)-(144,73),5:GOSUB37:GOSUB32:T=0:RT=1:GOSUB41
12 GOSUB58:GOSUB74:POKE&HE6E4,&HE6:HSCREEN4:POKE&HE6E4,&HE7:POKE&HFF9A,&H3F
13 'CURSOR AND COMMAND KEYS
14 P$=INKEY$:IFEN=1 THENPOKE400,180:EXEC
15 OS=(P(CU)-1)*10+1:IFOS<0 THENOS=1
16 HCOLOR2:HDRAW"S16BM"+STR$(X(CU))+","+STR$(OS)+C$
17 IFP$=CHR$(8) THENCU=CU-1 ELSEIFP$=CHR$(9)THENCU=CU+1
18 IFCU=>5 THEN CU=1 ELSE IFCU=0 THENCU=4
19 OS=(P(CU)-1)*10+1:IFOS<0 THENOS=1
20 IFP$=CHR$(94)ANDT<52 THENFORZ=1TO4:P(Z)=P(Z)+1:NEXT:P(5)=P(5)-4:GOTO41 ELSEIFP$=CHR$(94)ANDT=52 THENGOSUB74
21 IFP$=CHR$(10)ANDP(CU)<>0 THEN46 ELSEIFP$=CHR$(10)THENGOSUB74
22 IFEN=0 AND P(CU)>1 AND P$=CHR$(13)THEN EL=1:FORZ=1TO4:IFP(Z)=0 THENEL=0:GOSUB52ELSENEXTZ:ELSEIFEN=0 AND P$=CHR$(13)THENGOSUB74
23 IFEN=0 AND EL=1 ANDP(CU)=>1 THEN GOSUB74
24 IFEN=1ANDP$=CHR$(13)THENEN=0:GOTO53
25 IFP$="N" OR P$="S" THEN68
26 IFP(5)=0 THENGOSUB65
27 HCOLOREN:HDRAW"S16BM"+STR$(X(CU))+","+STR$(OS)+C$
28 GOTO 14
29 'SHUFFLE DECK
30 FORZ=1TO52:N(Z)=Z:NEXTZ:FOR Z=1TO52:R=RND(52):S=N(R):N(R)=N(Z):N(Z)=S:NEXTZ
31 'COMPUTE SUIT & CARD VALUE
32 FORZ=1TO52:W=N(Z)
33 IFW<=13THENQ=Q+1:GOTO34ELSEW=W-13:Q=Q+1:GOTO33
34 IFQ<3THENC(Z)=3ELSEC(Z)=2
35 S(Z)=Q:SS(Z)=Q+5:W(Z)=W+1:Q=0:NEXT:RETURN
36 'DRAW SUITS & PUT IN BUFFER
37 HCOLOR2:FORZ=1TO4:HDRAW"S16BM"+STR$(X(Z)+18)+",15"+C$(Z):HDRAW"S4BM"+STR$(X(Z)+90)+",3"+S$(Z):NEXTZ:HPAINT(85,41),3,2:HPAINT(237,41),3,2:HPAINT(389,41),2,2
38 HPAINT(541,41),2,2:HPAINT(130,7),3,2:HPAINT(282,7),3,2:HPAINT(435,5),2,2:HPAINT(586,5),2,2:HPAINT(583,7),2,2:HPAINT(592,7),2,2
39 EN=0:HGET(50,14)-(129,64),1:HGET(202,14)-(282,64),2:HGET(354,14)-(434,64),3:HGET(505,14)-(586,64),4:HGET(124,2)-(138,11),6:HGET(276,2)-(290,11),7:HGET(428,2)-(442,11),8:HGET(580,2)-(594,11),9:RETURN
40 '^ ARROW & 1ST CRD ROW
41 DE$=STR$(P(5)):DE$=RIGHT$(DE$,LEN(DE$)-1):IFVAL(DE$)<10 THENDE$="0"+DE$
42 EN=0:FORZ=1TO4:OS=(P(Z)-1)*10+1
43 T=T+1:HPUT(X(Z),OS)-(X(Z)+110,OS+70),5:HCOLOR2:HDRAW"S4BM"+STR$(X(Z)+5)+","+STR$(OS+2)+N$(W(T)):HPUT(X(Z)+15,OS+11)-(X(Z)+94,OS+61),S(T)
44 HDRAW"S4BM"+STR$(X(Z)+90)+","+STR$(OS+2)+S$(S(T)):PI(Z,P(Z))=T:HPUT(X(Z)+89,OS+1)-(X(Z)+103,OS+10),SS(T):NEXT:HPRINT(78,23),DE$:IFRT=1 THENRT=0:RETURNELSE14
45 ' DWN ARROW
46 EN=0:V1=S(PI(CU,P(CU))):V2=N(PI(CU,P(CU))):FORZ=1TO4:IFV1=S(PI(Z,P(Z))) AND N(PI(Z,P(Z))) > V2 THEN47 ELSE NEXTZ:GOSUB74:GOTO14
47 OS=(P(CU)-1)*10+1:IFOS=0 THENOS=1
48 HPUT(X(CU),OS)-(X(CU)+110,OS+70),5:HCOLOR0:HDRAW"S16BM"+STR$(X(CU))+","+STR$(OS)+C$:HCOLOR2
49 P(CU)=P(CU)-1:Z=CU:OS=(P(Z)-1)*10+1:IFOS=0 THEN OS=1
50 IFP(CU)=0THEN14ELSEHPUT(X(CU)+15,OS+11)-(X(CU)+94,OS+61),S(PI(CU,P(CU))):HDRAW"S16BM"+STR$(X(CU))+","+STR$(OS)+C$:GOTO14
51 'MOVE CRDS TO MTY PILE
52 V1=PI(CU,P(CU)):V2=CU:V3=OS:EN=1:P$="":RETURN
53 IFP(CU)<>0 THENEN=0:GOSUB74:GOTO14 ELSE P(V2)=P(V2)-1
54 HPUT(X(V2),V3)-(X(V2)+110,V3+70),5:HCOLOR0:HDRAW"S16BM"+STR$(X(V2))+","+STR$(V3)+C$:OS=(P(V2)-1)*10+1:IFOS<0 THEN OS=1
55 HCOLOR2:HDRAW"S16BM"+STR$(X(V2))+","+STR$(OS)+C$:HPUT(X(V2)+15,OS+11)-(X(V2)+94,OS+61),S(PI(V2,P(V2)))
56 P(CU)=1:PI(CU,P(CU))=V1:HCOLOR2:HDRAW"S4BM"+STR$(X(CU)+5)+",3"+N$(W(PI(CU,P(CU)))):HPUT(X(CU)+89,2)-(X(CU)+103,11),SS(PI(CU,P(CU))):HPUT(X(CU)+15,12)-(X(CU)+94,61),S(PI(CU,P(CU))):GOTO14
57 'DRAW SCREEN
58 HCOLOR2:NA$="BY GEORGE QUELLHORST ":FORZ=1TO22:HPRINT(0,Z+1),MID$(NA$,Z,1):NEXTZ:NA$="CARDS LEFT IN THE DECK":FORZ=1TO22:HPRINT(79,Z-1),MID$(NA$,Z,1):NEXTZ:RETURN
59 'DEFIN VAR.
60 N$(2)="BRR7FD2GL6GD2R8ULDL8U2ER6EU2HBL6DLUBR14":N$(3)="BRR7FDGFD2GL7HUBRDFBR5EU2HL3BR3EUHBL5GDBLUEBR14":N$(4)="BR4R4D4R2L2D3LU7BL2G4R6BL7E4BR10"
61 N$(5)="BR9L9D3RU3BD3R7FD2GL7HURDFBR5EU2H":N$(6)="BR9L8GD5FR7EU2HL6BLU2EBGBD2BRGD2FR5EU2H":N$(8)="BRR7FDGFD2GL7HU2EHUEBRGDFR5BL5GD2FBR5EU2HEUH":N$(9)="BRR7FD5GL8BR7EU2BLEU2HBL5GD2FR5BL5BLHU2E":N$(11)="BR4R5BL2D6GL5HURDFBR3EU6L2"
62 N$(13)="R2D7LULDRU7LDRBRBD3E4R2GLG4BEF3R2HLH3":N$(10)="BR2RD7BR2L5BR2U6GLE2BR8R7FD5GL7HU5EBRGD5FBR5EU5H":N$(12)="R9D7L9U7BRD7BR7U7D6LF2R2UL2":N$(14)="BR3R3F3D4LU4H3LG3D4LU4E3BL2BD5R7":C$="R27D17L27U17":N$(7)="R9DG6LE6UBL7DLU"
63 S$(1)="BR1GD2F4R4E4U2HL3G2H2L3":S$(2)="BR3G3DF3R6E3UH3L6":S$(3)="BR4G4D3RE3RD3R2U3RF3RU3H4L4":S$(4)="BR5GDFDLHL2GDFR2ERD2R2U2RFR2EUHL2GLUEUHL2"
64 C$(1)="BR4R2F3E3R2F4G8L2H8E4BL4":C$(2)="BR7R4FRF5G5LGL4HLH5E5REBR7":C$(3)="BR9RF8G3LH2L2D2FL4EU2L2G2LH3E8RBR":C$(4)="BR9F4G3R2E2RF3G3LH2L2D2FL4EU2L2G2LH3E3RF2R2H3E4BL9":P(1)=1:P(2)=1:P(3)=1:P(4)=1:P(5)=48:RETURN
65 IFP(1)=1ANDP(2)=1ANDP(3)=1ANDP(4)=1ANDP(5)=0 THENHCOLOR3:GOSUB72:FORZ=1TO10:PLAY"O2L10T25FEEDBAG":NEXTZ:GOTO67
66 FORZ=1TO4:D(Z)=S(PI(Z,P(Z))):IFD(Z)=0 THENRETURNELSENEXTZ:IFD(1)=D(2)ORD(1)=D(3)ORD(1)=D(4)ORD(2)=D(3)ORD(2)=D(4)ORD(3)=D(4)THENRETURNELSEHCOLOR3:GOSUB71:PLAY"L4T5O1CGAF"
67 P$=INKEY$:IFP$=CHR$(3)THEN73ELSEIFP$=""THEN 67
68 IFP$="N"THENHCLS0:GOSUB58:FORZ=1TO4:P(Z)=1:NEXT:P(5)=48:T=0:GOSUB30:GOSUB41:GOTO14
69 IFP$="S"THENHCLS0:GOSUB58:FORZ=1TO4:P(Z)=1:NEXT:P(5)=48:T=0:GOSUB41:GOTO14
70 GOTO 67
71 POKE&HF015,&HAA:HPUT(171,168)-(468,182),10:HCOLOR0:HPRINT(28,21),"GAME IS OVER. YOU LOST !":HPRINT(22,22),"PRESS <S> FOR SAME, <N> FOR NEW GAME":POKE&HF015,&H21:RETURN
72 POKE&HF015,&HAA:HPUT(171,168)-(482,182),10:HCOLOR0:HPRINT(22,21),"CONGRATULATIONS. YOU ARE A WINNER !":HPRINT(22,22),"PRESS <S> FOR SAME, <N> FOR NEW GAME":POKE&HF015,&H21:RETURN
73 CLS:POKE&HA27E,3:LOCATE25,10:PRINT"THANK YOU FOR PLAYING ACES UP":LOCATE21,12:PRINT"BREAK KEY HAS BEEN RESTORED TO NORMAL":PRINT:PRINT:POKE 65496,0:STOP
74 POKE&H190,1:EL=0:FORZ=1TO10:EXEC:NEXTZ:RETURN
