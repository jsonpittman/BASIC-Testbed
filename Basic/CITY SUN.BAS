10 '===========================
20 '  CITY SUN TO DEMONSTRATE 
30 '   THE USE OF THE HI-RES
40 '      PALETTE COMMAND
50 '===========================
60 '
70 ONBRKGOTO2670
80 ONERRGOTO2640
90 POKE65497,0
100 HSCREEN2
110 HBUFF1,600:HBUFF2,600:HBUFF3,600:HBUFF4,600
120 HCLS4
130 PALETTECMP
140 'DRAW ROAD
150 HCOLOR8
160 HLINE(0,155)-(319,155),PSET
170 'EMPTY ROAD BUFFER
180 HGET(0,155)-(30,191),1
190 'DRAW BUILDING
200 HLINE(0,155)-(45,100),PSET,B
210 FORY=105TO140STEP10
220 FORX=7TO35STEP8
230 HLINE(X,Y)-(X+5,Y+5),PSET,BF
240 NEXTX,Y
250 HLINE(16,155)-(26,145),PSET,B
260 HPAINT(5,150),7,8
270 HPAINT(20,150),2,8
280 'DRAW FIRE HYDRANT
290 HDRAW"BM50,155;R6L1U6H1L1U1D1L1G1D6"
300 HPAINT(52,152),3,8
310 'DRAW RESTAURANT
320 HCOLOR8
330 HLINE(60,155)-(97,130),PSET,B
340 HLINE(70,130)-(70,120),PSET
350 HLINE(87,130)-(87,120),PSET
360 HLINE(60,110)-(97,120),PSET,B
370 HPAINT(62,112),,8
380 HCOLOR1
390 HPRINT(8,14),"Food"
400 HCOLOR8
410 HLINE(60,150)-(97,150),PSET
420 HPAINT(61,151),0,8
430 HLINE(65,135)-(76,145),PSET,B
440 HLINE(81,135)-(92,145),PSET,B
450 HPAINT(66,138),1,8
460 HPAINT(82,136),1,8
470 'DRAW HOTEL
480 HLINE(105,155)-(155,80),PSET,B
490 HLINE(105,126)-(155,136),PSET,B
500 HPAINT(106,154),3,8
510 HPAINT(106,125),3,8
520 HPRINT(14,16),"HOTEL"
530 FORY=85TO120STEP10
540 FORX=110TO150STEP12
550 HLINE(X,Y)-(X+5,Y+5),PSET,BF
560 NEXTX,Y
570 HLINE(117,138)-(143,155),PSET,B
580 HLINE(129,138)-(131,155),PSET,BF
590 'DRAW GAS STATION
600 HLINE(165,155)-(170,154),PSET,B
610 HLINE(166,154)-(169,125),PSET,BF
620 HLINE(211,155)-(216,154),PSET,B
630 HLINE(212,154)-(215,125),PSET,BF
640 HLINE(176,155)-(187,154),PSET,B
650 HLINE(178,153)-(185,141),PSET,B
660 HDRAW"BM186,149;F1R1E1U2H3R1U1L1U2"
670 HPAINT(179,152),2,8
680 HLINE(193,155)-(204,154),PSET,B
690 HLINE(195,153)-(202,141),PSET,B
700 HDRAW"BM203,149;F1R1E1U2H3R1U1L1U2"
710 HPAINT(196,152),2,8
720 HDRAW"BM166,125;R49E10L49G10D10R49U10E10D30L22U4L4U6L9D10R4L4L4U4L8D4L3U10R30D5R15U10L5"
730 HPRINT(22,16),"Fuel"
740 HPAINT(180,140),5,8
750 HPAINT(200,140),5,8
760 HPAINT(220,144),5,8
770 HPAINT(176,124),5,8
780 HPAINT(219,135),1,8
790 HPAINT(206,136),1,8
800 HPAINT(195,136),3,8
810 'DRAW SHOPPING MALL
820 HLINE(230,155)-(315,90),PSET,B
830 FORY=95TO145STEP15
840 FORX=235TO305STEP10
850 HLINE(X,Y)-(X+5,Y+10),PSET,BF
860 NEXTX,Y
870 HCOLOR8
880 HPAINT(231,154),2,8
890 HLINE(235,80)-(310,60),PSET,B
900 HPAINT(236,79),3,8
910 HCOLOR4
920 HPRINT(30,8),"SHOPPING"
930 HPRINT(32,9),"MALL"
940 HCOLOR8
950 HLINE(240,90)-(240,80),PSET
960 HLINE(272,90)-(272,80),PSET
970 HLINE(305,90)-(305,80),PSET
980 'SET BACKGROUND FOR SKY
990 HCOLOR10
1000 HPAINT(0,0),,8
1010 HPAINT(75,125),,8
1020 HPAINT(170,146),,8
1030 HPAINT(186,146),,8
1040 HPAINT(193,146),,8
1050 HPAINT(203,146),,8
1060 HPAINT(210,146),,8
1070 HPAINT(241,89),,8
1080 HPAINT(273,89),,8
1090 'PEOPLE WAKE UP-LIGHTS ON
1100 GOSUB2240
1110 FORX=1TO5
1120 X1=(RND(4)*8)-1:Y1=(RND(4)*10)+95:X2=(RND(4)*12)+98:Y2=(RND(4)*10)+75
1130 HPAINT(X1,Y1),4,7
1140 FORI=1TO1000:NEXTI
1150 HPAINT(X2,Y2),4,3
1160 FORI=1TO1000:NEXTI
1170 NEXTX
1180 'RED CAR GOES BY
1190 GOSUB2240:C=3:GOSUB2130:GOSUB2340
1200 'SHOPPING MALL OPENS
1210 GOSUB2240
1220 FORY=95TO145STEP15
1230 FORX=235TO305STEP10
1240 IFY=95THENHS=9
1250 IFY=110THENHS=11
1260 IFY=125THENHS=12
1270 IFY=140THENHS=13
1280 PALETTEHS,0
1290 HCOLORHS
1300 HPAINT(X,Y),,2
1310 NEXTX,Y
1320 FORI=9TO13
1330 IFI=10THENNEXTI
1340 PALETTEI,63
1350 FORX=1TO2000:NEXTX,I
1360 'BIRDS FLY BY
1370 GOSUB2240
1380 POKE65496,0
1390 HCOLOR8
1400 HDRAW"BM300,13;R4L1U1D2BM300,17;R4L1U1D2BM308,15;R4L1U1D2"
1410 GOSUB2570
1420 POKE65497,0
1430 'GREEN CAR GOES BY
1440 GOSUB2240:C=0:GOSUB2130:GOSUB2340
1450 'AIRPLANE FLYS ACROSS
1460 GOSUB2240
1470 HCOLOR4
1480 HDRAW"BM309,15;R2E3G3F3H3R6"
1490 GOSUB2570
1500 'ORANGE CAR GOES BY
1510 GOSUB2240:C=7:GOSUB2130:GOSUB2340
1520 'CLOUD PASSES OVER
1530 GOSUB2240
1540 POKE65496,0
1550 HDRAW"BM292,6;C4R3E2F5D1R2E3R5D2F3R2D1G5D1L25H4U3L2U1H3E7R3F4D1"
1560 HPAINT(295,10),4,4
1570 GOSUB2570
1580 POKE65497,0
1590 'COP WITH FLASHING LIGHT
1600 GOSUB2240:C=4:GOSUB2130:SP=1:GOSUB2340:SP=0:HCOLOR8
1610 'PICKUP TRUCK GOES BY
1620 GOSUB2240
1630 HDRAW"BM289,166;R3U5D5R12U5D5R13U5L13U4L8G4R12L12L3D5"
1640 HPAINT(290,162),2,8
1650 HPAINT(293,162),2,8
1660 HPAINT(305,162),2,8
1670 HCIRCLE(293,165),3,8
1680 HPAINT(293,165),8,8
1690 HCIRCLE(311,165),3,8
1700 HPAINT(311,165),8,8
1710 GOSUB2500
1720 'MAGENTA CAR GOES BY
1730 GOSUB2240:C=6:GOSUB2130:GOSUB2340
1740 'SHOPPING MALL CLOSES
1750 GOSUB2240
1760 FORI=13TO9STEP-1
1770 IFI=10THENNEXTI
1780 PALETTEI,0
1790 FORX=1TO2000:NEXTX,I
1800 FORY=95TO145STEP15
1810 FORX=235TO305STEP10
1820 HPAINT(X,Y),8,2
1830 NEXTX,Y
1840 'TAXI GOES BY
1850 GOSUB2240:C=1:GOSUB2130:SP=2:GOSUB2340:SP=0
1860 'PEOPLE SLEEP-LIGHTS OFF
1870 GOSUB2240
1880 FORY=105TO140STEP10
1890 FORX=7TO35STEP8
1900 HPAINT(X,Y),,7
1910 FORPA=1TO500:NEXTPA
1920 NEXTX,Y
1930 FORY=85TO120STEP10
1940 FORX=110TO150STEP12
1950 HPAINT(X,Y),,3
1960 FORPA=1TO500:NEXTPA
1970 NEXTX,Y
1980 'STARS
1990 GOSUB2240
2000 FORI=9TO15
2010 PALETTEI,0
2020 NEXTI
2030 FORI=1TO100
2040 A=RND(320)-1:B=RND(130)-1:C=RND(7)+8
2050 IFHPOINT(A,B)<9THEN2040
2060 HSET(A,B,C)
2070 NEXTI
2080 FORI=9TO15
2090 IFI=10THENNEXT
2100 PALETTEI,(RND(2)-1)*63
2110 NEXTI
2120 GOTO2080
2130 'DRAW CAR
2140 HDRAW"BM4,184;C8R4U4D4R8U4D4R7U4D4R5U2L1U2L5H4L3D4R7L7U4L5G3D1R8L8L4D4"
2150 HPAINT(6,182),C,8
2160 HPAINT(15,182),C,8
2170 HPAINT(20,182),C,8
2180 HPAINT(25,182),C,8
2190 HCIRCLE(9,186),3,8
2200 HPAINT(9,186),8,8
2210 HCIRCLE(22,186),3,8
2220 HPAINT(22,186),8,8
2230 RETURN
2240 'CHANGE SKY & BUFFER COLOR
2250 READC
2260 IFC=-1THENREADC:GOTO2280
2270 FORI=1TO2000:NEXT
2280 PALETTE10,C
2290 HGET(279,0)-(319,20),2
2300 FORI=1TO2000:NEXT
2310 RETURN
2320 'SKY COLOR DATA
2330 DATA-1,14,13,12,29,28,45,44,45,28,29,12,13,14,16,0
2340 'GET/PUT ROAD MOVEMENT L-R
2350 IFSP=0THEN2410ELSEIFSP=1THEN2360ELSEIFSP=2THEN2400
2360 PALETTE14,7
2370 HCOLOR14
2380 HLINE(13,173)-(15,175),PSET,BF
2390 PA=7:GOTO2410
2400 HLINE(10,173)-(18,175),PSET,BF
2410 HGET(0,155)-(30,191),3
2420 FORX=0TO289
2430 IFSP=0ORSP=2THEN2460ELSEBL=BL+1
2440 IFBL=5ANDPA=63THENBL=0:PA=7:PALETTE14,7
2450 IFBL=5ANDPA=7THENBL=0:PA=63:PALETTE14,63
2460 HPUT(X,155)-(X+30,191),3,PSET
2470 NEXTX
2480 HPUT(X-1,155)-(X+30-1,191),1,PSET
2490 RETURN
2500 'GET/PUT ROAD MOVEMENT R-L
2510 HGET(289,155)-(319,191),3
2520 FORX=289TO0STEP-1
2530 HPUT(X,155)-(X+30,191),3,PSET
2540 NEXTX
2550 HPUT(X+1,155)-(X+30+1,191),1,PSET
2560 RETURN
2570 'GET/PUT SKY MOVEMENT R-L
2580 HGET(279,0)-(319,20),4
2590 FORX=279TO0STEP-1
2600 HPUT(X,0)-(X+40,20),4,PSET
2610 NEXTX
2620 HPUT(X+1,0)-(X+40+1,20),2,PSET
2630 RETURN
2640 'PRINT ERROR NUMBER & LINE
2650 CLS
2660 PRINT"ERROR NUMBER";ERNO;"IN LINE";ERLIN
2670 'RESTORE PALETTE & SPEED
2680 POKE65496,0
2690 PALETTECMP
