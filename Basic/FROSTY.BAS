0 ' COPYRIGHT 1989 FALSOFT, INC
1 '****************************
2 '*    FROSTY THE SNOW MAN   *
3 '*            BY            *
4 '*      RUTH E. GOLIAS      *
5 '*  2826 PACIFIC COAST HWY. *
6 '*  TORRANCE, CALIF. 90505  *
7 '****************************
8 '
10 ON BRK GO TO 1860
20 HSCREEN2:PALETTE CMP:PALETTE 0,29:PALETTE 1,48:PALETTE 2,0:PALETTE 3,23:PALETTE 4,52:PALETTE 5,63:PALETTE 6,46:PALETTE 7,62:PALETTE 8,45:PALETTE 9,38:PALETTE10,32:HCLS0
30 HCOLOR 5
40 HPRINT(11,2),"FROSTY THE SNOW MAN"
50 HCOLOR 1
60 HLINE(0,112)-(320,192),PSET,BF
70 HCIRCLE(50,42),18,4,1,.25,.70
80 HCIRCLE(58,40),20,4,1,.30,.66
90 HPAINT(38,42),4,4
100 HCOLOR 2
110 HCIRCLE(174,76),16,2,.7,.44,.06
120 HCIRCLE(174,72),21,2,.5
130 HPAINT(160,70),2,2
140 HCIRCLE(174,68),20,2,.6,.46,.05
150 HPAINT(174,72),5,2
160 HPAINT(174,60),3,2
170 HCIRCLE(174,59),22,2,.6,.42,.08
180 HPAINT(174,56),2,2
190 HDRAW"BM168,73;U2R2D2L2"
200 HPAINT(169,72),2,2
210 HDRAW"BM179,73;U2R2D2L2"
220 HPAINT(180,72),2,2
230 HDRAW"BM174,73;F3G1L2U3"
240 HPAINT(175,75),9,2
250 HDRAW"BM171,79;FR5E"
260 HDRAW"BM189,80;R1F1R2F1R2F1L1G1L1G1L3G1L2G1L3G1L14H4E1"
270 HDRAW"BM159,79;L2G1L2G1L2D2R3D2R3D2E4BD5BR7D28ND4L3ND4L3ND4L3ND4U29H1"
280 HPAINT(180,84),3,2
290 HDRAW"BM156,86;L1D20ND4H3ND4H3ND4U18E2"
300 HPAINT(154,86),3,2
310 HCIRCLE(174,122),37,2,1,.03,.48
320 HCIRCLE(183,110),32,2,1,.78,.10
330 HDRAW"BM210,126;G1L2G1L3H1L2H2U5NR13U4NR15H2U4H2U4H2U4H1"
340 HPAINT(208,124),2,2
350 HPAINT(208,118),3,2
360 HCIRCLE(164,110),32,2,1,.42,.70
370 HDRAW"BM137,126;F1R2F1R3E1R2E2U5NL13U4NL15E2U4"
380 HPAINT(143,124),2,2
390 HPAINT(143,118),3,2
400 B$="U4E1R4F1D4G1L4H1"
410 HDRAW"BM172,95;XB$;"
420 HPAINT(173,93),2,2
430 HDRAW"BM172,108;XB$;"
440 HPAINT(173,107),2,2
450 HDRAW"BM172,121;XB$;"
460 HPAINT(173,120),2,2
470 HPAINT(158,111),5,2
480 FOR X=1 TO 50
490 B1=RND(320):B2=RND(100)
500 HSET(B1,B2,5)
510 HSET(168,72,5):HSET(169,72,5)
520 HSET(179,72,5):HSET(180,72,5)
530 HSET(168,72,2):HSET(169,72,2)
540 HSET(179,72,2):HSET(180,72,2)
550 NEXT X
560 FOR D=1 TO 500:NEXT D
570 PLAY"T4;V31;O2L2GL4.EL8FL4GO3L2C"
580 HPAINT(1,168),1,5
590 HPRINT(1,21),"WAS A JOLLY HAPPY SOUL,"
600 PLAY"O2L8BO3CL4DCO2BAL2.G"
610 HPAINT(1,168),1,5
620 HPRINT(1,21),"WITH A CORN COB PIPE AND A BUTTON NOSE"
630 PLAY"L8BO3CL4DCO2BL8AAL4GO3CO2E"
640 HPAINT(1,168),1,5
650 HPRINT(1,21),"AND TWO EYES MADE OUT OF COAL."
660 PLAY"L8GAL4GFEFL2.G"
670 HPAINT(1,168),1,5
680 HPRINT(1,21),"FROSTY THE SNOW MAN IS A FAIRY TALE"
690 HPRINT(1,22),"THEY SAY,"
700 PLAY"L2GL4.EL8FL4GO3L2CO2L8BO3CL4DCO2BAL2.G"
710 HPAINT(1,168),1,5
720 HPAINT(1,176),1,5
730 HPRINT(1,21),"HE WAS MADE OF SNOW,"
740 HPRINT(10,22),"BUT THE CHILDREN KNOW"
750 PLAY"L8BO3CL4DCO2L4BL8AAL4GO3CO2E"
760 HPAINT(1,168),1,5
770 HPAINT(1,176),1,5
780 HPRINT(1,21),"HOW HE CAME TO LIFE ONE DAY."
790 PLAY"L8GAL4GFEDL2.C"
800 HPAINT(1,168),1,5
810 HPRINT(1,21),"THERE MUST HAVE BEEN SOME MAGIC IN"
820 HPRINT(1,22),"THAT OLD SILK HAT THEY FOUND."
830 PLAY"L4CAAO3CCO2BAGEFAGFL2.E"
840 HPAINT(1,168),1,5
850 HPAINT(1,176),1,5
860 HPRINT(1,21),"FOR WHEN THEY PLACED IT ON HIS HEAD"
870 HPRINT(1,22),"HE BEGAN TO DANCE AROUND."
880 PLAY"L4EDDGGBBO3DL8DO2BO3L4DCO2BAL2G"
890 HPAINT(1,168),1,5
900 HPAINT(1,176),1,5
910 HPRINT(1,21),"OH! FROSTY THE SNOW MAN WAS ALIVE"
920 HPRINT(1,22),"AS HE COULD BE"
930 PLAY"L4.GP8L2GL4.EL8FL4GO3L2CO2L8BO3CL4DCO2BAL2.G"
940 HPAINT(1,168),1,5
950 HPAINT(1,176),1,5
960 HPRINT(1,21),"AND THE CHILDREN SAY HE COULD"
970 HPRINT(1,22),"LAUGH AND PLAY"
980 PLAY"L8BO3CL4DCO2BL8AAL4GO3CO2E"
990 HPAINT(1,168),1,5
1000 HPAINT(1,176),1,5
1010 HPRINT(1,21),"JUST THE SAME AS YOU AND ME."
1020 PLAY"L8GAL4GFEDL2.C"
1030 HPAINT(1,168),1,5
1040 PALETTE 0,45
1050 FOR D=1 TO 500:NEXT D
1060 PALETTE 0,62
1070 FOR D=1 TO 500:NEXT D
1080 HPAINT(2,1),7,8
1090 HCIRCLE(50,42),20,9
1100 HPAINT(50,42),9,9
1110 FOR D=1 TO 500:NEXT D
1120 HCOLOR 2
1130 HPRINT(10,2),"FROSTY THE SNOW MAN"
1140 PLAY"O2L2GL4.EL8FL4GO3L2C"
1150 HPRINT(10,3),"KNEW THE SUN WAS HOT THAT DAY,"
1160 PLAY"O2L8BO3CL4DCO2BAL2.G"
1170 HPRINT(10,4),"SO HE SAID "+CHR$(34)+"LET'S RUN AND"
1180 PLAY"L8BO3CL4DCO2BL8A"
1190 HPRINT(10,5),"WE'LL HAVE SOME FUN NOW"
1200 PLAY"AL4GO3CO2EL8G"
1210 HPRINT(10,6),"BEFORE I MELT AWAY."+CHR$(34)
1220 PLAY"AL4GFEFL2.GP8"
1230 HPRINT(10,7),"DOWN TO THE VILLAGE,WITH"
1240 PLAY"L2GL4.EL8FL4GO3L2CO2L8B"
1250 HPRINT(10,8),"A BROOMSTICK IN HIS HAND."
1260 PLAY"O3CL4DCO2BAL2.G"
1270 HPRINT(1,9),"RUNNING HERE AND THERE ALL AROUND THE"
1280 PLAY"L8BO3CL4DCO2BL8AAL4GO3C"
1290 HPRINT(1,10),"SQUARE SAYIN' "+CHR$(34)+"CATCH ME IF YOU CAN."+CHR$(34)
1300 PLAY"O2EL8GAL4GFEDL2.C"
1310 HPRINT(1,11),"HE LED THEM DOWN THE STREETS OF TOWN"
1320 PLAY"L4CAAO3CCO2BAG"
1330 HPRINT(1,12),"RIGHT TO THE TRAFFIC COP."
1340 PLAY"EFAGFL2.E"
1350 HPRINT(1,13),"AND HE ONLY PAUSED A MOMENT WHEN--"
1360 PLAY"L4EDDGGBBO3DL8D"
1370 HPRINT(1,14),"HE HEARD HIM HOLLER "+CHR$(34)+"STOP!"+CHR$(34)
1380 PLAY"O2BO3L4DCO2BAL2G"
1390 HPRINT(1,15),"FOR FROSTY THE SNOW MAN"
1400 PLAY"GGL4.EL8FL4GO3L2C"
1410 HPRINT(1,16),"HAD TO HURRY ON HIS WAY"
1420 PLAY"O2L8BO3CL4DCO2BAL2.G"
1430 HPRINT(1,17),"BUT HE WAVED GOODBYE SAYIN',"
1440 PLAY"L8BO3CL4DCO2BL8AA"
1450 HPRINT(1,18),+CHR$(34)+"DON'T YOU CRY,"+CHR$(34)
1460 PLAY"L4GO3CO2E"
1470 HPRINT(1,19),+CHR$(34)+"I'LL BE BACK AGAIN SOME DAY."+CHR$(34)
1480 PLAY"L8GAL4GFEDL2.C"
1490 FOR D=1 TO 500:NEXT D
1500 HSCREEN2:HCOLOR 1
1510 HLINE(0,112)-(320,192),PSET,BF
1520 HCIRCLE(50,42),20,9
1530 HPAINT(50,42),9,9
1540 HDRAW"BM189,149;C2;R2F1R2F1G1L1G1L3G1L2G1L3G1L12H2"
1550 HDRAW"BM159,148;L2G1L2G1L2D2R3D2R3D2E4BD5BR7D18ND4L3ND4L3ND4L3ND4U19H2"
1560 HDRAW"BM156,156;L1D10ND4H3ND4H3ND4U8E2"
1570 HCIRCLE(174,146),21,2,.3
1580 HCIRCLE(174,142),20,2,.4,.46,.05
1590 HCIRCLE(174,139),20,2,.4,.45,.05
1600 HCIRCLE(174,133),22,2,.6,.42,.08
1610 HPAINT(174,130),2,2
1620 HPAINT(174,134),3,2
1630 HPAINT(174,136),2,2
1640 HPAINT(174,144),10,2
1650 HPAINT(174,152),3,2
1660 HPAINT(154,157),3,2
1670 HDRAW"BM210,170;G1L2G1L3H1L2H2U5NR13U4R15D2L1D2L1D5"
1680 HPAINT(208,168),2,2
1690 HPAINT(208,161),3,2
1700 HDRAW"BM130,164;F1R2F1R3E1R2E2U5NL13U4L15D2R1D2R1D5"
1710 HPAINT(132,162),2,2
1720 HPAINT(132,156),3,2
1730 HDRAW"BM140,175;XB$;"
1740 HPAINT(142,175),2,2
1750 HDRAW"BM190,178;XB$;"
1760 HPAINT(192,176),2,2
1770 HDRAW"BM176,180;XB$;"
1780 HPAINT(178,178),2,2
1790 HDRAW"BM179,162;U2R2D2L2"
1800 HPAINT(180,161),2,2
1810 HDRAW"BM186,167;U2R2D2L2"
1820 HPAINT(187,166),2,2
1830 HPRINT(10,2),"I'LL BE BACK AGAIN SOME DAY."
1840 PLAY"O2L8GAL4GFEDL2.C"
1850 GOTO1850
1860 PALETTE CMP:HSCREEN 0:WIDTH32:CLS
