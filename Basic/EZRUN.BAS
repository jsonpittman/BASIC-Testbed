0 '*** Copyright (C) 1988
1 'COPYRIGHT 1989  FALSOFT,INC
2 '***    Kolesar B/S
4 '***    7 Ladd Road
6 '***    Westfield, PA. 16950
8 GOSUB90:RESTORE ' go check data. return if ok!
10 '* read/data palette command   (COCO 3 ONLY)
12 FORF=0TO15:READC:PALETTEF,C:NEXT:DATA18,0,9,36,38,27,45,38, 0,18,0,63,54,0,36,27
14 WIDTH 80:CLS2 ' (COCO 3 ONLY)
16 ATTR 3,1 ' (COCO 3 ONLY)
18 VERIFY ON
20 IFPEEK(49474)><48THENDB=1:' disk basic 1.1  if ><48
22 POKE 150,40 'set printer baud at 1200
24 IFDB=1THEN POKE55318,20:POKE55232,0 ELSEPOKE55075,20:POKE54989,0 'set 6ms step rate
26 IFDB=1THEN POKE55180,18:POKE55181,18:POKE55182,18 ELSEPOKE54937,18:POKE54938,18:POKE54939,18 'nop second delay loop
28 POKE 44014,PEEK(2394)+48 :POKE 44015,62 ' new prompt 0>
30 POKE 44016,32 ' replace carriage return after new prompt
32 '* patch DRIVE command
34 IFDB=1THEN POKE52942,126:POKE52943,0:POKE52944,243 ELSEPOKE52722,126:POKE52723,0:POKE52724,243 'jmp  243
36 POKE 243,247 :POKE 244,9 :POKE 245,90 ' stb  2394
38 POKE 246,203 :POKE247,48 ' addb #48
40 POKE 248,247 :POKE249,171 :POKE 250,238 ' stb 44014
42 POKE 251,192 :POKE 252,48 ' subb #48
44 POKE 253,57 ' rts
46 '* patch PCLEAR command
48 POKE 38543,33 :POKE 38563,33 'pclear0  brn f/c error
50 '
52 POKE 41598,19 ' change <BREAK> to equal <SH>-<@>
54 POKE41591,95 ' change <SHF>-<SPACEBAR> to equal <SHF>-<^>
56 '* patch LET for Autorun enhancement
58 '* to relocate patch change line 60.  variable 'A' is the start location of the patch, 'B' is start+length of the patch.  ('A=&HFAA0' to 'A=&H new address').  Also match data in line 74 to the new address
60 A=&HFAA0:B=A+&H6B:GOSUB76
62 IFDB><1THENPOKEA+22,200:POKEA+23,162:POKEA+32,200:POKEA+33,162:POKEA+36,142:POKEA+38,200:POKEA+39,138:POKEA+41,201:POKEA+42,190:POKEA+46,200:POKEA+47,162:' patch Autorun for 1.0 D-basic
64 A=&HAF90:B=A+&H02:GOSUB76:END
66 DATA E1,9F,00,A6,26,02,0E,9F,     D6,68,5C,26,4B,86,03,B7,09,     59,F7,09,5E,FC,C9,50,DD,76,     1F,50,C3,00,0F,FD,C9,50,8E,     C2
68 DATA A6,BD,C9,38,7E,CA,6C,DC,     76,FD,C9,50,CE,02,DC,34,40,     5F,A6,C0,27,1B,5C,85,80,27,     F7,1F,51,30,89,00,1A,A1,81,     27
70 DATA 06,6D,84,26,F8,20,09,A6,     82,A7,5F,20,E1,35,10,39,7E,     B2,77,83,27,AB,2B,AC,2D,AE,     2F,AF,5E,AD,2A,B2,3E,B4,3C,     00
72 '* line 74 is M/L for  JSR  $FAA0
74 DATA BD,FA,A0
76 FORF=A TO B:READH$:POKEF,VAL("&H"+H$):NEXT:RETURN
89 '* error check data lines
90 FORF=0TO15:READA:NEXT ' read data past the palette settings (COCO 3 ONLY)
91 B=36:C=4117:L=66:GOSUB95 '   data check line 66
92 C=4274:L=68:GOSUB95      '   data check line 68
93 C=3724:L=70: '   data check line 70
94 '* Fall to line 95. Return to line 8 if data is ok. Error message if not.
95 E=0:FORF=1TOB:READH$:E=E+VAL("&H"+H$):NEXT:IFE><C THENPRINT"DATA ERROR IN LINE"L:END ELSE RETURN
