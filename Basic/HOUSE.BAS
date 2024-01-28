10 CLS
20 REM $$$$$$$$$$$$$$$$$$$$$$$$$
30 REM $     HOUSE HUNTING     $
40 REM $          BY           $
50 REM $   RICHARD K.JOHNSON   $
60 REM $    826 ELMWOOD AVE.   $
70 REM $     NEW ALBANY,IN.    $
80 REM $         47150         $
90 REM $ COPYRIGHT (C) JULY 88 $
100 REM $$$$$$$$$$$$$$$$$$$$$$$$$
110 PRINT@166,"$$$$$$$$$$$$$$$$$$$$$"
120 PRINT@198,"$   HOUSE HUNTING   $"
130 PRINT@230,"$        BY         $"
140 PRINT@262,"$  RICHARD JOHNSON  $"
150 PRINT@294,"$$$$$$$$$$$$$$$$$$$$$"
160 FORP=1TO3000:NEXTP
170 CLS:PRINT"SET PAPER TO TOP OF PRINTER HEAD"
180 PRINT"  WHEN PRINTER IS ON LINE PRESS           <<<ENTER>>>"
190 EXEC44539
200 IF INKEY$=CHR$(13)THEN 210ELSE170
210 CLS:INPUT"HOW MANY COPIES (1-10)";C
220 IFC<1 OR C>10 THEN210 ELSE230
230 PR=1
240 POKE150,87'POKE FOR 600 BAUD RATE FOR RADIO SHACK DMP 105 PRINTER
250 FORPR=1 TO C
260 CLS:PRINT@234,"NOW PRINTING"
270 C$="HOUSE HUNTING"
280 PRINT#-2,CHR$(27);CHR$(14);TAB((45-LEN(C$))/2);C$:PRINT#-2
290 D$="INTERIOR INSPECTION"
300 PRINT#-2,TAB((42-LEN(D$))/2);D$
310 PRINT#-2,CHR$(15);"                                        ";CHR$(14)
320 PRINT#-2,CHR$(27);CHR$(15);CHR$(27);CHR$(19);"               1/2/B # OF # OF  TEL. WALL   WALL  FLOOR  FLOOR CEILING""
330 PRINT#-2,CHR$(27);CHR$(15);CHR$(27);CHR$(19);CHR$(15);"ROOMS    SIZE  LEVEL WND. CLOS. OUT. COLOR  DESC. TYPE   COLOR   FAN            "
340 PRINT#-2,"FOYER  /      /     /   /     /    /      /     /      /      /      /    /    /"
350 PRINT#-2,"LIVING /      /     /   /     /    /      /     /      /      /      /    /    /"
360 PRINT#-2,"DINING /      /     /   /     /    /      /     /      /      /      /    /    /"
370 PRINT#-2,"                                                                                "
380 PRINT#-2,"1 BED  /      /     /   /     /    /      /     /      /      /      /    /    /"
390 PRINT#-2,"2 BED  /      /     /   /     /    /      /     /      /      /      /    /    /"
400 PRINT#-2,"3 BED  /      /     /   /     /    /      /     /      /      /      /    /    /"
410 PRINT#-2,"4 BED  /      /     /   /     /    /      /     /      /      /      /    /    /"
420 PRINT#-2,"                                                                                "
430 PRINT#-2,"KIT.   /      /     /   /     /    /      /     /      /      /      /    /    /"
440 PRINT#-2,"                                                                                "
450 PRINT#-2,"UTILITY/      /     /   /     /    /      /     /      /      /      /    /    /"
460 PRINT#-2,"MUD    /      /     /   /     /    /      /     /      /      /      /    /    /"
470 PRINT#-2,"FAMILY /      /     /   /     /    /      /     /      /      /      /    /    /"
480 PRINT#-2,"BASEMT /      /     /   /     /    /      /     /      /      /      /    /    /"
490 PRINT#-2,"       /      /     /   /     /    /      /     /      /      /      /    /    /"
500 PRINT#-2,"       /      /     /   /     /    /      /     /      /      /      /    /    /"
510 PRINT#-2,"                                                                                "
520 PRINT#-2,"1 BATH /      /     /   /     /    /      /     /      /      /      /    /    /"
530 PRINT#-2,"2 BATH /      /     /   /     /    /      /     /      /      /      /    /    /"
540 PRINT#-2,"3 BATH /      /     /   /     /    /      /     /      /      /      /    /    /"
550 PRINT#-2,"4 BATH /      /     /   /     /    /      /     /      /      /      /    /    /"
560 PRINT#-2,"                                                                                ";CHR$(14)
570 PRINT#-2,"         FULL            TILE  SINK   SIZE  MED. VENT SIZE      "
580 PRINT#-2,CHR$(15);"         HALF TUB SHOWER COLOR COLOR VANITY CAB  FAN MIRROR                     "
590 PRINT#-2,"1 BATH /     /   /      /     /     /      /   /    /      /     /      /      /"
600 PRINT#-2,"2 BATH /     /   /      /     /     /      /   /    /      /     /      /      /"
610 PRINT#-2,"3 BATH /     /   /      /     /     /      /   /    /      /     /      /      /"
620 PRINT#-2,"4 BATH /     /   /      /     /     /      /   /    /      /     /      /      /"
630 PRINT#-2,"                                                                                ";CHR$(14)
640 PRINT#-2,"KITCHEN APPLIANCES INCLUDED:  COMMENTS";CHR$(15);+"                                          ";CHR$(14)
650 PRINT#-2,"()REFRIGERATOR  ()RANGE E/G  ()OVEN E/G  ()COOKTOP E/G  ()DISPOSAL ()COMPACTOR"
660 PRINT#-2,CHR$(15)"()FREEZER  ()MICROWAVE  ()HOOD FAN  ()WATER SOFTNER  ()DISHWASHER  ()           "
670 PRINT#-2,CHR$(15)"                                                                                ";CHR$(14)
680 PRINT#-2,"CABINETS: #OF DOORS";CHR$(15);+"     ";CHR$(14);+"#OF DRAWERS";CHR$(15);+"     ";CHR$(14);+"COUNTER SPACE";CHR$(15);+"    FT.";CHR$(14);+"  COND.";CHR$(15);+"             ";CHR$(14)
690 PRINT#-2,"()PANTRY  ()BAR  ()WORK ISLAND *SINK SIZE";CHR$(15);+"          ";CHR$(14);+"TYPE";CHR$(15);+"          ";CHR$(14);+"COLOR";CHR$(15);+"          ";CHR$(14)
700 PRINT#-2,"()WASHER/DRYER CONNECTIONS  E/G  LOCATIONS";CHR$(15);+"          ";CHR$(14);+"  *()WASHER  ()DRYER  E/G"
710 PRINT#-2,"WATER HEATER  E/G/S  SIZE";CHR$(15);+"    GALS.";CHR$(14);+"  AGE";CHR$(15);+"     YRS.";CHR$(14);+"   *()SEWER  ()SEPTIC TANK"
720 PRINT#-2,"HEAT: E/G/S/O/WB TYPE";CHR$(15);+"          ";CHR$(14);+" SIZE";CHR$(15);+"        BTU";CHR$(14);+" AGE";CHR$(15);+"       ";CHR$(14);+"  ()AIR CLEANER SYSTEM"
730 PRINT#-2,"()HEAT PUMP  AIR CONDITIONING: TYPE ()CENTRAL  ()WINDOW  SIZE";CHR$(15);+"        ";CHR$(14);+"  AGE";CHR$(15);+"      ";CHR$(14)
740 PRINT#-2,"INSULATION: CEILING";CHR$(15);+"     IN.";CHR$(14);+" WALLS";CHR$(15);+"     IN.";CHR$(14);+" FLOOR";CHR$(15);+"     IN.";CHR$(14);+" COMMENTS";CHR$(15);+"                ";CHR$(14)
750 PRINT#-2,"AVG. UTILITY BILLS  ELEC.";CHR$(15);+"         ";CHR$(14);+"  GAS";CHR$(15);+"        ";CHR$(14);+"  WATER";CHR$(15);+"         ";CHR$(14);+"  SEWER";CHR$(15);+"          ";CHR$(14)
760 PRINT#-2,"ELECTRIC PANEL: ()FUSE  ()BREAKER  SIZE";CHR$(15);+"     AMP.";CHR$(14);+"  LOCATION";CHR$(15);+"                      ";CHR$(14)
770 PRINT#-2:PRINT#-2,CHR$(15);"COMMENTS                                                                        "
780 PRINT#-2:PRINT#-2,"                                                                                "
790 PRINT#-2:PRINT#-2,"                                                                                "
800 PRINT#-2:PRINT#-2,"                                                                                "
810 PRINT#-2:PRINT#-2,"                                                                                "
820 PRINT#-2:PRINT#-2,"                                                                                "
830 PRINT#-2:PRINT#-2,"                                                                                ";CHR$(14)
840 PRINT#-2:PRINT#-2:PRINT#-2
850 NEXTPR
860 CLS:PRINT@231,"GOOD HOUSE HUNTING"
