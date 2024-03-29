10 GOTO60
20 CLS:LOCATE4,10:PRINT"SAVING DMENU/HR1 AND DMENU/HR2":FORI=0TO1500:NEXT
30 POKE&HE6E4,&HE6:HSCREEN3:POKE&HE6E4,&HE7
40 POKE&HFFA2,&H70:SAVEM"DMENU/HR1",&H4000,&H5FFF,&HAC73:POKE&HFFA2,&H71:SAVEM"DMENU/HR2",&H4000,&H5BFF,&HAC73:POKE&HFFA2,&H7A
50 LOCATE4,10:PRINT" SAVED DMENU/HR1 AND DMENU/HR2":END
60 CMP:PALETTE0,63:PALETTE1,0:WIDTH80:HSCREEN1:HCLS
70 COLOR1:S$="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKL":HPRINT(2,0),S$:S$="a b c d e f g h i j k l m n o p q r s":HPRINT(2,4),S$:S$="a  b  c  d  e  f  g  h  i  j":HPRINT(2,10),S$
80 HPRINT(0,2),"0":HPRINT(0,7),"1":HPRINT(0,14),"2":HPRINT(0,20),"3
90 POKE&HE6E4,&HE6:HSCREEN3:POKE&HE6E4,&HE7:HBUFF1,1824:HGET(32,0)-(639,7),1:HLINE(32,0)-(639,7),PRESET,BF:HPUT(32,4)-(639,11),1
100 HGET(32,32)-(631,39),1:HLINE(32,32)-(631,39),PRESET,BF:HPUT(40,36)-(639,43),1
110 HGET(32,80)-(623,87),1:HLINE(32,80)-(623,87),PRESET,BF:HPUT(48,84)-(639,91),1
120 HGET(0,16)-(15,23),1:HLINE(0,16)-(15,23),PRESET,BF:HPUT(8,20)-(23,27),1:HGET(0,56)-(15,63),1:HLINE(0,56)-(15,63),PRESET,BF:HPUT(8,60)-(23,67),1:HGET(0,112)-(15,119),1:HLINE(0,112)-(15,119),PRESET,BF:HPUT(8,116)-(23,123),1
130 HGET(0,160)-(15,167),1:HLINE(0,160)-(15,167),PRESET,BF:HPUT(8,164)-(23,171),1
140 HLINE(32,15)-(639,15),PSET
150 HLINE(32,47)-(639,47),PSET
160 HLINE(32,95)-(511,95),PSET
170 HLINE(543,96)-(543,191),PSET:HLINE(543,95)-(639,95),PSET:HLINE(543,95)-(543,191),PSET
180 HLINE(31,0)-(31,191),PSET:HLINE(0,32)-(639,32),PSET:HLINE(0,80)-(639,80),PSET:HLINE(0,144)-(31,144),PSET
190 REM LINES 150-520 DRAW DESIGN ELEMENTS FOR KEY COMBINATIONS 0a-0z AND 0A-0L
200 HDRAW"BM32,16BR7BDG3RNE2DG3RNE3DG3RNE3R6ND2R7H3LNF2ENH3RH3UNHRH2"'0a
210 HDRAW"BM48,16BR5R5FL7ND6GD8HNUD2LGDR7D2RU2R7UH2DNU3HU8LD5"'0b
220 HDRAW"BM64,16BDD5RUR2DRU2R7DFR2EU4HL2BD2D2FEU2HGBU2GDL9UL2BR16BU"'0c
230 HDRAW"BM80,16BR3R8M+1,+4L10R5ER2FR3FD2GNL12LD2L2U2BUR2EHL2GFBL7L2HER2FGBDD2L2U2LHU2ERM+1,-4"'0d
240 HDRAW"BM96,16BR4R2DR5F4L2NL13D6L2BUU4L3D4R3BDL6U4L2D4L2U6L2E4NR2UBR2"'0e
250 HDRAW"BM112,16BR2R2FD2GL2HU2BD3NR4GD4FD5R2NU4R2U5EU4HBR4BUU2ER2FD2GL2HBDNR4D4G2M+2,+1RNR2D4R2U4RM+2,-1H2U4"'0f
260 HDRAW"BM128,16BR7D3L2D2R2D8HLHLHURUL2D2F2RFRF2E2RERE2U2L2DRDGLGLGU8R2U2L2U3L2"'0g
270 HDRAW"BM144,16BR6D2L5DRD7L2FR2EL2U7R4D11L3DR8UL3U11R4D7L2FR2EL2U7RUL5U2L2"'0h
280 HDRAW"BM160,16BR2R12GL10NHRBD13LGR12HL10R2BU13R2G2D2F2DG2D2F2R2E2U2H2UE2U2H2R2BR4"'0i
290 HDRAW"BM176,16BR3BDR4M+6,-1M-3,+5M+2,+7D2GL8HU3M+1,-3L2M-1,-3U2ER3D3M-1,+3"'0j
300 HDRAW"BM192,16BR14D10GL2HNR4UNR4ER2FU7M-8,+2U2NM+8,-2DNM+8,-2D9GL2HNR4UNR4ER2F"'0k
310 HDRAW"BM208,16BR8G2DG2L3DF3DM-2,+4RM+5,-4M+5,+4RM-2,-4UE3UL3H2UH2"'0l
320 HDRAW"BM224,16BR4R7FR2FD5GU6L3D5NR2DNR2D2GL5HLNU9RNU9RNU9FRNU10RBD2L8FRFR9ENL11RENL9":HPAINT(233,20),1,1'0m
330 HDRAW"BM240,16BR9BDGL3GDFDFNRGL2FNR2FRFND3RNU3E2R3HLHLH2R2U2L2NGR2F2NDHEUH"'0n
340 HDRAW"BM256,16BR3G2NUDLD5NF7EDF6NE6RE6NHU5LU2LNL3HL2G2NRNH2DH3DL"'0o
350 HDRAW"BM272,16BR7DGDG5UF5DFNDEUE5DH5U"'0p
360 HDRAW"BM288,16BR6R3F2D4R2F2D3G2L3HLD3NRL2RU3LGL3H2U3E2R2U4E2":HPAINT(296,24),1,1'0q
370 HDRAW"BM304,16BR7GDG6D3F2R2E3D5L2ER3FL2U5F3R2E2U3H6UH":HPAINT(312,24),1,1'0r
380 HDRAW"BM320,16R15D15L15U14BR2BDR11D11L11U10BR2BDR7D7L7U6BR2BDR3D3L3U2"'0s
390 HDRAW"BM336,16BR2R11F2D11G2L11H2U11ER13D13L13U13BF4GD2F2R2E2U2H2L2":HPAINT(344,24),1,1'0t
400 HDRAW"BM352,16BD7R2ERE2UEU2RD2FDF2RFR2BL15D8R2ERE2UEU2RD2FDF2RFR2U8":HPAINT(354,26),1,1'0u
410 HDRAW"BM368,16R2FRF2DFD2RU2EUE2RER2BL15D8R2FRF2DFD2RU2EUE2RER2U8":HPAINT(372,20),1,1'0v
420 HDRAW"BM384,16BR7RD2R5G11R5D2RE3RFNU5H11D5LGF3RBU8E3BR5BD4F3G"'0w
430 HDRAW"BM400,16BDF4E4F4E3UG4H4G4H3BD6F4E4F4E3UG4H4G4H3"'0x
440 HDRAW"BM416,16R3DL3DR3DNL3FR3DL3DR3DL3GL3DR3DL3DR3FR3DL3DR3DNL3BU3ER3UL3UR3UNL3ER3UL3UR3UL3HL3UR3UL3UR3BD11FR3DL3DR3DNL3"'0y
450 HDRAW"BM432,16R15DL15BD3F7L7E7NL7R8G7R7NH7BD3L15DR15":HPAINT(436,21),1,1:HPAINT(444,21),1,1:HPAINT(436,25),1,1:HPAINT(444,25),1,1'0z
460 HDRAW"BM448,16BD3E3BR4G7BD4E11BR4G15BR4E11BD4G7BR4E3"'0A
470 HDRAW"BM464,16R15D3L7NU2LNU2L7NU2DR15L4D3NR4L7NU2LNU2L3DR15D3L7NU2LNU2L7NU2DR15L4D3NR4L7NU2LNU2L3"'0B
480 HDRAW"BM480,16BD3E3BR4G7BD4E11BR4G15BR4E11BD4G7BR4E3BU8H4BL4F8BD4H12G3F12BL4H8BD4F4"'0C
490 HDRAW"BM496,16R3F3DFD2L2HLH3U3BR15L3G3DGD2R2ERE3U3BD15U3H3LHL2D2FDF3R3BL15U3E3RER2D2GDG3L3"'0D
500 HDRAW"BM512,16R7D7NH7RE7D7L7DF7L7U7LG7U7R7":HPAINT(517,19),1,1:HPAINT(514,26),1,1:HPAINT(525,22),1,1:HPAINT(522,29),1,1'0E
510 HDRAW"BM528,16R3D5RE2R3F2RU5R3BD3D9LNU9RBD3L3U5LG2L3H2LD5L3BU3U9RD9U4BR5R3U2L3DR2"'0F
520 HDRAW"BM544,16F5R5NE5D5NF5L5NG5U4BU5LR7LG2LHR2BD5LDRBR4F2DU7DGD2HBL9DG2DU7DFD2BD4BR5RF2RL7RER2"'0G
530 HDRAW"BM560,16R15D15L15U14FE2RF11DG3LH11D7E11RF3DG11LH3BR3RULBU7URDBR7URDBD7DLUBH3LUR"'0H
540 HDRAW"BM576,16R15"'0I
550 HDRAW"BM592,16D15"'0J
560 HDRAW"BM608,16BD15R15"'0K
570 HDRAW"BM624,16F15"'0L
580 REM LINES 540-730 DRAW DESIGN ELEMENTS FOR KEY COMBINATIONS 1a-1s
590 HDRAW"BM32,48BD16BR2R13GL12DR11G2D3R2UR2UR2UR2UR2UR2UR2UR2UR2U2L2DRM-16,+8M+16,-8LL2DL2DL2DL2DL2DL2DL2DNL2BR16BU8UH5LG3L12G6"'1a
600 HDRAW"BM64,48BD7BR2E2RER20FRF2D2NL3D2L6H2U2F3D3FD2FD5GL20HU5EU2EU2L5U3DNR3D2R5UE3D2G2E2U2R3DR6UR3BD3BL3L5GLGD2FRFR4EREU2HLBD7R4L14"'1b
610 HDRAW"BM96,48BR15R3FRFR2UD3FD2G3L3HU2E3NED2RUL2G2LND2H3D2LUEH2RERLGL2UD3GD2F3NR3GD2F2HG2D2BU10G2D2GD2GD3RFRBL3D2FDL3DR3DFDF2R2ER6E3UL3NR8DLUL4DLUL5UR4UR2DLR4ULR2DR3NR5E2U2EU4HNU5L2D5FHU5LGBDBL2L4"'1c
620 HDRAW"BM128,48BR11BD2GLGLGDG6D4F2DFR3HR2GND3L2DL4NUR4D6RNU4DRUBR2D2R9UNL8UL3U5E2U4LGD2GHLHLHLU2BL3LBR4UHU3BU2BRR2ERERFGD2GD8FGD6L3URU4NH3D5R6U2RE2R3ER2E3U3ERD4RLU4LU4HUHUH4L2HL9"'1d
630 HDRAW"BM160,48BD6R4ULRER2F2E2F2R5ERER4FR5L3DLGD2GD2L2EH2LGLGL4H2EUDGDGDL2EUH2U2D3G2H2UNUL3UL"'1e
640 HDRAW"BM192,48BR9BD2GLG2DNFGDF2R2DNFE2UL2BU2UFBR2DFE3F2D2GD3NRLULHLHBD3R2DG2UER3D2HE2RFDRD5GDG2E2UEU2RUE2LER2EREUEU4GND3LGFD3LNU2LDL2U2EUEBD2BL6DRDELBU7BL4UHNL4GDGHL"'1f
650 HDRAW"BM224,48BR8BD4D3G2RDFD2NU6RU5FD4RU2EU4L3UF2NLDR2DR2GNDLD3LDRD2FBD2NRBL2BDDBU3LBRHBU2R6HL2ERE2RLU4G2FDLDBU3L2NFD3L2NFD2L"'1g
660 HDRAW"BM256,48BR18BD4R2FNLDL4NUGDGDGDGDGDGDGDGDGD5E2NLE2UEUEUEUEUEUEUEUEUL"'1h
670 HDRAW"BM288,48BR10BDNR9GFD2GD2G2DRF2L3GR3FNR3GBD2R3FBL6U4LGD2RNU2F2LBD2RD3R2ER3NE2D3RER2ER3NU4D4FDU2EU2EU4HNU9LNU6BL7LE3U3HLGFDBR12D2FDU7H2RHL2D2F2DBU9G2RGLH4NDL4HL3GE2H2R3F4R2UH3R2FR2DRND4F3NGE3LGR3DRLHG"'1i
680 HDRAW"BM320,48BR20R2FR6FGD2GDF3D5GDG3LGL3D4GDG3LGL8HLH3UHU5E3UHU2HER6ER2FR9FRFRD3LUL6U2ER4DL4DNR5G2DF3BL4D2GDG3L4H3UHU2FR10BU6NL4HL2BL4L2GR4BU5E3UHU2HER6BD3NRLGLR4BR2R4LHL2":HPAINT(332,72),1,1'1j
690 HDRAW"BM352,48BR3BD2NRD25R6ER3FR2NU23R6G3R8H3R5NU24DE2U22H2LG2L2HL5GL4HL6HLBR8UFDF6DFDFD2FD5ED6NLNRU6H2NDU2GNU4UHNU4UHNU4UHNU3UH2U2LU3BL7BD4R3BRRBD2NRL2BL2L3BD2R2BR2R5BD2L3BL2L4BD3BRR3BR2R2BD2NRL3BL2L3BD2R2BR2R2BR2RBD2NL9BR4NR3BU2NRBU2R
700 HDRAW"BR5R3BD2L2BD2RBU7L3BU2NR3BU2LNR5BU2LR2BR2R2BU2LBL2L4":HPAINT(376,77),1,1'1k
710 HDRAW"BM384,48BR19DF2D2G2DR2D19R3U2R5U5L4UR5D7LG3L2D2L9UHLH4R2DRDR5NR6U19R2UH2U2E":HPAINT(400,78),1,1'1l
720 HDRAW"BM416,48BR15R5FR3FNRD2GDGD8RER3NUDGDG7R2D7RU2FRFBL18U2HUEG2H2LUHU5EUE2RER9FR6U6L9GL2L2GLGLGFH5UE4RERER2ER2BD16R9NF2L9GL3DLGDNFLGND4DBR2NFBR4ERFRFNR2L4FR2BDBR3GD2NRLD2R4EUHU2BD5BL14HU2LGL3":HPAINT(426,60),1,1'1m
730 HDRAW"BM448,48BR21D2GD5FD4FNU11DUHG2L2UHUHUHU4LHLH2UHBR11BDL4NGFR2BD2L2BD3D2FDBR2NDU2HUBR8GD2GD4U4EU2EU3REFD2NFU2HU2HBL3F2L2D2RBD11BL13HUHU3HU3H2U2HBL6BD15NR31BD2NR31BD2R13E2RF2NR13F2R3NR8"'n
740 HDRAW"BM480,48BR3RF2RFR2FRFRF2D2FER5FRF5D7GD3FGLGL2D2BU9HUHU2E2R2FBD3LDRBD11BL15UENR2HUHUHUHU3EU2L3H4UH2UH2U2R4U2HFD2FDFDFDFDF3BU4BRH5U2FRFRF3"'1o
750 HDRAW"BM512,48BR12GLGLGLG4DGDGD11FND3EU2E2R3F4D5G4L2H3UDF3R2E2FR5FR8UR2E4U2LG2DNG3UEHEU2EU5HU5HU2H3F2E3REUL4GLU"'1p
760 HDRAW"BM544,48BR16G3D3FD2FE4HUHUHBR4BD4R2FG4D3R3E2UHGEFEU2NHEFGFERUNHDF2D6GDG2UH2LHLNU2BD2BLD3FE3GFDGDFDND5GLH2LGF2DGDEUH2LULHL3HGL2DGND5EUE3U7EU4"'1q
770 HDRAW"BM576,48BR9LGERF2R3F2RE3UBR7D3FD4GD6GD3G5R2E2FD3G2NR6UNL4HUL6DNR3UER2L2U3L2GD4NRGD4BM583,49DGD3GD8GD5GDRDNR3GDGD2G2RE4UEGD5BR5U11LGD2GEU2E4U2E3U5EU3D3GD3L2GLGLGL3G"'1r
780 HDRAW"BM607,48BR7GD4GD17FD8U2E2U2ER2U4EU5EU8EU5BL2GD11GD6GD4"'1s
790 REM LINES 750-1050 DRAW DESIGN ELEMENTS FOR KEY COMBINATIONS 2a-2j AND 3a-3j
800 HDRAW"BM32,96BR20G4L3GDGDGD3GD2LF3L2HRD5U2LUF2D3ED2ED4R2FD3FG9LNG2RE7FDF3DFDREREF2RU2R2F2R3UER2FRF2R2L2H2LHLH3LGL6HLHLH4BR3U3LH4NLEFNDR4HUH2L2ND3U3HUHLHLDBR7DNGUH2U3EU2E4R3FRF2DFDR5UEFRUHUH5LHL8BD16R7D2G2LH3RGNDL2DBR13DER2E3NDEU3LH3
810 HDRAW"D3FD2G2L3DFR3D8GD3FD3NG2BL8L3HNL3BR5R2EULHL3BL3BUER7ULH2R3NGENUR3U2RU3BL11LH2GUL2DE3NDNL2R5D2GBD11BR4E":HLINE(35,141)-(76,143),PSET,BF
820 X=32:Y=96:HPAINT(X+24,Y+2),1,1:HPAINT(X+37,Y+14),1,1:HPAINT(X+25,Y+17),1,1:HPAINT(X+27,Y+37),1,1:HPAINT(X+14,Y+43),1,1:HPAINT(X+17,Y+25),1,1'2a
830 HDRAW"BM32,144BR28BD4L5GL4GLGLG2ND4LGDGD4LGD2DGD5F2DFL3DR6NR6G2L2DGR3ENL2FDGD2G5LR10URUHUEHU2RF2RFRF2R2DRLU2NHR2ER4DG2DRFNL17R13HUHUL4HL3HL8HLHLH4U2NLRFREU3HUHUHU2G2DGHU2HLGHU3E3ND2EUHBR5GD5FD
840 HDRAW"R3DU2R6GDBL2LBR3DFDNR2D2NR2D2NR2GDR6L2HU6HND3U2BR3D2NFENRBU2R2EU2HU2NHFRFDFD3F2DFD3HGD2NRL2NU5DGD2GDGDGDBL3BU3L2BU3LGER6L2BU27LHNLFRF2RGFNRF2DBL16UEUG2FD2NLD2NLFDL2
850 Y=144:HPAINT(X+15,Y+34),1,1:HPAINT(X+35,Y+41),1,1'3a
860 HDRAW"BM80,96BR22BDNR4GL2GL2GLG3LGLGD2FDGD3F2R2HLG2DGD3FD2GD3GD4GD2GDFRFRFR2FR6ER2ERER3EUEU2EUE6U6H3RE2RFD3FD2GDF2RE2UH2NLU6EUEH4UHU4H3L3HL3BD6RFNG2RF3D2FNG3D5GH2U2HUHNE2H3LHLNE3L2NU2L5NU2LGL2GNL2EUHUERENF2R4ERND2R2FRF
870 HDRAW"BD8D4G2NL2E3NUDF4NEDG3LGNLE4U3HD4G3NUL7H3NRHUR3UL2URU2EUR2UR5UL3BD4NR2L2GNR4BL5UH3NL2F3DGDGD2GDNL2FR2ERBD3RG2L4U2NLR4DRBD5DFD2FDFBL10EUEUEU2BL3UNED2GDEDUBR16HUHUHUBR5UNHDFDF":HPAINT(106,100),1,1'2b
880 HDRAW"BM80,144BR22BD2G6DGDGDGLGD3G2D8FDF3R2D2L3G3LG3D4R42U3H4LHLHL2HL2HGD2GDG3L5H3UL6GLGD2FNDE3R4FGFGLBL3E2RBL10ND2EUE4R5NFH2NDR2ER2E3UEU8H3L2HL4GL2F3R2F3D3G2R3EGL9HBR3NR4HNR6U4LGER2ND3RND3R3ND3FNL3
890 HDRAW"ND2U2R2GR2DER4D8F2LGL3NHD3L3RFDR5U2NR2LNL2U3BR4UE2RD2GE2RE3U5EU7LDGDG2DR2D7HD2LDLU4EU5L2GFGDGL4U2NR4UR5HBU6ER2EFRLHUHUHUH6L5BD13NR8L4HL2":HPAINT(118,163),1,1'3b
900 HDRAW"BM128,96BRBD12R22ER6ER2ER3ER2ER5D2G2LGLGLGLGL3G3R2D2FDFDR3ER2ERE2U5HL2G2DGL8GDG2D2LGR14DGL15G2DR2DGL3HE4L4HER6HUH2UH2L12G2LUHLF4U2FDR2F5GDR2DGL3HE4NR2H2EU3H2GD5NHNDF2L5H2L3FR3U6
910 HDRAW"ER3U2LUR5DGFRE3R11DG2DG2DGU3NRH2LNF2LF3DH4L2D6GBU11L15NUR4DR9ER15ENL3ER3ND2ER2ERER2E2":HPAINT(169,106),1,1:HPAINT(158,118),1,1'2c
920 HDRAW"BM128,144BR25BDRFRD4GH2UEND2BL3EG2DF2DGD2R4EUNHEUE2UHUR2FDFDGHGDNGRDGD2NL3F4D3FD4GD4FD5F2NLERDG2L2HUH3UHE3GFD2UBL3L3GD7G2H2U7G2DGDG2HU4EUENR3H2GD2U2EHLGLG3LHU2E3RFNG2HER2ND2UHGL2UHL2DNR2F2L3HU4ER2DR2FR2NDU2HLH3GDNF2NDH2L
930 HDRAW"U2ER2F3RFR2ND2U2H5E2L3GD2F4BR3REH4U5RFE2UER2DGDFNF2G2NH2RNF2GFD2NR3GH2UHUBR20DGDGFE3UEF2NG5H2R3FD2G4DGLRERE3R2FD2L2DG5NLER2UNER2FD4GL3E2NL3UL2G2LDFRF3D2GLH3ENHFBL11HL4GBU3LH3BU2LURBR6G2R6HNL3HNLUL2EBD19U5NL
940 HDRAW"R2F2DFDF2EU3BL17GDGL2H2URFRUEU4BU4BR8R7E3BU2RULBU3BLUHLGDBL6UHLGDBU4BR2REBR4FRBR6BU8ERD2BD12RE3"'3c
950 HDRAW"BM176,96BD15D11R2U11LND8R3D9LER3F2RFNU5R3NU5R3NU5DR2ENU4EFREFRENH2FREUNH3DFRE2NH5ER8NU9DRFNU11R2U11LND10L7HL3HLHL2HLHL3GHLG2LGL2GLGL2GL4BR22DNF2UHUHG2L3UE2BD10BL3L8GL2"'2d
960 HDRAW"BM176,144BD34FDF5R5U2EU4H4U3LGD3F2D2L2HNENU13LHUNEHGNDE2UE2U5R7U3HU3NG5UHU3ER3ER4ER5ER3D5R2F2DFE2UEU3HL2GLGL2UE2RERER2F3DFDFD2GD4FD4ERDFDFDFD13L4UHU2HU2HUHUHUHU2R2ERBL4UHLD12NL22H2UH2LHLHERE2RE2NL4ULHU2HU2H3FD5FD6GL
970 HDRAW"GL11GLGLG2BU7L2NHR2FRFNR2BU2UBR6RBF2NLERBR2BURBU3GBL2GLBU3NLRER2BU3LGL2BL2BDLG2L2BU3GLBU3REREBR2RERBR3RBU3NRGLBL3GL3BL2BDL3BD11BR3REREBU6GNLER2BR2BUR3BD11BL8L":HPAINT(221,184),1,1'3d
980 HDRAW"BM224,96BD39BR47LGL2H5GD2LRF4R2NUFR3LU2RLD2L2DGD2BL3U2E2G3L2GBL14HUE2UE6UE10UE3UE5U5D3LH3UH7G6F3E3F3DF2DG4DG9DG3DG11F2"'2e
990 HDRAW"BM224,144BR18F3DF5U2E6RER2BL13F5DGDG3D4FD3F3D2FD11G2DG2D2R2FR7FRFR2FR6U2H4L2HL3HL2HU2EU2R2ER2E2FR3ERLG2DGDGD3R3FRBU9BL6E3REUEU3LHL2HU2EUE4UBM267,144D2FDGL2HU2HU"'3e
1000 HDRAW"BM272,96BD43BRLRFR2FD2BU6R2E3RUE2ND12U3HUBL3G9D2NR4U2E9UE3R2F2NED5ND5R2NU3D4GLDFD5FNDEU2EU4EU7HNL2E3L6H2UL3NG2RU2RL4GLRER2U3ENF2HL5GER5FER3FRLHU2EUERERE4D3FRFR2URNRDG2DL4HL3H2LGDFRFR3BD2LRBU2FR3FR4NH3L3DBL3LBR4D2NL4NR3D
1010 HDRAW"F2DNL2R2FRFHLHL2D2L2R2FRD2FDUHU2L2GLHFDFD2U2HL5H2BD19GER3EUEFEFEFD2L2GLRER13DUL11U2E2UE3U3R2U5LRD8GDGDG2DBU10BR4REFGDFG2DG2DGBM272,108NE2BD2R3"'2f
1020 HDRAW"BM272,144BR5GDGDGDG2D3BD11FR2F2D2L3NH3RFGLGLBD4D3R5FR3F2NR35F3DGLHL2HLHL3HL2BU7R3E6LNH2RF2R4EU4HU15BL2BU9D2F2RND5R30ND36L2NU4L28ER2ER3EREREBL5L2GLU"'3f
1030 HDRAW"BM320,96BR20BD14DFER3FDG4DGD2ND3L4GLD3GD5FDF4DFDNF3UHUHU3HU3EUEUER2DUR3GDGDFD2F3DF8RBR11BU13LHLHL2HLHLHLHL2HNL5BU14BL2L2EBL7GDUE2R4ER8GF2D2FD8GD2F2"'2g
1040 HDRAW"BM320,144BR24F7RFRF13D6L4DL3HG2D2RER4DFDR2U2RBU3GL2BR3BU8H5U3HU3HU4ENR6H3LRF4RFRF2BL22NU5D5FD4FD2LD4L2GL5UD2L2D2R2UR3FR2ER2L2GL2HD2LDRERFRER6ERLHLU4NH3FRFR2EFR3U3L2U5NU3L4HU2"'3g
1050 HDRAW"BM368,96BD34F3RF4DF4RF"'2h
1060 HDRAW"BM368,144BD3R6ER2ER2ERDF4D2NL2RDF4DL2HFR2DF3DNL2DF2DFDL3HLH2LH2LH2LH2L2H2LNDHLG2LRE2HLH4BD24RUR4UNRHL2U2R4HLHL2H2F2R2FRF2RE2NU10F2RDFRFR3DFR3UEUH2UH4F2R2FR2U"'3h
1070 HDRAW"BM416,96BR47BDL3HL3GL2GL2G2LG3DG2D2GD2GD3GD7GDFD5G4D2F3R2ER2DGDGBU6LR2U2H2NL2F2E2U2EU6EU4E2UE2RERER2ER2E4BD9GBD3DG3LGL2G7DGDBR16BU11LDGDFNRGD2G2DFDGD2FRNEDGL3U2D2GD"'2i
1080 HDRAW"BM416,144BR41FD4GDG2LF5RFRFBD11LHL2HL2HLHL2HLHNL4E2UEU6RE2G2L2G3BD7L3GFDG2L3HNH5U2E2R2H3BL6ND2U3ERER3E2U2HBU2E2UDG2LG4DNF2BU3HU4ER3E2UE"'3i
1090 HDRAW"BM464,96BDER3F6D4HLGHL3HNL2G2BR7D2GDGDG3NL2D3FD5GFR2UG2L2NHGBD3BRF5RFRND6RER2ER2EU5EHLGEREUHGLUBR4GE2UH6BL2LG2FREU2BU2BLL2NG3BR5BDU2HUHUHU"'2j
1100 HDRAW"BM464,144BR9D3GD2F3RFRFR2F3D3G2L11HL3HLHBD11R15ER2ERE4UEUH2UHLRFDGDG3LGL2"'3j
1110 ON BRK GOTO 1130
1120 GOTO1120
1130 WIDTH40:CLS:LOCATE2,10:PRINT"DO YOU WANT TO SAVE THE JUST DRAWN      SCREEN?  (Y/N) ";
1140 K$=INKEY$:IFK$=""THEN1140ELSEIFK$="Y" OR K$="y"THEN20ELSEEND
