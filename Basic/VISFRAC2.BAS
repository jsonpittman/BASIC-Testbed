1 REM***************************
2 REM* VISUALIZING FRACTIONS 2 *
3 REM* COPYRIGHT  JANUARY 1991 *
4 REM*    BY FRED B. SCERBO    *
5 REM*    60 HARDING AVENUE    *
6 REM*  NORTH ADAMS, MA 01247  *
7 REM***************************
10 CLEAR3000
15 CLS0:PRINTSTRING$(32,188);STRING$(32,204);:FORI=1TO 224 :READ A:PRINTCHR$(A+128);:NEXT
20 DATA29,28,28,26,30,28,29,21,28,29,21,28,29,21,28,30,29,20,30,21,28,29,20,30,18,29,24,30,29,85,92,93
25 DATA21,,,24,26,,21,21,,21,21,,20,20,,26,20,,26,21,,21,,26,26,21,,26,,,,85
30 DATA21,,,18,26,,21,21,16,21,21,,,,,26,,,26,21,,21,,26,21,21,,26,,,,85
35 DATA21,28,28,26,30,29,28,21,28,29,21,,,,,26,,,26,21,,21,,26,20,23,,28,29,85,92,92
40 DATA21,,,,26,21,,21,,21,21,,,,,26,,,26,21,,21,,26,,31,,,21,85,,
45 DATA21,,,,26,20,26,21,,21,21,,21,,,26,,,26,21,,21,,26,,21,,18,21,85,,81
50 DATA28,24,,20,28,,28,20,,20,20,28,28,,20,28,,20,28,20,28,28,20,28,,28,24,28,28,84,92,92
55 PRINTSTRING$(32,195);STRING$(32,179);
60 PRINT@388," VISUALIZING FRACTIONS 2 ";
65 PRINT@420,"    BY FRED B.SCERBO     ";:PRINT@452,"   COPYRIGHT (C) 1990    ";
70 X$=INKEY$:IFX$<>CHR$(13)THEN70
75 PRINT@452,"   SELECT LEVEL (1-4)   ";
80 X$=INKEY$:IFX$=""THEN80
85 X=VAL(X$):IFX<=0THEN80
90 IF X>4THEN80
95 DIM A$(44),B$(44),A(44),C(400)
100 XX=RND(-TIMER)
105 CLS:PRINT:PRINT" VISUALIZING FRACTIONS 2 IS A    PROGRAM DESIGNED TO ALLOW THE   STUDENT TO ACTUALLY SEE THE     RELATIONSHIPS BETWEEN THE       DISPLAYED FRACTIONS."
110 PRINT" PRESS KEYS <A>, <B>, OR <C> TO  INDICATE IF THE 1ST FRACTION    IS LARGER THAN, EQUAL TO, OR    LESS THAN THE SECOND FRACTION.  IF YOU ANSWER CORRECTLY, THE    CORRECT SIGN <,=, OR > WILL BE"
115 PRINT" SHOWN. PRESS <ENTER> FOR THE    NEXT EXAMPLE, & THE <@> KEY TO  CHECK YOUR PROGRESS.";
120 IFINKEY$<>CHR$(13)THEN120
125 CLS0:FORI=1TO44:READ A$(I),B$(I):NEXT:FORI=1TO44:READ A(I):NEXT
130 PMODE0,1:PCLS1:SCREEN0,0:LINE(0,0)-(255,192),PRESET,B
135 LINE(0,80)-(255,104),PRESET,BF
140 LINE(0,168)-(255,192),PRESET,BF
145 DRAW"BM10,88C1R4ND8R4BR4D8U4R8U4D8BR4NR8U4NR8U4R8BR12D8U4NR8U4R8BR4D8BR4U8R8D4L8R4F4BR4R8U4L8U4R8BR4R4ND8R4BR12D8U4NR8U4R8BR4ND8R8D4L8R4F4BR4U8R8D4NL8D4BR4NR8U8R8BR4R4ND8R4BR4D8BR4NR8U8R8D8BR4U8F8U8BR12D8BR4R8U4L8U4R8BF8R2BR4R2BR4R2"
150 DRAW"BM20,120C0U8R8D4NL8D4BR6E2U4H2BR18D8R6BR4U8R8D4NL8D4BR4U8R8D4L8R4F4BR4NR8U8R8BD4NL2D4BR4NR8U4NR8U4R8BR4ND8R8D4L8R4F4BR12BU8R4ND8R4BR4D8U4R8U4D8BR4U8R8D4NL8D4BR4U8F8U8BR22BD8NR4U8R4BR12F4G4BR18R2U8L2"
155 DRAW"BM20,140C0R2NU8R6U4NL6U4NL8BR6F2D4G2BR18NR8U4NR8U4R8BR4NR8D8R8NH2NF2U8BR4D8R8U8BR4ND8R8D4NL8D4BR4NU8R6BU8BR12R4ND8R4BR4D8R8U8NL8BR58NR4D8R4BR10BU2R8BU4NL8BU2BR10R4D8L4"
160 DRAW"BM20,160C0NR8U8R8BR6F2D4G2BR18NU8R6BR4NR8U4NR8U4R8BR4NR8D4R8D4NL8BR4R8U4L8U4R8BR12R4ND8R4BR4D8U4R8U4D8BR4U8R8D4NL8D4BR4U8F8U8BR46BD8NR4U8R4BR14G4F4BR14R2U8L2"
165 DRAW"BM10,174C1R4ND8R4BR4D8U4R8U4D8BR4NR8U4NR8U4R8BR12NR8D4R8D4NL8BR4NR8U4NR8U4R8BR4NR8D8R8BR4NR8U8R8D8BR4U8F8U8BR4R2ND8R8D8NL10BR12"
170 DRAW"U4NR8U4R8BR4ND8R8D4L8R4F4BR4U8R8D4NL8D4BR4NR8U8R8BR4R4ND8R4BR4D8BR4NR8U8R8D8BR4U8F8U8BR12BD8R2"
175 PCOPY1TO4
180 IF X=1 THEN LV=9
185 IF X=2 THEN LV=20
190 IF X=3 THEN LV=35
195 IF X=4 THEN LV=44
200 A=RND(LV)
205 B=RND(LV):IF B=A THEN205
210 PCOPY4TO1
215 PMODE0,1
220 CIRCLE(58,42),34,0,.9
225 DRAW"BM0,8C0"+A$(A)
230 PAINT(54,32),0,0
235 DRAW"BM0,8C1"+B$(A)
240 CIRCLE(178,42),34,0,.9
245 DRAW"BM120,8C0"+A$(B)
250 PAINT(174,32),0,0
255 DRAW"BM120,8C1"+B$(B)
260 PMODE0,1:GET(0,0)-(256,192),C,G:PMODE0,3:PUT(0,0)-(256,192),C,PRESET:PMODE0,1
265 SCREEN1,1
270 IF A(A)>A(B)THEN R$="A"
275 IF A(A)=A(B)THEN R$="B"
280 IF A(A)<A(B)THEN R$="C"
285 X$=INKEY$:IFX$=""THEN285
290 IFX$="A"THEN295ELSEIFX$="B"THEN295ELSEIFX$="C"THEN295ELSEIFX$="@"THEN1090ELSE285
295 IFX$<>R$ THEN 380
300 PMODE0,2:PCLS1
305 CIRCLE(58,92),34,0,.9
310 DRAW"BM0,58C0"+A$(A)
315 PAINT(54,82),0,0
320 DRAW"BM0,58C1"+B$(A)
325 CIRCLE(178,92),34,0,.9
330 DRAW"BM120,58C0"+A$(B)
335 PAINT(174,82),0,0
340 DRAW"BM120,58C1"+B$(B)
345 IFR$="A"THENDRAW"BM124,82C0F10G10R2E10H10"
350 IFR$="B"THENDRAW"BM122,90C0R12BD4L12"
355 IFR$="C"THENDRAW"BM130,82C0G10F10R2H10E10"
360 DRAW"BM42,30C0NR20D20R20BR6U20R20D20NL20BR6U20R20D10L20R10F10BR6U20R20D10L20R10F10BR6NR20U10NR20U10R20BR6BD20NR20U20R20BR6R10ND20R10":SCREEN1,1
365 IFINKEY$<>CHR$(13)THEN365
370 NC=NC+1
375 GOTO200
380 FORK=1TO4:PMODE0,3:SCREEN1,1:FORY=1TO100:NEXTY:PMODE0,1:SCREEN1,1:FORY=1TO100:NEXTY,K
385 NW=NW+1
390 GOTO285
395 GOTO395
400 REM ONE HALF
405 DATA"BR58BD34NU28ND28BR44BD12NR8U4R8U4L8BU4L2R12L6BU4U8"
410 DATA"BR"
415 REM TWO HALVES
420 DATA"BR"
425 DATA"BR58BD34NU28ND28BR44BD12C0NR8U4R8U4L8BU4L2R12L6BU4R4L8U4R8U4L8"
430 REM ONE THIRD
435 DATA"BR58BD34NU28M-26,+15M+26,-15M+26,+15BR20BU2R8U4NL8U4L8BU4L2R12L6BU4U8"
440 DATA"BR"
445 REM TWO THIRDS
450 DATA"BR58BD34NU28M+26,+15BR20BU2R8U4NL8U4L8BU4L2R12L6BU4R4L8U4R8U4L8"
455 DATA"BR58BD34M-26,+15"
460 REM THREE THIRDS
465 DATA"BR"
470 DATA"BR58BD34NU28M-26,+15M+26,-15M+26,+15BR20BU2C0R8U4NL8U4L8BU4L2R12L6BU4L4R8U4NL8U4L8"
475 REM ONE FOURTH
480 DATA"BR58BD34NU28ND28NL32R32BR22BD12U8D4L8U4BU4L2R12L6BU4U8"
485 DATA"BR"
490 REM TWO FOURTHS
495 DATA"BR58BD34NU28ND28R32BR22BD12U8D4L8U4BU4L2R12L6BU4R4L8U4R8U4L8"
500 DATA"BR58BD34L32"
505 REM THREE FOURTHS
510 DATA"BR58BD34NU28R32BR22BD12U8D4L8U4BU4L2R12L6BU4L4R8U4NL8U4L8"
515 DATA"BR58BD34NL32D28"
520 REM FOUR FOURTHS
525 DATA"BR"
530 DATA"BR58BD34NU28ND28NL32R32BR22BD12C0U8D4L8U4BU4L2R12L6BU4BR4U8D4L8U4"
535 REM ONE FIFTH
540 DATA"BR58BD34NU28M-30,-10M+30,+10M+30,-10M-30,+10NG22NF22BR46BD12R8U4L8U4NR8BU4L2R12L6BU4U8"
545 DATA"BR"
550 REM TWO FIFTHS
555 DATA"BR58BD34NU28M+30,-10M-30,+10NG22NF22BR46BD12R8U4L8U4NR8BU4L2R12L6BU4R4L8U4R8U4L8"
560 DATA"BR58BD34M-30,-10"
565 REM THREE FIFTHS
570 DATA"BR58BD34NU28M+30,-10M-30,+10NF22BR46BD12R8U4L8U4NR8BU4L2R12L6BU4L4R8U4NL8U4L8"
575 DATA"BR58BD34M-30,-10M+30,+10G22"
580 REM FOUR FIFTHS
585 DATA"BR58BD34NU28M+30,-10M-30,+10BR46BD12R8U4L8U4NR8BU4L2R12L6BU4BR4U8D4L8U4"
590 DATA"BR58BD34NU28M-30,-10M+30,+10NG22NF22"
595 REM FIVE FIFTHS
600 DATA"BR"
605 DATA"BR58BD34NU28M-30,-10M+30,+10M+30,-10M-30,+10NG22NF22BR46BD12C0R8U4L8U4NR8BU4L2R12L6BU4L4R8U4L8U4R8"
610 REM ONE SIXTH
615 DATA"BR58BD34NU28ND28M-26,+15M+52,-30M-26,15M+26,+15M-52,-30BR70BD28NU4R8U4L8U4NR8BU4L2R12L6BU4U8"
620 DATA"BR"
625 REM TWO SIXTHS
630 DATA"BR58BD34NU28ND28M-26,+15M+52,-30M-26,15M+26,+15M-26,-15BR44BD12NU4R8U4L8U4NR8BU4L2R12L6BU4R4L8U4R8U4L8"
635 DATA"BR58BD34M-26,-15"
640 REM THREE SIXTHS
645 DATA"BR58BD34NU28ND28M+26,-15M-26,15M+26,+15M-26,-15BR44BD12NU4R8U4L8U4NR8BU4L2R12L6BU4L4R8U4NL8U4L8"
650 DATA"BR58BD34M-26,-15M+26,+15M-26,+15"
655 REM FOUR SIXTHS
660 DATA"BR58BD34NU28M+26,-15M-26,15M+26,+15M-26,-15BR44BD12NU4R8U4L8U4NR8BU4L2R12L6BU4BR4U8D4L8U4"
665 DATA"BR58BD34ND28M-26,-15M+26,+15M-26,+15"
670 REM FIVE SIXTHS
675 DATA"BR58BD34NU28M+26,-15M-26,15BR44BD12NU4R8U4L8U4NR8BU4L2R12L6BU4L4R8U4L8U4R8"
680 DATA"BR58BD34ND28M-26,-15M+26,+15M-26,+15M+26,-15M+26,+15"
685 REM SIX SIXTHS
690 DATA"BR"
695 DATA"BR58BD34NU28ND28M-26,+15M+52,-30M-26,15M+26,+15M-52,-30BR70BD28C0NU4R8U4L8U4NR8BU4L2R12L6BU4L4R8U4L8D4U8R8"
700 REM ONE SEVENTH
705 DATA"BR58BD34NU28M-24,-20M+24,+20M-30,+4M+30,-4M-16,+25M+16,-25M+16,+25M-16,-25M+30,+4M-30,-4M+24,-20BR28BD32U8L8ND2BU4L2R12L6BU4U8"
710 DATA"BR"
715 REM TWO SEVENTHS
720 DATA"BR58BD34NU28M-30,+4M+30,-4M-16,+25M+16,-25M+16,+25M-16,-25M+30,+4M-30,-4M+24,-20BR28BD32U8L8ND2BU4L2R12L6BU4R4L8U4R8U4L8"
725 DATA"BR58BD34M-24,-20"
730 REM THREE SEVENTHS
735 DATA"BR58BD34NU28M-16,+25M+16,-25M+16,+25M-16,-25M+30,+4M-30,-4M+24,-20BR28BD32U8L8ND2BU4L2R12L6BU4L4R8U4NL8U4L8"
740 DATA"BR58BD34M-24,-20M+24,+20M-30,+4"
745 REM FOUR SEVENTHS
750 DATA"BR58BD34NU28M+16,+25M-16,-25M+30,+4M-30,-4M+24,-20BR28BD32U8L8ND2BU4L2R12L6BU4BR4U8D4L8U4"
755 DATA"BR58BD34M-24,-20M+24,+20M-30,+4M+30,-4M-16,+25"
760 REM FIVE SEVENTHS
765 DATA"BR58BD34NU28M+30,+4M-30,-4M+24,-20BR28BD32U8L8ND2BU4L2R12L6BU4L4R8U4L8U4R8"
770 DATA"BR58BD34M-24,-20M+24,+20M-30,+4M+30,-4M-16,+25M+16,-25M+16,+25"
775 REM SIX SEVENTHS
780 DATA"BR58BD34NU28M+24,-20BR28BD32U8L8ND2BU4L2R12L6BU4NL4R4U4L8ND4U4R8"
785 DATA"BR58BD34M-24,-20M+24,+20M-30,+4M+30,-4M-16,+25M+16,-25M+16,+25M-16,-25M+30,+4"
790 REM SEVEN SEVENTHS
795 DATA"BR"
800 DATA"BR58BD34NU28M-24,-20M+24,+20M-30,+4M+30,-4M-16,+25M+16,-25M+16,+25M-16,-25M+30,+4M-30,-4M+24,-20BR28BD32C0U8L8ND2BU4L2R12L6BU4BR4U8L8D2"
805 REM ONE EIGHTH
810 DATA"BR58BD34NU28ND28NL32NR32NE22NF22NG22NH22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4U8"
815 DATA"BR"
820 REM TWO EIGHTHS
825 DATA"BR58BD34NU28ND28NL32NR32NE22NF22NG22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4R4L8U4R8U4L8"
830 DATA"BR58BD34NH22"
835 REM THREE EIGHTHS
840 DATA"BR58BD34NU28ND28NR32NE22NF22NG22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4L4R8U4NL8U4L8"
845 DATA"BR58BD34NH22NL32"
850 REM FOUR EIGHTHS
855 DATA"BR58BD34NU28ND28NR32NE22NF22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4BR4U8D4L8U4"
860 DATA"BR58BD34NH22NL32NG22"
865 REM FIVE EIGHTHS
870 DATA"BR58BD34NU28NR32NE22NF22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4L4R8U4L8U4R8"
875 DATA"BR58BD34NH22NL32NG22ND28"
880 REM SIX EIGHTHS
885 DATA"BR58BD34NU28NR32NE22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4L4NU4R8U4L8U4R8"
890 DATA"BR58BD34NH22NL32NG22ND28NF22"
895 REM SEVEN EIGHTHS
900 DATA"BR58BD34NU28NE22BR44BD12NU4R8U8D4L8U4NR8BU4L2R12L6BU4BR4U8L8D2"
905 DATA"BR58BD34NH22NL32NG22ND28NF22NR32"
910 REM EIGHT EIGHTHS
915 DATA"BR"
920 DATA"BR58BD34NU28ND28NL32NR32NE22NF22NG22NH22BR44BD12C0NU4R8U8D4L8U4NR8BU4L2R12L6BU4L4R8U4NL8U4L8D8"
925 REM ONE NINTH
930 DATA"BR58BD34NU28M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4U8"
935 DATA"BR"
940 REM TWO NINTHS
945 DATA"BR58BD34NU28M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4R4L8U4R8U4L8"
950 DATA"BR58BD34M-18,-22"
955 REM THREE NINTHS
960 DATA"BR58BD34NU28M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4L4R8U4NL8U4L8"
965 DATA"BR58BD34M-18,-22M+18,+22M-30,-6"
970 REM FOUR NINTHS
975 DATA"BR58BD34NU28M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4BR4U8D4L8U4"
980 DATA"BR58BD34M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15"
985 REM FIVE NINTHS
990 DATA"BR58BD34NU28M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4L4R8U4L8U4R8"
995 DATA "BR58BD34M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26"
1000 REM SIX NINTHS
1005 DATA"BR58BD34NU28M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4L4NU4R8U4L8U4R8"
1010 DATA"BR58BD34M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26"
1015 REM SEVEN NINTHS
1020 DATA"BR58BD34NU28M+30,-6M-30,+6M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4BR4U8L8D2"
1025 DATA "BR58BD34M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15"
1030 REM EIGHT NINTHS
1035 DATA"BR58BD34NU28M+18,-22BR26BD34R8U4NU4L8U4NR8BU4L2R12L6BU4L4R8U4NL8U4L8D8"
1040 DATA"BR58BD34M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6"
1045 REM NINE NINTHS
1050 DATA"BR"
1055 DATA"BR58BD34NU28M-18,-22M+18,+22M-30,-6M+30,+6M-26,+15M+26,-15M-12,+26M+12,-26M+12,+26M-12,-26M+26,+15M-26,-15M+30,-6M-30,+6M+18,-22BR26BD34C0R8U4NU4L8U4NR8BU4L2R12L6BU4L4R8U8L8D4R8"
1060 DATA .5,1,.333,.667,1
1065 DATA .25,.5,.75,1,.2,.4,.6,.8,1
1070 DATA .167,.333,.5,.667,.833,1
1075 DATA .143,.286,.429,.571,.714,.857,1
1080 DATA .125,.25,.375,.5,.625,.75,.875,1
1085 DATA .111,.222,.333,.444,.556,.667,.778,.889,1
1090 CLS:PRINT:PRINT:PRINT
1095 PRINTTAB(3)"PROBLEMS COMPLETED  = "NC+NW:PRINT
1100 PRINTTAB(3)"CORRECT RESPONSES   = "NC:PRINT
1105 PRINTTAB(3)"INCORRECT RESPONSES = "NW:PRINT
1110 TR=NC+NW:IFTR=0THENTR=1
1115 SC=INT(NC/TR*100)
1120 PRINTTAB(3)"YOUR TOTAL SCORE    = "SC"%":PRINT
1125 PRINTTAB(3)"ANOTHER TRY (Y/N) OR (C) ?";
1130 X$=INKEY$:IFX$=""THEN1130
1135 IFX$="Y"THEN RUN
1140 IFX$="N"THEN CLS:END
1145 IFX$="C"THEN 200
1150 GOTO1130
