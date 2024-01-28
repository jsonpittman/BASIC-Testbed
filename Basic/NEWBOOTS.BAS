10 '''''''''''''''''''''''''''''
11 '  BOOT A CUSTOM PROMPT AND '
12 '    CURSOR WITH 64K RAM    '
13 '    FROM   TOM KOCOUREK    '
14 '    AND    KEN ROCKWELL    '
15 '        RT2, BOX54         '
16 '        EMERSON,GA         '
17 '   FOR RS DISK 1.0, 1.1,   '
18 '   JDOS 1.11 & EXT. BASIC  '
19 '''''''''''''''''''''''''''''
20 ' SETUP BASIC FOR AUTO BOOT
21 '''''''''''''''''''''''''''''
22 CLEAR200,32761
23 '''''''''''''''''''''''''''''
24 '   64K BOOT OVER ROUTINE
25 '''''''''''''''''''''''''''''
26 FOR A=12288 TO 12313:READ B
27 POKE A,B:NEXT:EXEC12288
28 DATA26,80,142,128,0,236,132
29 DATA183,255,223,237,129,183
30 DATA255,222,140,254,255,37,241
31 DATA183,255,223,28,175,57
32 '''''''''''''''''''''''''''''
33 '   REDEFINE THE CURSOR
34 '''''''''''''''''''''''''''''
35 POKE41384,134
36 '''''''''''''''''''''''''''''
37 ' CHANGE CURSOR FLASHING RATE
38 '''''''''''''''''''''''''''''
39 POKE41374,5:POKE41388,9
40 '''''''''''''''''''''''''''''
41 ' CHANGE CURSOR PATTERNS BY 1
42 '''''''''''''''''''''''''''''
43 POKE41382,1
44 '''''''''''''''''''''''''''''
45 ' CHANGE PROMPT FROM "OK"
46 '        TO "go"
47 '''''''''''''''''''''''''''''
48 POKE44014,103:POKE44015,111
49 '''''''''''''''''''''''''''''
50 '  YOU CAN MAKE A START-UP
51 ' MESSAGE OF A$ WITH NO MORE
52 ' CHARACTERS THEN 86 FOR DISK
53 '  OR 81 FOR EXTENDED BASIC
54 '   OR 75 FOR JDOS 1.11
55 '''''''''''''''''''''''''''''
56 A=PEEK(49446):IFA=144THEN58ELSEIFA=68THEN61ELSEIFA=251THEN64ELSE67
57 ' COME HERE IF RS DISK 1.1
58 A=86:S=49465:E=49551:GOTO72
59 '''''''''''''''''''''''''''''
60 ' COME HERE IF RS DISK 1.0
61 A=86:S=49446:E=49532:GOTO72
62 '''''''''''''''''''''''''''''
63 ' COME HERE IF JDOS 1.11
64 A=76:S=49182:E=49258:GOTO72
65 '''''''''''''''''''''''''''''
66 ' COME HERE IF EXTENDED BASIC
67 A=81:S=33000:E=33081
68 '''''''''''''''''''''''''''''
69 ' PUT YOUR MESSAGE IN THE 
70 ' NEXT LINE AS "A$=...."
71 '''''''''''''''''''''''''''''
72 A$="        CUSTOM 64K RAM"
73 '''''''''''''''''''''''''''''
74 ' POKE MESSAGE INTO BASIC
75 '''''''''''''''''''''''''''''
76 IFLEN(A$)<A THENA$=A$+STRING$(A-LEN(A$),32)ELSEIFLEN(A$)>A THEN A$=LEFT$(A$,A)
77 FOR Z=S TO (E-1)
78 POKE Z,ASC(MID$(A$,(Z+1)-S,1))
79 NEXTZ
80 '''''''''''''''''''''''''''''
81 ' AUTO BOOT ON RESET ROUTINE
82 '''''''''''''''''''''''''''''
83 DATA 52, 23, 142, 127, 249, 134, 126, 167, 4, 220, 114, 237, 5, 134, 183, 167, 1, 204, 255, 223
84 DATA 237, 2, 134, 18, 167, 0, 159, 114, 48, 30, 159, 35, 159, 39, 204, 159, 114, 190, 192, 0
85 DATA 140, 68, 75, 38, 5, 142, 192, 0, 32, 3, 142, 128, 0, 48, 1, 16, 163, 132, 38, 249
86 DATA  204, 18, 18, 237, 132, 53, 151
87 FORA=12288TO12354:READB:POKEA,B:NEXTA:EXEC12288
88 ' USE THIS LINE FOR LOADING       YOUR M/L PROGRAM.
89 '''''''''''''''''''''''''''''
90 '    DO A "CLS" AND THEN A 
91 '    WARM RE-START OF BASIC
92 '''''''''''''''''''''''''''''
93 EXEC43304:EXEC32770
