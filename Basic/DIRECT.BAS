1 'DIRECT HELP
2 'WRITTEN BY KATHY RUMPEL
3 'COPYRIGHT (C) JANUARY 1992
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
6 RGB:PALETTE0,57:PALETTE2,8:POKE &HFF9A,57:POKE 65497,0
7 HSCREEN2:POKE &HFF9A,57:HCOLOR2,0
8 CLEAR1500:Q=0:Z=0:FI=0:S1$=STRING$(10," "):S2$=STRING$(9," "):X1=75:Y1=7:X2=110:Y2=42
9 HLINE(X1,Y1)-(X2,Y2),PSET,B
10 HLINE(X1,Y1+37)-(X2,Y2+35),PSET,B
11 HLINE(X1,Y1+72)-(X2,Y2+70),PSET,B
12 HLINE(X1,Y1+107)-(X2,Y2+105),PSET,B
13 HLINE(X1,Y1+142)-(X2,Y2+140),PSET,B
14 HPRINT(18,0),"** DIRect HELP **":HPRINT(19,23),"BY: Kathy Rumpel"
15 HDRAW"BM80,10;C8S8BD4D8R12U8L12BD2BRR3BRR3BRR2BD2L2BLL3BLL3BD2R3BRR3BRR2":HPRINT(20,4),"WIDE DIRECTORY"
16 HDRAW"BM80,45;C8S8BD2BRGDFREUHLR8FD2L8D5BDBRR7U7BD7DGL7EUHLGDFRBR2BU3R4BUL4BUR4BUL4BUR4BUL4":HPRINT(20,8),"WILD LIST"
17 HDRAW"BM80,80;C8S8BD4D9R4U9L4BR8D9R4U9L4":HPRINT(20,12),"WILD COPY"
18 HDRAW"BM80,115;C8S8BD2DRDRDRDRDRD2LGD2FR2EU2HLBU2R4GD2FR2EU2HL2BL3ULULULULULU":HPRINT(20,16),"WILD DELETE"
19 HDRAW"BM80,150;C8S8BD3BR2D10BR8U4BLS4LDLULURURDRDBR2S8U6L8":HPRINT(20,20),"EXIT"
20 CURSOR$="S4H4L2D4L8G4L4G3NL5BE3BR4F4R8D4R2E6U4H2"
21 H=55:V=20
22 HDRAW"BM=H;,=V;C2"+CURSOR$:HPAINT(55,V+5),2,2
23 I$=INKEY$:IF I$="" THEN 23
24 IF I$=CHR$(10) THEN HDRAW"BM=H;,=V;C0"+CURSOR$:HPAINT(55,V+5),0,0:V=V+35
25 IF I$=CHR$(94) THEN HDRAW"BM=H;,=V;C0"+CURSOR$:HPAINT(55,V+5),0,0:V=V-35
26 IF I$=CHR$(13) THEN GOTO 30
27 IF V>160 THEN V=160
28 IF V<20 THEN V=20
29 GOTO22
30 POKE65496,0:WIDTH80:PALETTE0,63:PALETTE8,0:CLS1
31 IF V=20 THEN PICK=1
32 IF V=55 THEN PICK=2
33 IF V=90 THEN PICK=3
34 IF V=125 THEN PICK=4
35 IF V=160 THEN PICK=5
36 ON PICK GOTO 37,62,86,116,143
37 'WIDE DIRECTORY
38 ON ERR GOTO 5:ON BRK GOTO 5:CLS:LOCATE30,5:PRINT"**WIDE DIRECTORY**":LOCATE23,8:PRINT"1> SCREEN  (or)  2> PRINTER? ";
39 A$=INKEY$:IFA$=""THEN 39
40 IF A$<"1" OR A$>"2" THEN 39
41 ON VAL(A$) GOSUB 43,51
42 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:CLS:GOTO5
43 'SCREEN
44 CLS:PRINT TAB(29);"  Directory":PRINT
45 FOR X=3 TO 11:GOSUB 145
46 FOR N=0TO7:IFLEFT$(N$(N),1)<>CHR$(0) AND LEFT$(N$(N),1)<>CHR$(255) THEN GOSUB 48
47 NEXT N:NEXT X:PRINT:PRINT:PRINTQ;" File(s)";:PRINT"  ";FREE(0);" granules free":Q=0:RETURN
48 Q=Q+1:Z=Z+1
49 PRINT"  ";N$(N);"/ ";E$(N);"  ";:IF Z=3 THEN PRINTS2$;:Z=0:RETURN
50 PRINTS1$;:RETURN
51 'PRINTER
52 POKE 150,18:'2400 BAUD
53 CLS:PRINT"DIRECTORY NAME: ";:LINEINPUT DN$
54 CLS:PRINT"Directory sent to printer..."
55 PRINT#-2:PRINT#-2,TAB(15);"  Directory: ";DN$:PRINT#-2
56 FOR X=3TO11:GOSUB 145
57 FOR N=0TO7:IF LEFT$(N$(N),1)<>CHR$(0) AND LEFT$(N$(N),1)<>CHR$(255) THEN GOSUB 59
58 NEXT N:NEXT X:PRINT#-2:PRINT#-2:PRINT#-2,Q;" File(s)";:PRINT#-2,"  ";FREE(0);" granules free":Q=0:RETURN
59 Q=Q+1:Z=Z+1
60 PRINT#-2,"  ";N$(N);"/ ";E$(N);"  ";:IF Z=3 THEN PRINT#-2,S2$;:Z=0:RETURN
61 PRINT#-2,S1$;:RETURN
62 'WILD LIST
63 ON BRK GOTO 64:ON ERR GOTO 64
64 CLS:LOCATE30,5:PRINT"**WILD LIST**":LOCATE30,8:PRINT"1> BEGINNING":LOCATE30,9:PRINT"2> EXTENSION":LOCATE30,10:PRINT"3> MENU":LOCATE30,12:PRINT"SELECTION? ";
65 A$=INKEY$:IFA$="" THEN 65
66 IF A$<"1" OR A$>"3" THEN 65
67 ON VAL(A$) GOSUB 69,77,85
68 GOTO 64
69 'BEGINNING
70 CLS:LOCATE9,5:PRINT"List all files that begin with a certain letter or letters.":LOCATE20,10:PRINT"ENTER BEGINNING LETTER(S): ";:LINEINPUTX$:LE=LEN(X$):CLS
71 IF X$="" THEN GOTO 64
72 FOR X=3TO11:GOSUB145
73 FOR N=0TO7:IF LEFT$(N$(N),LE)=X$ AND LEFT$(N$(N),1)<>CHR$(0) THEN PRINT TAB(30); N$(N);"  ";E$(N):Q=Q+1:FI=FI+1
74 IF FI=20 THEN PRINT:PRINT TAB(25);"Strike a key to continue...":EXEC44539:PRINT:FI=0
75 NEXTN:NEXTX:PRINT:PRINT TAB(30);Q;" File(s)":Q=0:FI=0
76 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:RETURN
77 'EXTENSION
78 CLS:LOCATE18,5:PRINT"List all files with a certain extension":LOCATE25,10:PRINT"ENTER EXTENSION: ";:LINEINPUTX$:LE=LEN(X$):CLS
79 IF X$="" THEN GOTO 64
80 FOR X=3TO11:GOSUB145
81 FOR N=0TO7:IFLEFT$(E$(N),LE)=X$ AND LEFT$(N$(N),1)<>CHR$(0) THEN PRINT TAB(30);N$(N);"  ";E$(N):Q=Q+1:FI=FI+1
82 IF FI=20 THEN PRINT:PRINT TAB(25);"Strike a key to continue...":EXEC44539:PRINT:FI=0
83 NEXTN:NEXTX:PRINT:PRINT TAB(30);Q;" File(s)":Q=0:FI=0
84 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:RETURN
85 CLS:GOTO5
86 'WILD COPY
87 ON BRK GOTO 88:ON ERR GOTO 88
88 CLS:LOCATE30,5:PRINT"**WILD COPY**":LOCATE30,8:PRINT"1> BEGINNING":LOCATE30,9:PRINT"2> EXTENSION":LOCATE30,10:PRINT"3> MENU":LOCATE30,12:PRINT"SELECTION? ";
89 A$=INKEY$:IFA$="" THEN 89
90 IF A$<"1" OR A$>"3" THEN 89
91 ON VAL(A$) GOSUB 93,101,109
92 GOTO 88
93 'BEGINNING
94 CLS:LOCATE9,5:PRINT"Copy all files that begin with a certain letter or letters.":LOCATE20,10:PRINT"ENTER BEGINNING LETTER(S): ";:LINEINPUTX$:LE=LEN(X$):CLS
95 IF X$="" THEN GOTO 88
96 SOUND10,5:PRINT:PRINT"INSERT SOURCE DISK AND PRESS ANY KEY TO BEGIN...":PRINT:EXEC44539
97 FOR X=3TO11:GOSUB145
98 FOR N=0TO7:IF LEFT$(N$(N),LE)=X$ AND LEFT$(N$(N),1)<>CHR$(0) THEN GOSUB110
99 NEXTN:NEXTX:PRINT:PRINT TAB(30);Q;" File(s) copied":Q=0
100 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:RETURN
101 'EXTENSION
102 CLS:LOCATE18,5:PRINT"Copy all files with a certain extension":LOCATE25,10:PRINT"ENTER EXTENSION: ";:LINEINPUTX$:LE=LEN(X$):CLS
103 IF X$="" THEN GOTO 88
104 SOUND10,5:PRINT:PRINT"INSERT SOURCE DISK AND PRESS ANY KEY TO BEGIN...":PRINT:EXEC44539
105 FOR X=3TO11:GOSUB145
106 FOR N=0TO7:IFLEFT$(E$(N),LE)=X$ AND LEFT$(N$(N),1)<>CHR$(0) THEN GOSUB110
107 NEXTN:NEXTX:PRINT:PRINT TAB(30);Q;" File(s) copied":Q=0
108 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:RETURN
109 CLS:GOTO5
110 'COPY
111 F$=N$(N)+"."+E$(N):COPY F$
112 PRINT:PRINT:PRINT TAB(30);N$(N);".";E$(N);" copied"
113 SOUND10,5:PRINT:PRINT"INSERT SOURCE DISK AND PRESS ANY KEY TO CONTINUE...":PRINT:EXEC44539
114 Q=Q+1
115 RETURN
116 'WILD DEL
117 ON BRK GOTO 118:ON ERR GOTO 118
118 CLS:LOCATE30,5:PRINT"**WILD DELETE**":LOCATE30,8:PRINT"1> BEGINNING":LOCATE30,9:PRINT"2> EXTENSION":LOCATE30,10:PRINT"3> MENU":LOCATE30,12:PRINT"SELECTION? ";
119 A$=INKEY$:IFA$="" THEN 119
120 IF A$<"1" OR A$>"3" THEN 119
121 ON VAL(A$) GOSUB 123,130,137
122 GOTO 118
123 'BEGINNING
124 CLS:LOCATE9,5:PRINT"Delete all files that begin with a certain letter or letters.":LOCATE20,10:PRINT"ENTER BEGINNING LETTER(S): ";:LINEINPUTX$:LE=LEN(X$):CLS
125 IF X$="" THEN GOTO 118
126 FOR X=3TO11:GOSUB145
127 FOR N=0TO7:IF LEFT$(N$(N),LE)=X$ AND LEFT$(N$(N),1)<>CHR$(0) THEN GOSUB138
128 NEXTN:NEXTX:PRINT:PRINT TAB(30);Q;" File(s) deleted":Q=0
129 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:RETURN
130 'EXTENSION
131 CLS:LOCATE18,5:PRINT"Delete all files with a certain extension":LOCATE25,10:PRINT"ENTER EXTENSION: ";:LINEINPUTX$:LE=LEN(X$):CLS
132 IF X$="" THEN GOTO 118
133 FOR X=3TO11:GOSUB145
134 FOR N=0TO7:IFLEFT$(E$(N),LE)=X$ AND LEFT$(N$(N),1)<>CHR$(0) THEN GOSUB138
135 NEXTN:NEXTX:PRINT:PRINT TAB(30);Q;" File(s) deleted":Q=0
136 PRINT:PRINT TAB(25);"Press any key to return...";:EXEC44539:RETURN
137 CLS:GOTO5
138 'DELETE
139 PRINT TAB(30);N$(N);".";E$(N);" deleted"
140 KILL N$(N)+"."+E$(N)
141 Q=Q+1
142 RETURN
143 'EXIT
144 WIDTH32:END
145 DSKI$ 0,17,X,A$,B$:C$=A$+LEFT$(B$,127):N$(0)=LEFT$(C$,8):E$(0)=MID$(C$,9,3)
146 FOR N=1TO7:N$(N)=MID$(C$,N*32+1,8):E$(N)=MID$(C$,9+N*32,3):NEXT N
147 RETURN
