0 ' COPYRIGHT 1989  FALSOFT,INC
2 '"WORDMAKE" BY LB..10/88
3 ONBRK GOTO200
4 Z=RND(100):FORQ=1TO2:Y=RND(100):NEXTQ:CLS
5 PRINT@33,"CAN YOU MAKE 10 WORDS OF THIS?"
6 PRINT"2&3 LETTER WORDS NOT ALLOWED!"
8 FORQ=1TO15
10 A=RND(26)+64
20 B$=B$+CHR$(A)
30 NEXTQ
40 PRINT@102,B$+"AEIOU"
50 '
60 FORQ=1TO10
70 PRINTQ;:INPUT">";C$
72 D=LEN(C$):IFD=4THENF=F+10
73 IFD<4THEN70
74 IFD=5 THEN G=G+15
76 IFD=6 THEN H=H+20
78 IFD>6 THEN J=J+30
80 NEXTQ
82 SC=F+G+H+J:PRINT"<<<SCORE>>>",SC"!!!"
90 PRINT"GOOD!!AGAIN? HIT[ENTER]"
100 INPUTZ:RUN
110 CLS:LIST
200 END
