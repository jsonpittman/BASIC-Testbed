10 ' Sum 128
20 ' By Dave Archer
30 '
40 ' Special thanks to Roger Bouchard for the fix to BASIC's LOCATE command
50 ' and to Dick White for his valuable suggestions.
60 ' Also to Kevin Darling for providing GIME specs.
70 '
80 ' Palette colors set for RGB analog monitor
90 '
100 RGB : 'Change to CMP for composite color monitor
110 PALETTE 0,8:PALETTE 1,18
120 PALETTE 2,63:PALETTE 3,0
130 PALETTE 4,0
140 PALETTE 8,63
150 X=1 :' 9600 baud
160 POKE 150,X :'set printer baud rate 
161 'Baud          X =
162 '----         -----
163 '9600           1
164 '4800           7
165 '2400          18
166 '1200          41
167 ' 600          87
168 '
170 GOTO 240: ' if using monochrome then delete this line
180 '
190 ' * For monochrome *
200 FORX=0 TO 7 STEP 2:PALETTE X,0:PALETTE X+1,63:NEXT
210 PALETTE 4,63:PALETTE 3,0:PALETTE 2,63
220 'Change all "ATTR (1,3)" to "ATTR (0,0)" for monochrome
230 '
240 CLEAR 2000
250 DIM MO(13,21),A$(21),B$(12),M$(4)
260 ON BRK GOTO 1180
270 ON ERR GOTO 1280
280 CLS:POKE 65497,0:POKE 282,255: ' fast speed & upper case
290 WIDTH80:CLS1:PRINT:PRINT
300 PRINT TAB(7),"-< Sum 128 >-"
310 PRINT:PRINT
320 PRINT TAB(21)" By  Dave Archer"
330 PRINT:PRINT:PRINT
340 PRINT TAB(16)"(T)ape      or     (D)isk  ?"
350 I$=INKEY$
360 IF I$="T" THEN DEV=-1:GOTO 400:' TAPE
370 IF I$="D" THEN DEV=1:GOTO 400:' DISK
380 GOTO 350
390 '  Set 128 by 28 screen
400 ONBRK GOTO 1170
410 CLS
420 POKE&HFF98,&H03:POKE&HFF99,&H75: ' Set for 28 rows of text
430 POKE&HFF9F,128: ' Set for 128 columns with column 0 as left most column
435 ' BASIC vectors and patch provided by Roger Bouchard.
440 ' Tell BASIC new screen size 
450 POKE&HFE00,&H20:POKE&HFE01,0: ' beginning cursor address
460 POKE&HFE04,128: ' # columns on text screen
470 POKE&HFE05,28: ' # rows on text screen
480 POKE&HFE06,&H3E:POKE&HFE07,&H00: ' End of text screen
490 ' ***  Patch BASIC's LOCATE command  ***
500 POKE &HF90A,&H58: 'enable new LOCATE positions
510 POKE &HF8EC,128:' Allows LOCATE from column 0 - 127
520 POKE &HF8F4,28: ' Allows LOCATE from row 0 - 27
530 CLS
540 ' Read DATA strings
550 FORX=1TO4:READ M$(X):NEXT
560 FORX=0 TO 21:READ A$(X):NEXT
570 FORX=1TO12:READB$(X):NEXT
580 ' Main program begin
590 ATTR 0,0:CLS
600 POKE 65497,0
610 POKE &HFF9F,128
620 F$="#####.##":T$="    #######.## "
630 FORY=0TO13:MO(Y,21)=0:NEXT
640 ATTR 1,3
650 FORX=1 TO 4
660 PRINT M$(X)
670 NEXT X
680 ATTR 2,1:PRINTA$(0):ATTR 2,3
690 PRINT
700 T=0:C=0
710 FORX=1 TO 20
720 A$(X)=LEFT$(A$(X)+STRING$(15," "),15): ' Make sure string length is 15 chrs.
730 ATTR 2,3:PRINT" ";:ATTR 1,3
740 PRINT A$(X);
750 FORY=1 TO 12
760 T=T+MO(Y,X)
770 ATTR 0,3
780 PRINTUSING F$;MO(Y,X);
790 MO(Y,21)=MO(Y,21)+MO(Y,X)
800 NEXT Y
810 ATTR 1,3
820 MO(13,X)=T
830 MO(13,21)=MO(13,21)+T:PRINTUSINGT$;T;:ATTR 2,3:PRINT" ";:T=0
840 NEXT X
850 ATTR 1,3
860 PRINT "                ";STRING$(110,"-")
870 PRINT" ";
880 ATTR 2,1
890 PRINTA$(21);:ATTR 1,3
900 FORX=1TO12
910 GOSUB 990
920 PRINTUSINGF$;MO(X,21);
930 NEXT
940 F$="#####.##"
950 ATTR 1,3
960 PRINTUSING T$;MO(13,21);:ATTR 6,4:PRINT" ";
970 ATTR 2,3:PRINT:ATTR 1,3:GOTO 1080
980 ' Check number and change USING string accordingly
990 IF MO(X,21)>9999 THEN F$="######.#" ELSE F$="#####.##"
1000 IF MO(X,21)>99999 THEN F$="########"
1010 RETURN
1020 ' Main Menu
1030 ' scroll routine and check for <F1> key or left & right arrow keys
1040 ATTR 1,3:LOCATE 0,0:FORX=1TO4:PRINTM$(X):NEXT
1050 ATTR 2,1
1060 LOCATE 0,4:PRINTA$(0);
1070 ATTR 1,3
1080 X=128
1090 L=PEEK(343):' Check left arrow
1100 R=PEEK(344):' Check right arrow
1110 I$=INKEY$
1120 IF I$="g" THEN 1320: 'Check for <F1> key
1130 IF R=247 THEN X=X-1:IF X<=128 THEN X=128
1140 IF L=247 THEN X=X+1:IF X>=176 THEN X=176
1150 POKE &HFF9F,X 
1160 GOTO 1090
1170 POKE &HFF9F,128
1180 ATTR 0,0:CLS:PRINT:PRINT:PRINT " * BREAK key pressed *":PRINT
1190 IF DEV=0 THEN RUN
1200 PRINT:PRINT "  Press <M> for Main"
1210 PRINT "  Press <Q> to quit"
1220 I$=INKEY$
1230 IF I$="M" THEN 1820
1240 IF I$="Q" THEN 1260
1250 GOTO1220
1260 ATTR 0,0:CLS:WIDTH80:POKE65496,0
1270 END : ' **** END ****
1280 POKE &HFF9F,128:CLS:PRINT:PRINT:PRINT"  An ERROR has occurred ! "
1290 PRINT:PRINT" Error number";ERNO;"in line number";ERLIN
1300 PRINT:GOTO 1190
1310 ' *** Command mode ***
1320 POKE &HFF9F,128:X=1:Y=1
1330 ATTR 1,3
1340 T$="    #######.##"
1350 IF X>=8 THEN LOCATE 47,3 ELSE LOCATE 0,3
1360 PRINT " (F)ile i/o       (M)ain menu       (P)rint        arrow keys        (ALT)     ";
1370 A=MO(X,Y)
1380 IF X=>8 THEN LOCATE 0,0:ATTR 1,3:PRINT:PRINT:LOCATE 64,0:GOTO 1400
1390 ATTR 1,3:LOCATE 64,0:PRINT:LOCATE 0,0
1400 PRINT "Column/Row = ( ";B$(X);CHR$(44);A$(Y);")     Value = ";
1410 PRINT USING F$;A;
1420 PRINT:PRINT:PRINT
1430 ' locate on current cell
1440 LOCATE 8+(X*8),Y+5
1450 ATTR 4,2,U:PRINTUSINGF$;A;:ATTR 2,3: ' Hi-lite current cell
1460 I$=INKEY$
1470 IF I$="" THEN 1460
1480 ATTR 1,3
1490 IF VAL(I$) > 0 THEN 1640
1500 IF I$="0" THEN 1640
1510 XX=X:YY=Y: ' save current cell location to allow erase of hi-lite
1520 IF I$=CHR$(8) THEN X=X-1:IF X<1 THEN X=1: ' left arrow
1530 IF I$=CHR$(9) THEN X=X+1:IF X>12 THEN X=12: ' right arrow
1540 IF X<8 THEN POKE&HFF9F,128 ELSE POKE &HFF9F,192: ' shift window
1550 IF I$=CHR$(10) THEN Y=Y+1:IF Y>20 THEN Y=20: ' down arrow
1560 IF I$=CHR$(94) THEN Y=Y-1:IF Y<1 THEN Y=1: ' up arrow
1570 ATTR 0,3:LOCATE 8+(XX*8),YY+5:PRINTUSINGF$;A;:ATTR 2,3: ' erase hi-lite on previous cell
1580 IF I$="F" THEN 1830: ' File save or load
1590 IF I$="P" THEN 2240: ' Printer out
1600 IF I$="M" THEN 1040: ' main menu
1610 IF I$="@" THEN 1320:' <ALT> or <@> key returns to upper left cell
1620 SOUND 180,1:' key click... delete if annoying
1630 GOTO 1330
1640 IF X=>8 THEN LOCATE 64,1:PRINT:LOCATE 64,1:GOTO 1660
1650 LOCATE 0,1:PRINT:LOCATE 0,1
1660 ATTR 1,3
1670 T=MO(X,Y)
1680 PRINT"   New value  : ";I$;
1690 LINEINPUT RM$
1700 I$=I$+RM$:MO(X,Y)=VAL(I$)
1710 IF MO(X,Y)>=10000 THEN MO(X,Y)=T:SOUND 100,2:GOTO 1330
1720 ATTR 1,3
1730 MO(X,21)=0:MO(13,Y)=0:MO(13,21)=0
1740 FORV=1TO20:MO(X,21)=MO(X,21)+MO(X,V):NEXT
1750 GOSUB 990
1760 LOCATE 8+(X*8),27:PRINTUSINGF$;MO(X,21);
1770 FORV=1TO12:MO(13,Y)=MO(13,Y)+MO(V,Y):MO(13,21)=MO(13,21)+MO(V,21):NEXT
1780 LOCATE 112,Y+5:PRINTUSINGT$;MO(13,Y);
1790 LOCATE 112,27:PRINTUSINGT$;MO(13,21);
1800 F$="#####.##"
1810 GOTO 1330
1820 GOTO 590
1830 POKE &HFF9F,128:LOCATE 0,0:ATTR 1,3
1840 PRINT:PRINT:PRINT:PRINT:LOCATE 0,0
1850 PRINT "  < FILE I/O >        (S)ave   (L)oad  or  (Q)uit "
1860 I$=INKEY$
1870 IF I$="S" THEN LOCATE 0,0:PRINT:GOTO 1920
1880 IF I$="L" THEN LOCATE 0,0:PRINT:GOTO 2080
1890 IF I$="Q" THEN 1320: 'Return to command mode
1900 GOTO 1860
1910 '*****      SAVE
1920 LINEINPUT "  Filename to save : ";F$
1930 IF LEN(F$)>8 THEN SOUND 100,2:GOTO 1830
1940 F$=F$+"/SUM"
1950 POKE 65496,0
1960 IF DEV=-1 THEN LINEINPUT " Prepare tape and press <ENTER> ";I$
1970 OPEN "O",DEV,F$
1980 FOR Y=1TO20
1990 PRINT#DEV,A$(Y)
2000 FORX=1TO12
2010 PRINT#DEV,MO(X,Y)
2020 NEXT X
2030 PRINT#DEV,"*******":' dummy string
2040 NEXT Y
2050 CLOSE
2060 GOTO 1820
2070 '*****       LOAD
2080 LINEINPUT "  Filename to load : ";F$
2090 IF LEN(F$)>8 THEN SOUND 100,2:GOTO 1830
2100 F$=F$+"/SUM"
2110 POKE 65496,0
2120 IF DEV=-1 THEN LINEINPUT " Prepare tape and press <ENTER> ";I$
2130 OPEN "I",DEV,F$
2140 FORY=1TO20
2150 INPUT#DEV,A$(Y)
2160 FORX=1TO12
2170 INPUT#DEV,MO(X,Y)
2180 NEXT X
2190 INPUT #DEV,I$:' ignore dummy string
2200 NEXT Y
2210 CLOSE
2220 GOTO 1820
2230 ' PRINTER OUT
2240 POKE &HFF9F,128:LOCATE 0,0:PRINT:LOCATE 0,0:ATTR 1,3
2250 LINEINPUT " Prepare printer and press <ENTER> or <BREAK> to quit ";I$
2260 POKE 65496,0
2270 ' Q$=CHR$(27)+CHR$(20): ' FOR RADIO SHACK PRINTER
2280 Q$=CHR$(27)+CHR$(66)+CHR$(3):' FOR GEMINI 10X
2290 ' SET TO 17 CPI
2300 PRINT#-2,Q$
2310 PRINT#-2,RIGHT$(A$(0),124)
2320 PRINT#-2,STRING$(128,95)
2330 FORX=1TO21
2340 IF X=21 THEN PRINT#-2,STRING$(128,95)
2350 PRINT#-2,A$(X);
2360 FORY=1TO12
2370 IF MO(Y,X)>9999.99 THEN F$="######.#" ELSE F$="#####.##"
2380 IF MO(Y,X)>99999 THEN F$=" ###### "
2390 PRINT#-2,USING F$;MO(Y,X);
2400 NEXT Y
2410 PRINT#-2,USING T$;MO(13,X)
2420 NEXT X
2430 GOTO 1820
2440 '
2450 ' TEXT STRINGS
2460 '
2470 ' M$(1) -  M$(4)
2480 DATA ""
2490 DATA "                                -< Sum 128 >-"
2500 DATA ""
2510 DATA " Press left or right arrow keys to scroll        Press F1 key for command mode "
2520 ' A$ (0)
2530 DATA "      Item          Jan     Feb     Mar     Apr     May     Jun     Jul     Aug     Sep     Oct     Nov     Dec          Total"
2540 '
2550 '
2560 ' Edit ->  Category 1  -  Category 20  to suit needs !
2570 ' The length of the string must remain the same !   15 chrs. min/max !
2580 '     A$(1) -  A$(20)
2590 DATA "Catagory 1     "
2600 DATA "Category 2     "
2610 DATA "Category 3     "
2620 DATA "Category 4     "
2630 DATA "Category 5     "
2640 DATA "Category 6     "
2650 DATA "Category 7     "
2660 DATA "Category 8     "
2670 DATA "Category 9     "
2680 DATA "Category 10    "
2690 DATA "Category 11    "
2700 DATA "Category 12    "
2710 DATA "Category 13    "
2720 DATA "Category 14    "
2730 DATA "Category 15    "
2740 DATA "Category 16    "
2750 DATA "Category 17    "
2760 DATA "Category 18    "
2770 DATA "Category 19    "
2780 DATA "Category 20    "
2790 '
2800 ' A$ (21)
2810 DATA "  Total        "
2820 '
2830 ' B$(1) - B$(12)
2840 DATA Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec
2850 '
