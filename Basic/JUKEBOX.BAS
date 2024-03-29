5 RGB
10 CLS:PRINT@166,"MUSICAL ARRANGEMENTS"
20 PRINT@238,"BY"
30 PRINT@490," <any key>"
40 PRINT@297,"ERNIE THOMPSON"
45 PRINT@366,"1987"
50 EXEC44539
60 CLS
70 PALETTE13,1:PALETTE12,63
80 C=RND(8):CLS(C)
90 PRINTSTRING$(32,42);
100 FORX=1TO14
110 PRINT"*";:PRINTSTRING$(30,CHR$(255));:PRINT"*";
120 NEXT
130 PRINTSTRING$(31,42);
140 POKE1535,106:POKE359,57:POKE65314,20
150 PRINT@36,"**Favorite Fiddle Tunes**";
160 PRINT @ 100, "1) NORTH SHORE BREAKDOWN";
170 PRINT @ 164, "2) HIGH LEVEL HORNPIPE";
180 PRINT @ 228, "3) PATRONELLA";
190 PRINT @ 292, "4) DILL PICKLE RAG";
200 PRINT @ 356, "5) BLACK & WHITE RAG";
210 PRINT @ 426, "6) END JOB";
220 EXEC44539
230 AN$=INKEY$
240 IF AN$ ="" THEN 230
250 IF AN$ = "4"  THEN 270
260 FOR I=1 TO 40:NEXT I
270 ON VAL (AN$) GOTO 280,420,570,690,890,1220
280 C=RND(8)
290 CLS(C)
300 PRINTSTRING$(32,42)
310 PRINT@35, "*THE NORTH SHORE BREAKDOWN*"
320 PRINTSTRING$(32,42)
330 A$="O3T2V15L8DDL16DO2ABO3C#L8DDL16DO2ABO3C#DC#DEF#EDC#O2L8BGGO3L16C#DL8EEL16EO2L16AO3C#D"
340 B$="O3L8EEL16EO2AO3C#DEF#EDC#O2ABO3C#L8DF#DP8"
350 C$="O3L4.F#L16G"
360 D$="O3L16ABAF#L8DO2L16AO3DC#O2BBBL8BO3L16EF#"
370 E$="O3L16GAGEL8C#L16O2AO3C#O2BAAAL8AO3L16F#GABAF#L8DO2L16AO3DC#O2BBBL8BO3L16EF#GAGEC#O2ABO3C#L8DF#DP4"
380 X$="XA$;XB$;XA$;XB$;XC$;XD$;XE$;XD$;XE$;XD$;XE$;XA$;XB$;XC$;XD$;XE$;"
390 PLAY X$
400 PRINT@227, "OFTEN PLAYED AT CONTESTS";
410 PRINT@480,"press <enter> to continue":INPUT L: IF L=ENTER GOTO60
420 CLS(8)
430 PRINTSTRING$(32,42)
440 PRINT @ 35, "*THE HIGH LEVEL HORNPIPE*"
450 PRINTSTRING$(32,42)
460 A$="O3T2L8.DL16C"
470 B$="O2L16B-O3DO2FB-DFB-O3DFB-DFO2B-O3DCO2B-O3CE-CO2B-AFAO3CAGFAGFDC"
480 C$="O2L16B-O3DO2FB-DFB-O3DFB-DFO2B-O3DCO2B-GAB-O3CDEFGAGCO2AL8B-"
490 D$="O3L8.CO2L16B-"
500 E$="O2L16AO3FCFO2AO3FCFO2AFAO3CFCO2AFO3DFO2B-O3FDFO2B-O3FDO2B-O3DFB-FDO2B-"
510 F$="O3L16EGCGEGCGECEGB-GECFEFAGFEGL8FFF"
520 X$="XA$;XB$;XC$;XB$;XC$;XD$;XE$;XF$;XE$;XF$;"
530 PLAY X$
540 PLAY X$
550 PRINT @227,"A LONG TIME FAVORITE AT FIDDLING CONTESTS";
560 PRINT@480,"press <enter> to continue":INPUT L: IF L=ENTER THEN GOTO 60
570 CLS(4)
580 PRINTSTRING$(32,42)
590 PRINT@35,"*THE PATRONELLA BREAKDOWN*"
600 PRINTSTRING$(32,42)
610 A$="T2O2L16DO3AL8F#L16AF#L8EL16AF#L8DDDL16F#AO3L8DL16C#DL8EDL16C#DO2BO3C#O2L8AO3L16DO2A"
620 B$="O2L8F#L16AF#L8EL16AF#L8DDDL16F#AO3L8DL16C#DL8EC#L4DL8D"
630 C$="O3L16DO2AL8F#L16O3F#L8O2AL16AF#L8DL16GF#EDC#O2BL8AO3L16EC#O2L8AO3L16GEL8F#L16F#DO2AO3DO2AF#"
640 D$="O2L8DO3L16F#DO2L8AO3L16AF#L8GL16GF#EDC#O2BL8AL16O3EC#O2AO3GEC#L4DL8D"
650 X$= "XA$;XB$;XA$;XB$;XC$;XD$;XC$;XD$;XA$;XB$;XC$;XD$;"
660 PLAY X$
670 PRINT@227,"THE BREAKDOWN--THE FINAL SET OF A SQUARE DANCE";
680 PRINT@480,"press <enter> to continue":INPUT L:IF L=ENTER THEN GOTO 60
690 CLS(4)
700 PRINTSTRING$(32,42)
710 PRINT @ 38, "*THE DILL PICKLE RAG*"
720 PRINTSTRING$(32,42)
730 A$="L4T3O2BO3CC#"
740 B$="O3T4L8DEGDEGDEGDEGGEL4DO2L8GABGABGABGABBAL4GL8DEF#DEF#DEF#DEF#F#EL4D"
750 C$="O2L8GF#GEEF#GG#AG#AO3DDO2BO3CC#"
760 D$="O2L8AG#AO3DDO2BL4AL2GL8GGF#E"
770 E$="O2L4DE-EF#GO3L8EDDEL4DO2L4F#O2L8EDDEL4DO2L4GO3L8EDDEL4DO2L8DAEAFAF#AL4GO3L8EDDEL4D"
780 F$="O2L8ABO3C#O2ABL4.C#L2DL8DO2GF#E"
790 G$="O3L8DEF#DEL4F#L2G"
800 H$="O3L8CO2AGO3CO2AGEFGEGAAGL4EL8DC#DGGEL4DL2CL4ABO3L8CO2AGO3CO2AGEFGEGAAGL4EL8AG#AO2DDO2BAL2GL4AB"
810 I$="O3L8CO2AGO3CO2AGEFGEGAAGL4EL8DC#DGGEL4DL2CO3L4CO2BAL8ABO3CO2BO3CDED#EAAGEDC#DGGEL4D"
820 J$="O3L2.CO2L8AB"
830 K$="O3L2.C"
840 X$="XA$;XB$;XC$;XB$;XD$;XE$;XF$;XE$;XG$;XH$;XI$;XJ$;XH$;XI$;XK$;"
850 PLAY X$
860 PLAY "XB$;XC$;XB$;XD$;XE$;XF$;XE$;XG$;XH$;XI$;XJ$;XH$;XI$;XK$;"
870 PRINT @ 225, "HOW IS THAT FOR A DILL PICKLE?";
880 PRINT@480,"press <enter> to continue":INPUT L:IF L=ENTER THEN GOTO 60
890 C=RND(8)
900 CLS (C)
910 PRINTSTRING$(32,42)
920 PRINT@35,"*THE BLACK AND WHITE RAG*"
930 PRINTSTRING$(32,42)
940 A$="T4O3L8DDDDC#C#"
950 B$="T4O2L8CDF#CDF#CDF#CDF#F#CDCO2A#BO3EO2ABO3EO2AB"
960 C$="T4O3L8EO2A#BO3EEDO2BGO3L8CDBO3CCO2BO3CO2AG#ABO3CO2AF#DGO2F#AGO2BO3CC#D"
970 D$="T4O2L8BGEGL4GO3L8DC#CDF#CDF#CDF#CDF#F#CDCO2A#BO3EO2ABO3EO2AB"
980 E$="T4O3L8EO2A#BO3EEDO2BGL4EL8G#BO3EGCO2AAG#AO3CEDCO2ABDGBBGL4A"
990 F$="T4O2L8GGO3DDDDC#C#"
1000 G$="T4O2L1G"
1010 H$="T4O2L4GL8F#GGF#L4GO3L4EL8D#EEDL4EDL8C#DDC#L4D"
1020 I$="T4O2L4AAAG#L8F#GBF#GBF#GBF#GBBAGF#D#EADEADEAD#EAAO3CO2AEGGF#GGFL4GO3L4EL8D#EEDL4EDL8C#DDC#L4DO2L4AAAG#"
1030 J$="T4O2L8GABO3CDEFGAGFEDCO2BAGF#GO3EECL4DCCCC"
1040 K$="O2L8BO3DGO2GBO3DO2DGBO1BO2DGGBO3DO2AF#AF#CF#DCFGG#AAGL4A"
1050 L$="T4O3L8CDF#O2AO3CEO2F#AO3DO2FAO3CCDF#DO2L4BL8DGBO3CO2L4GL8BO3CC#DDCO2BA"
1060 M$="T4O2L8G#BO3EO2BGEO1BO2EG#O1BO2EGL4O1BBO2L8AO3C#EO2EAO3CO2C#EAO1AO2C#EO1L4AAO2L8BO3DGO2GBO3DO2DGBO1BO2DGGBO3DO2BFGAO3DDO2ABDL4GGGG"
1070 X$="XA$;XB$;XC$;XD$;XE$;"
1080 Y$="XF$;"
1090 V$="XG$;"
1100 PLAY X$
1110 PLAY Y$
1120 PLAY X$
1130 PLAY V$
1140 O$="XH$;XI$;XJ$;"
1150 PLAY O$
1160 PLAY O$
1170 S$="XK$;XL$;XM$;"
1180 PLAY S$
1190 PLAY S$
1200 PRINT@231," A PIANO SHOW PIECE";
1210 PRINT@480,"press <enter> to continue":INPUT L:IF L=ENTER GOTO60
1220 CLS:PRINT@135,"THAT'S ALL FOLKS.."
1230 PRINT@199,"HAVE A GOOD DAY!"
1240 GOTO 1240
