10 CLEAR 200,&H3E68
20 POKE &H96,&H12:'2400 BAUD
30 FOR A=&H3E69 TO &H3F0C
40 READ H$:POKE A,VAL("&H"+H$)
50 NEXT A
60 DEF USR0=&H3E69
70 F$="HRESFILE"
80 C$=CHR$(&H77)+CHR$(&H00)+CHR$(&H15)+CHR$(&H22)+CHR$(&H30)+CHR$(&H46)+CHR$(&H26)+CHR$(&H54)+CHR$(&H07)+CHR$(&H27)+CHR$(&H13)+CHR$(&H23)+CHR$(&H33)+CHR$(&H76)+CHR$(&H02)+CHR$(&H57)
90 LOADM F$+"/HR0"
100 LOADM F$+"/HR1",&H2000
110 X=USR0(VARPTR(C$))
120 FOR A=&H4000 TO &H43FF
130 POKE A,PEEK(A+&H3C00)
140 NEXT A
150 LOADM F$+"/HR2",&H400
160 LOADM F$+"/HR3",&H2400
170 X=USR0(VARPTR(C$))
180 POKE &H6F,0:PRINT"DONE"
190 END
200 DATA BD,B3,ED,1F,01,EE,02,10,8E,40,00,86,FE,97,6F,8E,3F,10,8D,4A,8D,48,30,01,8C,3F,60,26,F5,8D,07,10,8C,7C,00,26,EA,39,8D,62,A6,80,AD,9F,A0,02,7A,3F,0D,26,F5,8D,55,A6,80,B7,3F,0F,86,04,B7,3F,0E,48,79,3F,0F,49,79,3F,0F,59,58,7A,3F,0E,26,F1,F7,3F
210 DATA 0F,BA,3F,0F,AD,9F,A0,02,7A,3F,0D,26,D8,39,E6,A4,54,54,54,54,8D,07,E6,A0,C4,0F,8D,01,39,A6,C5,48,48,69,89,00,A0,48,69,88,50,48,69,84,48,48,69,89,00,A0,48,69,88,50,48,69,84,39,C6,03,8E,3F,0A,A6,80,AD,9F,A0,02,5A,26,F7,86,F0,B7,3F,0D,8E,3F,10
220 DATA 39,1B,43,50
