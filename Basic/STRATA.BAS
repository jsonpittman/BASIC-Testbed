10 CLEAR900:GOSUB10000:GOSUB9000
99 GOSUB100:IFE=1GOTO10010ELSE99
100 FORM=0TOD:V=X:W=Y:X=X+T:Y=Y+U:IFX<2ORX>=30THENT=-T:X=X+T+T:IFN THENPLAY"C"
110 IFY>=21ORY<3GOSUB7500:IFE=1THENRETURNELSEELSEIFHPOINT(X*8,Y*8)GOSUB7000ELSEIFS=G ANDW-F>=13GOSUB10110:GOSUB8000
120 HCOLOR0:HPRINT(V,W),"%":HCOLOR1:HPRINT(N*X,Y),"%":NEXT
190 L=J:J=FNJ(0):IFL<>J ANDJ>=2ANDJ<=H+QD THENHCOLOR0:HPRINT(L,22),B$:HCOLOR1:HPRINT(J,22),B$:RETURNELSEJ=L:HPRINT(J,22),B$:RETURN
7000 K=INT(Y-F):POKE65466,C(K-3)*I:U=U*Q:S=S+(11-K)*R:HCOLOR0:HPRINT(INT(X/2)*2,Y),"#$":PLAYC$(12-K):POKE65466,0:IFD=BS-1ANDK<8THEND=BS:RETURNELSERETURN
7500 IFY>=24GOSUB9000:RETURNELSEIFY<3THENIFH=0THENH=(PD-24+2)/2:B$=SP$:HCOLOR0:HPRINT(J,22),LP$ELSEELSEIFY<23ANDU>0ANDX>=J ANDX<J-H+PD-22THENJ=J+.1:IFY=22THENY=21:T=SGN(X):U=.5ELSEIFRND(3)=1THENPLAY"C":ONRND(3)GOTO7510,7530,7540ELSEELSERETURN
7501 J=J+.1:U=-U:PLAY"C":RETURN
7510 T=SGN(T)/2:U=-1:RETURN
7530 T=SGN(T):U=-1:RETURN
7540 T=-SGN(T):U=-ABS(U):RETURN
8000 O=K:K=Z:Z=O:FORA=2TO7:HCOLORI*10+A-I*A:HPRINT(2,F+A+3),"#$#$#$#$#$#$#$#$#$#$#$#$#$#$":NEXT:RETURN
9000 J=J+.1:H=0:D=BS-1:N=0:HCOLOR0:HPRINT(V,W),"%":HCOLOR0:HPRINT(J,22),B$:J=2:B$=LP$:FORZ=1TO10:GOSUB190:PLAY"O2CO4":NEXT:BL=BL-1:IFP GOSUB9500:IFBL=-1THEN50000
9010 IFBUTTON(0)=0ANDP GOSUB190:GOTO9010ELSEV=10:W=23:X=2+RND(5):Y=11+F:HCOLOR0:HPRINT(33+BL,9),"%":HCOLOR1:HPRINT(X,Y),"%":XX=X:YY=Y
9020 IFBUTTON(0)ANDP GOSUB190:GOTO9020ELSEN=1:T=1:U=1:X=XX:Y=YY:PLAY"V31":RETURN
9500 S=S-INT(S/1000000)*1000000:PLAY"O5":HCOLOR1:VZ=V:WZ=W:OT=T:OU=U:OD=D:NZ=N:XZ=X:YZ=Y:D=1:N=0:LS=LEN(STR$(S)):FORYY=1TO0STEP-1:FORXX=0TO9:HCOLORYY+RND(6)*YY:PLAYSTR$(XX+1):HPRINT(40-LS,5),STRING$(LS-1,48+XX):HCOLOR-YY+1:HPRINT(39-LS,5),S
9510 HCOLOR1:GOSUB190:NEXTXX,YY:V=VZ:W=WZ:T=OT:U=OU:N=NZ:X=XZ:Y=YZ:D=OD:PLAY"O4":RETURN
10000 ON BRK GOTO25000:DIMC$(12):POKE65497,0:WIDTH40:PALETTE0,0:PALETTE11,63:CLS1:Q=-1:RP=1:LOCATE3,10:ATTR3,0:PRINT"Is this an RGB color monitor? (Y/N)":ATTR2,0:PRINT:DATA0,63,36,52,54,18,25,45,18,56,0,0,63,24,38,52,33,29,26,33,32,0
10001 A$=INKEY$:IFA$="N"ORA$="n"THENCS=16:GOSUB10006:GOSUB10007ELSEIFA$="Y"THENCS=7:GOSUB10007:GOSUB10006ELSE10001
10005 BS=1:QD=26:PD=QD:LP$="###$":SP$="#$":PLAY"T255O5B":WIDTH40:ATTR0,0:FORX=0TO31:READC:POKEX+61621,C:NEXT:GOTO10010:DATA255,255,255,255,255,255,255,0,254,254,254,254,254,254,254,0,0,0,28,62,62,62,28,0,124,130,154,162,154,130,124,0
10006 FORX=0TO10:READC:NEXT:FORX=1TO12:C$(X)=STR$(X):NEXT:RETURN
10007 FORX=0TO10:READC(X):PALETTEX,C(X):NEXT:RETURN
10010 ONBRK GOTO20000:E=0:GOSUB11000:FORX=2TO7:PALETTEX,0:NEXT:TI$="C2R6EU4HL6HU4ER6C3BR2R8L4D12BR6C4U12R7FD4GL7R6F2D4BR2C5U11ER6FD5NL8D6BR6C6C6U12L4R8BR3C7R6FD5NL8D6BL8U11E":FORX=0TO2:FORY=0TO2:HDRAW"S20BM"+STR$(23+X)+","+STR$(100+Y)+TI$:NEXTY,X
10015 PLAY"T255L255O4":FORX=2TO7:PALETTEX,C(X):SOUNDX*10,2:NEXT:ST$="by Michael Sirolly":FORX=22TO15STEP-1:HCOLOR0:HPRINT(11,X+1),ST$:HCOLOR1:HPRINT(11,X),ST$:PLAY"V20;"+STR$(25-X):NEXT
10020 OC=15:C=11:FORX=0TO39:PALETTEC,C(4):HCOLORC:HPRINT(39-X,23),"%":HPRINT(X,0),"%":C=C+1:IFC=16THENC=11:NEXTELSENEXT
10025 HCOLOR9:HPRINT(6,18),"version 1.0     & June, 1987":PLAY"V31O4":FORX=1TO6:PLAY"CV-V-V-V-V-":NEXT:PLAY"V31":T=100
10030 T=T-1:GOSUB11100:IFBUTTON(0)GOTO10130ELSEIFBUTTON(1)ORINKEY$=" "GOTO10200ELSEIFT THEN10030
10035 IFHI$(1)<>""THENT=100:HCOLOR15:Z$=STRING$(40,"%"):HPRINT(0,0),Z$:HPRINT(0,23),Z$:FORX=1TO12:PALETTEX,0:NEXT:HCOLOR10:HPRINT(15,5),"TOP SCORES":HDRAW"S4C11BM116,43L39GD96FR166EU96HL40"ELSE10050
10036 PALETTE11,C(6):PALETTE12,C(1):HCOLOR12:FORX=1TO10:IFHI$(X)<>""THENST$=RIGHT$(STR$(X),2)+". "+HI$(X):HPRINT(10,6+X),ST$:NEXTELSENEXT
10040 PALETTE10,RND(63):T=T-1:IFBUTTON(0)GOTO10130ELSEIFBUTTON(1)ORINKEY$=" "GOTO10200ELSEIFT THENIF(T/10)-INT(T/10)>.4THENPALETTE15,C(4):GOTO10040ELSEPALETTE15,CS:GOTO10040
10050 S=0:R=1:F=0:GOSUB11200:HCOLOR1:HPRINT(39-LEN(STR$(SP)),5),SP:HPRINT(36-LEN(STR$(RP))/2,13),RP:P=0:DEF FNJ(K)=X+T:V=3:W=3:HCOLOR1,0:G=-1:BL=5:GOSUB9000:TI=200
10055 S$="GAME        OVER         PRESS   BUTTON TO START        SPACE-   OPTIONS":FORZ=0TO8:HCOLORZ/3+2:HPRINT(32,15+Z),MID$(S$,1+Z*8,8):NEXT
10060 GOSUB100:IFBUTTON(0)GOTO10130ELSEIFBUTTON(1)ORINKEY$=" "THEN10200ELSEIFS<60+Q*40GOTO10060ELSE10010
10100 R=1:F=0:GOSUB11200:T=-1:S=0:P=1:FORX=1TO5:HPRINT(32+X,9),"%":PLAY"O5V31GV26GV21GV16GV11GV6GV1GV31":NEXT:V=3:W=3:BL=5:R=0:DEF FNJ(A)=INT(JOYSTK(0)/((PD-H)/10)+2)
10110 HCOLOR0:HPRINT(34,13),"####":R=R+1:HCOLOR1:HPRINT(36-LEN(STR$(R))/2,13),R:G=294*R+S:F=R-1:IFF>8THENF=8
10120 RETURN
10130 GOSUB10100:GOSUB9000:GOTO99
10200 HCLS0:FORX=0TO10:PALETTEX,C(X):NEXT:HCOLOR1:HPRINT(16,7),"OPTIONS:":HDRAW"S4C6BM124,59L15GD62FR100EU62HL15"
10210 L=9:C1$="YES":C2$="NO":OP$="REBOUND?":R$(0)="REBOUND.":R$(1)="DEMOLISH.":GOSUB10250:Q=R:OP$="VISIBLE?":R$(0)="VISIBLE.":R$(1)="INVISIBLE.":GOSUB10250:I=(R+1)/2
10215 OP$="SPEED?":C1$="SLOW":C2$="FAST":R$(0)="SLOW SPEED.":R$(1)="FAST SPEED.":GOSUB10250:BS=(R+1)/2+1:OP$="PADDLES?":C1$="LARGE":C2$="SMALL":A$=" SIZE.":R$(0)=C1$+A$:R$(1)=C2$+A$:GOSUB10250
10220 HCOLOR1:HPRINT(14,14),"PRESS BUTTON":IFR=1THENLP$="#$":SP$="$":QD=28:PD=24ELSELP$="###$":SP$="#$":QD=26:PD=QD
10230 IFBUTTON(0)ORBUTTON(1)ORINKEY$<>""THENHCLS0:GOTO10050ELSE10230
10250 HCOLOR1:HPRINT(15,L),OP$:PALETTE2,C(9):PALETTE3,C(9):HCOLOR2:HPRINT(14,14),C1$:HCOLOR3:HPRINT(26-LEN(C2$),14),C2$
10260 Z=RND(63):IFJOYSTK(0)<33THENR=-1:P1=Z:P2=C(9)ELSER=1:P2=Z:P1=C(9)
10270 PALETTE2,P1:PALETTE3,P2:IFBUTTON(0)<>1THEN10260ELSEPLAY"T255O5B"
10280 IFBUTTON(0)THEN10280
10290 HCOLOR0:HPRINT(15,L),OP$:HPRINT(14,14),C1$:HPRINT(26-LEN(C2$),14),C2$:HCOLOR9:HPRINT(15,L),R$((R+1)/2):L=L+1:PALETTE2,C(2):PALETTE3,C(3):RETURN
11000 FORX=0TO15:PALETTEX,0:NEXT:HSCREEN2:FORX=0TO10:PALETTEX,C(X):NEXT:RETURN
11100 PALETTEC,C(4):PALETTEOC,CS:OC=C:C=C+1:IFC=16THENC=11:RETURNELSERETURN
11200 GOSUB11000:FORX=1TO10:PALETTEX,0:NEXT:HDRAW"S4BM0,0C1D191R14U174R226D174R15U191":HPAINT(1,1),1:HDRAW"BM258,15"+TI$:GOSUB8000
11210 S$="L4GD20FR54EU20HL4BL46BD32":HDRAW"C6BM263,27"+S$+S$+S$:HCOLOR1:HPRINT(33,7),"BALLS:":HPRINT(33,11),"ROUND:":HPRINT(33,3),"SCORE:":FORX=1TO10:PALETTEX,C(X):NEXT:RETURN
20000 HCOLOR6,0:HSCREEN2:FORX=0TO10:PALETTEX,C(X):NEXT:PALETTE13,C(6):HDRAW"S4C13BM117,83L4GD22FR92EU22HL4":HCOLOR1:HPRINT(15,10),"QUIT GAME?":HCOLOR11:HPRINT(15,12),"YES":HCOLOR12:HPRINT(23,12),"NO"
20010 A=RND(63):IFJOYSTK(0)<33THENC1=A:C2=C(9)ELSEC1=C(9):C2=A
20020 PALETTE11,C1:PALETTE12,C2:IFBUTTON(0)THENIFJOYSTK(0)>32THEN10010ELSEELSE20010
20030 A$=STRING$(40,"$"):PALETTE13,0:FORX=1TO12:HCOLORX-INT((X-1)/6)*6+1:HPRINT(0,12-X),A$:HPRINT(0,11+X),A$:NEXT:FORX=1TO12:HCOLOR0:HPRINT(0,12-X),A$:HPRINT(0,11+X),A$:NEXT
20040 FORX=0TO15:PALETTEX,0:NEXT:WIDTH40:FORX=0TO8:PALETTEX,C(X):NEXT:POKE65496,0:END
25000 RUN
50000 HCOLOR2:HPRINT(32,15),"GAME":HPRINT(36,16),"OVER":HCOLOR1:PL$="T6V20O2L16CP16CP16CP16CP16CP16CP16CP16CP16CECECFCFCGCGCECEDFDFDGDGDADADFDFCGCGCACACBCBCGCGDADADGDGDFDFDGDGCECECBCBCGCGCECECBCBCGCGCECE":PLAY"V31T6O1"
50005 FORZ=1TO29:PLAY"V-CECE":GOSUB190:NEXT
50010 E=1:SP=S:RP=R:FORH=1TO10:IFS>SC(H)THENP=H:H=11:NEXT ELSENEXT:RETURN
50020 IFP<10THENFORX=9TOP STEP-1:HI$(X+1)=HI$(X):SC(X+1)=SC(X):NEXT
50030 SC(P)=S:HI$(P)=". . . . . . . . ":MID$(HI$(P),17-LEN(STR$(S)),LEN(STR$(S)))=STR$(S):HCOLOR0:FORX=23TO5STEP-1:HPRINT(2,X),STRING$(28,"#"):NEXT
50040 HCOLOR9:HPRINT(8,4),"CONGRATULATIONS!":HPRINT(5,7),"You achieved top score":HCOLOR10:HPRINT(4,9),RIGHT$(STR$(P),2):HDRAW"BM26,74R4BD2L4RDNU4BR2NU4":FORX=0TO21:FORY=0TO6:HCOLOR11:IFHPOINT(X+25,Y+72)THENHPRINT(5+X,Y+9),"$"
50050 OJ=26:PALETTE11,RND(63):NEXTY,X:HCOLOR9:HPRINT(6,17),"Enter your initials:":A$=INKEY$:CH$="ABCDEFGHIJKLMNOPQRSTUVWXYZ.*-":HCOLOR11:FORPT=0TO2:JC=1:OJ=26
50060 JX=JOYSTK(0):IFJX<10THENJC=JC-1:IFJC=0THENJC=29ELSEELSEIFJX>54THENJC=JC+1:IFJC=30THENJC=1
50065 IFOJ<>JC THENHCOLOR0:HPRINT(14+PT*2,20),MID$(CH$,OJ,1):HCOLOR11:HPRINT(14+PT*2,20),MID$(CH$,JC,1):OJ=JC:PLAY"O5T255B"
50070 PALETTE11,RND(63):IFBUTTON(0)THENMID$(HI$(P),PT*2+1,1)=MID$(CH$,JC,1)ELSEA$=INKEY$:IFINSTR(CH$,A$)ANDA$<>""THENMID$(HI$(P),PT*2+1,1)=A$:HCOLOR0:HPRINT(14+PT*2,20),MID$(CH$,OJ,1):HCOLOR11:HPRINT(14+PT*2,20),A$ELSE50060
50080 IFBUTTON(0)THENPALETTE11,RND(63):GOTO50080ELSENEXTPT
50090 PALETTE11,63:PLAY PL$:FORX=1TO20:PLAY"V-CECE":NEXT:GOTO10010
