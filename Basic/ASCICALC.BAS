0 ' COPYRIGHT 1989  FALSOFT,INC
10 'PROGRAM TO CALCULATE ASCII      GRAPHICS FOR DATA LINES
20 'GREG BAUER
30 '6411 SO. ALDER
40 'TACOMA,WA. 98409
50 GOSUB200
60 CLS
70 PRINT@42,"COLOR NUMBERS";:PRINT@101,"0=GREEN        1=YELLOW";:PRINT@165,"2=BLUE         3=RED";:PRINT@229,"4=BUFF         5=CYAN";:PRINT@293,"6=MAGENTA      7=ORANGE";
80 PRINT:PRINT:LINEINPUT"          ENTER (0-7)";C$:C=VAL(C$):IFC<0 OR C>7 THEN80
90 CLS
100 PRINT@41,"PATTERN NUMBERS";
110 PRINT@100,CHR$(192)"=0";:PRINT@107,CHR$(193)"=1";:PRINT@114,CHR$(194)"=2";:PRINT@121,CHR$(195)"=3";
120 PRINT@164,CHR$(196)"=4";:PRINT@171,CHR$(197)"=5";:PRINT@178,CHR$(198)"=6";:PRINT@185,CHR$(199)"=7";
130 PRINT@228,CHR$(200)"=8";:PRINT@235,CHR$(201)"=9";:PRINT@242,CHR$(202)"=10";:PRINT@249,CHR$(203)"=11";
140 PRINT@292,CHR$(204)"=12";:PRINT@299,CHR$(205)"=13";:PRINT@306,CHR$(206)"=14";:PRINT@313,CHR$(207)"=15";
150 PRINT:PRINT:LINEINPUT"          ENTER (0-15)";P$:P=VAL(P$)
160 IFP<0 OR P>15THEN150
170 CLS:A=(16*C)+P:PRINT@265,"ASCII#-128=";A
180 INPUT"              AGAIN";A$:IFA$="Y"THEN60ELSEIFA$="N"THEN190ELSE180
190 CLS:END
200 CLS0:FORI=1TO32:PRINTCHR$(128);:NEXT
210 FORI=1TO32:PRINTCHR$(204);:NEXT
220 FORI=1TO96:READ A:PRINTCHR$(128+A);:NEXT
230 FORI=1TO32:PRINTCHR$(195);:NEXT
240 PRINT@266,"PRESENTED BY";:PRINT@363,"GREG BAUER";:PRINT@455,"COPYRIGHT (C) 1988";
250 FORX=1TO4000:NEXT:RETURN
260 DATA0,,46,45,,46,44,,46,44,,45,40,36,46,,,,46,44,,46,45,,42,,,46,44,,,0
270 DATA0,,43,39,,44,45,,42,,,37,,,42,,,,42,,,43,39,,42,,,42,,,,0
280 DATA0,,42,37,,35,39,,43,35,,39,34,33,43,,,,43,35,,42,37,,43,35,,43,35,,34,0
