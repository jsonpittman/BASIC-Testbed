0 ' COPYRIGHT 1989  FALSOFT,INC
10 POKE&HF015,&H21 'MAKE SOLID HPRINT CHARACTERS
20 POKE65497,0
30 PALETTE 0,63:PALETTE1,0
40 PCLEAR1
50 HBUFF 1,512:HBUFF 2,2256:HBUFF3,512:HBUFF4,512:HBUFF5,4096
60 HCOLOR1
70 HSCREEN3
80 POKE&HFF9A,63 'SET BORDER TO WHITE
90 CLEAR 2096
100 DATA @@,About The Desktop,Get Info,Key Caps,Music,END
110 DATA File,New Game,-,Quit,END
120 DATA Edit,Undo,-,Cut,Copy,Paste,END
130 DATA Options,Foreground,Background,END
140 DATA END
150 DIM CD(22),MENU$(10),CHOICE$(10,20),NU(10,20),HEIGHT(20),WI(10),RANGE(10)
160 ARROW$="C0D13M+3,-3M+1,+1DM+1,+1D2R3U2M-1,-1U2M-1,+1U2R4M-9,-9DC1D10M+1,-1U8M+1,+1D6RDRD2RD2RULU2LU2LU5M+1,+1D3RU2M+1,+1DR"
170 RAINBOW$="D3R1U3M+1,-1URDUM+1,-1R3M+1,-1R7M+1,+1R3M+1,+1DRUDM+1,+1RD3LU3D3BL3U2LD2U2M-1,-1LURLM-1,-1L7M-1,+1LDRLM-1,+1LD2RU2D2BR3U2RD2U2M+1,-1R3M+1,+1D2RU2"
180 CURSOR$=ARROW$:H1=1:H2=1
190 CD(1)=1
200 CD(18)=16
210 CD(7)=1:CD(0)=1
220 READ MENU$(CD(7))
230 IF MENU$(CD(7))="END" GOTO 350
240 HEIGHT(CD(7))=1
250 WI(CD(7))=0
260 READ CHOICE$(CD(7),HEIGHT(CD(7)))
270 CD(5)=LEN(CHOICE$(CD(7),HEIGHT(CD(7))))
280 IF CHOICE$(CD(7),HEIGHT(CD(7)))="END" GOTO 330
290 IF CD(5)>WI(CD(7)) THEN WI(CD(7))=CD(5)
300 IF CHOICE$(CD(7),HEIGHT(CD(7)))<>"-" THEN NU(CD(7),HEIGHT(CD(7)))=CD(0):CD(0)=CD(0)+1
310 HEIGHT(CD(7))=HEIGHT(CD(7))+1
320 GOTO 260
330 CD(7)=CD(7)+1
340 GOTO 220
350 CD(7)=CD(7)-1:RANGE(0)=8
360 FOR C1=1 TO CD(7)
370 HEIGHT(C1)=HEIGHT(C1)-1
380 CD(19)=CD(19)+LEN(MENU$(C1))+2
390 RANGE(C1)=RANGE(C1-1)+(LEN(MENU$(C1))+2)*8
400 NEXT
410 RANGE(C1)=640
420 IF CD(19)>80 THEN PRINT"Menubar Options Too Long":END
430 FOR C1=1 TO CD(7)
440 FOR C2=1 TO HEIGHT(C1)
450 IF CHOICE$(C1,C2)<>"-" THEN CHOICE$(C1,C2)=" "+CHOICE$(C1,C2)+STRING$((WI(C1)-LEN(CHOICE$(C1,C2)))+1,32)
460 NEXT C2
470 NEXT C1
480 GOSUB 17000 'DRAW MENUBAR
490 ''' END MENU STEUP
500 ''' YOUR PROGRAM STARTS HERE
510 DIM GR(2,2)
520 TURN$="X":FOR T=0 TO 2:FOR T2=0 TO 2:GR(T,T2)=0:NEXT T2,T
530 HLINE(200,75)-(440,75),PSET:HLINE(200,115)-(440,115),PSET
540 HLINE(280,35)-(280,155),PSET:HLINE(360,35)-(360,155),PSET
550 GOSUB 10000
560 ON SELECT GOTO 930,700,790,770,900,990,910,660,660,660,1000,1000
570 IF CX<200 OR CX>440 OR CY<35 OR CY>155 GOTO 550
580 IF CX=280 OR CX=360 OR CY=75 OR CY=115 GOTO 550
590 XI=INT((CX-200)/80):YI=INT((CY-35)/40)
600 IF GR(XI,YI) THEN SOUND 55,1:GOTO 550 ELSE GR(XI,YI)=1
610 A=XI*80+200:B=YI*40+35:MOVE=1:LX=XI:LY=YI
620 GOSUB 15000
630 IF TURN$="X" THEN HLINE(A+10,B+5)-(A+70,B+35),PSET:HLINE(A+10,B+35)-(A+70,B+5),PSET:TURN$="O" ELSE HCIRCLE(A+40,B+20),30:TURN$="X"
640 GOSUB 16000
650 GOTO 550
660 WX(1)=208:WY(1)=70:WX(2)=430:WY(2)=120:GOSUB 12000
670 GOSUB 15000:SOUND 55,1:HPRINT(29,11),"Sorry, not implemented":HPRINT(31,12),"Click to continue":GOSUB 16000
680 GOSUB 10000:IF CX=-1 AND CY=-1 AND SELECT=0 GOTO 680
690 GOSUB 13000:GOTO 560
700 WX(1)=170:WY(1)=70:WX(2)=470:WY(2)=130:GOSUB 12000:GOSUB 15000
710 HPRINT(23,10),"The CoCo Desktop - A programming"
720 HPRINT(23,11),"environment which supports Pop-Up"
730 HPRINT(23,12),"Windows and Pull-Down Menus.":HPRINT(23,14),"Available Memory :":HPRINT(42,14),MEM:HPRINT(49,14),"Bytes"
740 GOSUB 16000
750 GOSUB 10000:IF CX=-1 AND CY=-1 AND SELECT=0 GOTO 750
760 GOSUB 13000:GOTO 560
770 POKE65496,0:PLAY"T3L2FL8GB-AGL4O4CCL8CDO3AB-L4GGL8GB-AGFO4CO3GAL4F":POKE65497,0
780 GOTO 550
790 WX(1)=70:WY(1)=60:WX(2)=310:WY(2)=112:GOSUB 12000:GOSUB 15000
800 FOR C=65 TO 90:HPRINT(11+C-65,9),CHR$(C):NEXT
810 FOR C=97 TO 122:HPRINT(11+C-97,10),CHR$(C):NEXT
820 FOR C=33 TO 58:HPRINT(11+C-33,11),CHR$(C):NEXT
830 FOR C=59 TO 64:HPRINT(11+C-59,12),CHR$(C):NEXT
840 FOR C=91 TO 96:HPRINT(17+C-91,12),CHR$(C):NEXT
850 FOR C=123 TO 126:HPRINT(23+C-123,12),CHR$(C):NEXT
860 GOSUB 16000
870 GOSUB 10000:IF CX=-1 AND CY=-1 AND SELECT=0 GOTO 870
880 GOSUB 13000:GOTO 560
890 GOTO 550
900 GOSUB 14000:GOTO 520 'CLEAR SCREEN AND REDRAW MENUBAR
910 IF MOVE=1 THEN GR(LX,LY)=0:MOVE=0:IF TURN$="O" THEN TURN$="X":HLINE(A+10,B+5)-(A+70,B+35),PRESET:HLINE(A+10,B+35)-(A+70,B+5),PRESET ELSE TURN$="O":HCIRCLE(A+40,B+20),30,0
920 GOTO 550
930 WX(1)=228:WY(1)=30:WX(2)=410:WY(2)=90:GOSUB 12000
940 GOSUB 15000 'CLEAR CURSOR
950 HPRINT(32,5),"The CoCo Desktop":HPRINT(33,7),"By Tony Zamora":HPRINT(33,9),"Copyright 1988"
960 GOSUB 16000 'DRAW CURSOR
970 GOSUB 10000:IF CX=-1 AND CY=-1 AND SELECT=0 GOTO 970
980 GOSUB 13000:GOTO 560
990 POKE 65496,0:CLS:RGB:END
1000 TEMP=SELECT:WX(1)=144:WY(1)=16:WX(2)=496:WY(2)=64:GOSUB 12000:GOSUB 15000
1010 IF TEMP=11 THEN HPRINT(20,3),"Enter the new foreground color." ELSE HPRINT(20,3),"Enter the new background color."
1020 HPRINT(53,3),"Cancel":HPRINT(55,5),"OK"
1030 HCIRCLE(421,25),8,,1,.5,.75:HLINE(421,21)-(471,21),PSET:HLINE(421,34)-(471,34),PSET:HCIRCLE(421,30),8,,1,.25,.5:HCIRCLE(471,25),8,,1,.75,0:HCIRCLE(471,30),8,,1,0,.25:HLINE(413,26)-(413,29),PSET:HLINE(479,26)-(479,29),PSET
1040 HCIRCLE(421,41),8,,1,.5,.75:HLINE(421,37)-(471,37),PSET:HLINE(421,50)-(471,50),PSET:HCIRCLE(421,46),8,,1,.25,.5:HCIRCLE(471,41),8,,1,.75,0:HCIRCLE(471,46),8,,1,0,.25:HLINE(413,42)-(413,45),PSET:HLINE(479,42)-(479,45),PSET
1050 HLINE(157,37)-(352,50),PSET,B:GOSUB 16000
1060 P=20:PY=5:L=23:GOSUB 1110 'INPUT THE COLOR
1070 IF ST$<>STRING$(L," ") THEN ST=VAL(ST$) ELSE 1100
1080 IF ST>63 THEN SOUND 55,1:GOTO 1060
1090 IF TEMP=11 THEN PALETTE 1,ST ELSE PALETTE 0,ST:POKE&HFF9A,ST
1100 GOSUB 13000:IF SELECT=0 THEN GOTO 550 ELSE GOTO 560
1110 R=P:ST$=STRING$(L," "):GOSUB15000:HPRINT(R,PY),ST$:GOSUB16000
1120 GOSUB 10000:K$=INKEY$:TR=TIMER:IF TR-INT(TR/3)*3=0 THEN HLINE(R*8,PY*8-1)-(R*8+1,PY*8+8),PSET,B
1130 IF SELECT<>0 THEN ST$=STRING$(L," "):RETURN
1140 'CHECK TO SEE IF THEY CHOSE "CANCEL" OR "OK"
1150 IF CX>=421 AND CX<=471 AND CY>=21 AND CY<=30 THEN ST$=STRING$(L," "):RETURN
1160 IF CX>=421 AND CX<=471 AND CY>=37 AND CY<=46 THEN RETURN
1170 HLINE(R*8,PY*8-1)-(R*8+1,PY*8+8),PRESET,B
1180 IF K$="" GOTO 1120
1190 IF K$<>CHR$(8) GOTO 1220
1200 R=R-1:IF R<P THEN R=P
1210 MID$(ST$,R-P+1,1)=" ":GOSUB15000:HPRINT(R,PY)," ":GOSUB16000:GOTO 1120
1220 IF K$=CHR$(13) THEN RETURN
1230 IF K$>="0" AND K$<="9" THEN IF R<L+P THEN MID$(ST$,R-P+1,1)=K$:GOSUB15000:HPRINT(R,PY),K$:GOSUB16000:R=R+1:IF R>L+P THEN R=L+P
1240 GOTO 1120
9999 'GET A MOUSE EVENT
10000 SELECT=0
10010 C7=INT(JOYSTK(0)*9.9+H1):C8=INT(JOYSTK(1)*2.783+H2)
10020 IF BUTTON(0)<>0 AND C8<10 AND CD(1)<>1 THEN HPUT(C9-H1,C0-H2)-(C9-H1+16,C0-H2+16),1:GOSUB 10120:CX=-1:CY=-1:RETURN
10030 IF C7=C9 AND C8=C0 GOTO 10100
10040 IF CD(1)<>1 THEN HPUT(C9-H1,C0-H2)-(C9-H1+16,C0-H2+16),1
10050 IF C7-H1<0 THEN C7=H1
10060 IF C8-H2<0 THEN C8=H2
10070 HGET(C7-H1,C8-H2)-(C7-H1+16,C8-H2+16),1
10080 HDRAW "BM"+STR$(C7)+","+STR$(C8)+CURSOR$
10090 C9=C7:C0=C8:CD(1)=0
10100 IF BUTTON(0)<>0 AND C8>=10 THEN CX=C7:CY=C8:RETURN
10110 CX=-1:CY=-1:RETURN
10120 CD(14)=1:SELECT=0:C7=INT(JOYSTK(0)*9.9+H1)
10130 IF C7>RANGE(CD(14)) THEN CD(14)=CD(14)+1:GOTO 10130
10140 IF CD(14)>CD(7) GOTO 10530
10150 CD(6)=RANGE(CD(14)-1):CD(13)=(WI(CD(14))+2)*8+CD(6)-1:CD(22)=HEIGHT(CD(14))*8+15
10160 HGET(CD(6)-1,11)-(CD(13)+1,CD(22)+1),2
10170 HLINE(CD(6)-1,10)-(CD(13)+1,CD(22)+1),PSET,B:HGET(CD(6),0)-(RANGE(CD(14))-1,9),3:HPUT(CD(6),0)-(RANGE(CD(14))-1,9),3,PRESET
10180 HLINE(CD(6)-1,0)-(CD(6)-1,9),PSET
10190 HCOLOR0:HLINE(CD(6),11)-(CD(13),15),PSET,BF:HCOLOR1
10200 HLINE(CD(13)+2,12)-(CD(13)+2,CD(22)+1),PSET
10210 CD(4)=CD(6)/8
10220 FOR C3=1 TO HEIGHT(CD(14))
10230 IF CHOICE$(CD(14),C3)="-" THEN HPRINT(CD(4),C3+1),STRING$(WI(CD(14))+2," "):CD(8)=(C3+1)*8+3:FOR C4=CD(6) TO CD(13) STEP 2:HSET(C4,CD(8)):NEXT:GOTO10250
10240 HPRINT(CD(4),C3+1),CHOICE$(CD(14),C3)
10250 NEXT
10260 GOTO 10430
10270 IF BUTTON(0)=0 GOTO 10480
10280 C7=INT(JOYSTK(0)*9.9+H1):C8=INT(JOYSTK(1)*2.783+H2)
10290 IF C7=C9 AND C8=C0 GOTO 10270
10300 IF C8<9 AND (C7<RANGE(CD(14)-1) OR C7>RANGE(CD(14))) AND C7>8 GOTO 10480
10310 CD(15)=FIX((C8-8)/8)
10320 CD(17)=FIX((C0-8)/8)
10330 CD(16)=CD(15)*8+8
10340 CD(11)=CD(17)*8+8
10350 HPUT(C9-H1,C0-H2)-(C9-H1+16,C0-H2+16),1
10360 IF C7<CD(6) OR C7>CD(13) OR C8<CD(18) OR C8>CD(22) GOTO 10420 'IF C7 IS OUTSIDE, GOTO
10370 IF C9<CD(6) OR C9>CD(13) OR C0<CD(18) OR C0>CD(22) THEN IF CHOICE$(CD(14),CD(15))<>"-" THEN HGET(CD(6),CD(16))-(CD(13),CD(16)+7),4:HPUT(CD(6),CD(16))-(CD(13),CD(16)+7),4,PRESET:GOTO 10430 ELSE GOTO 10430
10380 IF CD(16)=CD(11) GOTO 10430
10390 IF CHOICE$(CD(14),CD(15))="-" THEN HGET(CD(6),CD(11))-(CD(13),CD(11)+7),4:HPUT(CD(6),CD(11))-(CD(13),CD(11)+7),4,PRESET:GOTO 10430
10400 IF CHOICE$(CD(14),CD(17))="-" THEN HGET(CD(6),CD(16))-(CD(13),CD(16)+7),4:HPUT(CD(6),CD(16))-(CD(13),CD(16)+7),4,PRESET:GOTO 10430
10410 HGET(CD(6),CD(11))-(CD(13),CD(11)+7),4:HPUT(CD(6),CD(11))-(CD(13),CD(11)+7),4,PRESET:HGET(CD(6),CD(16))-(CD(13),CD(16)+7),4:HPUT(CD(6),CD(16))-(CD(13),CD(16)+7),4,PRESET:GOTO 10430
10420 IF C9>=CD(6) AND C9<=CD(13) AND C0>=CD(18) AND C0<=CD(22) THEN IF CHOICE$(CD(14),CD(17))<>"-" THEN HGET(CD(6),CD(11))-(CD(13),CD(11)+7),4:HPUT(CD(6),CD(11))-(CD(13),CD(11)+7),4,PRESET
10430 IF C7-H1<0 THEN C7=H1
10440 IF C8-H2<0 THEN C8=H2
10450 HGET(C7-H1,C8-H2)-(C7-H1+16,C8-H2+16),1
10460 HDRAW "BM"+STR$(C7)+","+STR$(C8)+CURSOR$
10470 C9=C7:C0=C8:GOTO 10270
10480 HPUT(C9-H1,C0-H2)-(C9-H1+16,C0-H2+16),1
10490 HPUT(CD(6)-1,11)-(CD(13)+1,CD(22)+1),2:HGET(CD(6),0)-(RANGE(CD(14))-1,9),3:HPUT(CD(6),0)-(RANGE(CD(14))-1,9),3,PRESET
10500 HLINE(CD(6)-1,0)-(CD(6)-1,9),PRESET
10510 IF C7-H1<0 THEN C7=H1
10520 IF C8-H2<0 THEN C8=H2
10530 HGET(C7-H1,C8-H2)-(C7-H1+16,C8-H2+16),1
10540 HDRAW "BM"+STR$(C7)+","+STR$(C8)+CURSOR$
10550 C9=C7:C0=C8
10560 C7=INT(JOYSTK(0)*9.9+H1):C8=INT(JOYSTK(1)*2.783+H2)
10570 IF C7>=CD(6) AND C7<=CD(13) AND C8>=CD(18) AND C8<=CD(22) THEN SELECT=NU(CD(14),CD(15))
10580 RETURN
11999 'POP UP A WINDOW
12000 GOSUB 15000
12010 HGET(WX(1),WY(1))-(WX(2),WY(2)),5
12020 HLINE(WX(1),WY(1))-(WX(2),WY(2)),PSET,B
12030 HCOLOR0
12040 HLINE(WX(1)+1,WY(1)+1)-(WX(2)-1,WY(2)-1),PSET,BF
12050 HCOLOR1
12060 HLINE(WX(1)+4,WY(1)+2)-(WX(2)-4,WY(2)-2),PSET,B
12070 HLINE(WX(1)+5,WY(1)+2)-(WX(1)+5,WY(2)-2),PSET
12080 HLINE(WX(2)-5,WY(1)+2)-(WX(2)-5,WY(2)-2),PSET
12090 GOSUB 16000
12100 RETURN
12999 'ERASE THE CURRENT WINDOW
13000 GOSUB15000:HPUT(WX(1),WY(1))-(WX(2),WY(2)),5:GOSUB16000:RETURN
13999 'CLEAR THE SCREEN AND REDRAW THE MENUBAR
14000 HCLS:GOSUB17000:CD(1)=1:C9=-1:C0=-1:RETURN
14999 'ERASE THE CURSOR
15000 HPUT(C9-H1,C0-H2)-(C9-H1+16,C0-H2+16),1:RETURN
15999 'REDRAW THE CURSOR
16000 HGET(C9-H1,C0-H2)-(C9-H1+16,C0-H2+16),1
16010 HDRAW"BM"+STR$(C9)+","+STR$(C0)+CURSOR$
16020 RETURN
16999 'DRAW MENUBAR
17000 HLINE(0,10)-(639,10),PSET
17010 IF MENU$(1)="@@" THEN HDRAW"BM12,4"+RAINBOW$ ELSE HPRINT(2,0),MENU$(1)
17020 C2=2:C1=2
17030 C1=C1+LEN(MENU$(C2-1))+2
17040 IF C2>CD(7) THEN RETURN
17050 HPRINT(C1,0),MENU$(C2)
17060 C2=C2+1
17070 GOTO 17030
