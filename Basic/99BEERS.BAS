1 '"THE BEER SONG"
2 'BY:BERNICE SHOOBS,CLIFTON,N.J.
10 'THIS WILL PLAY 99 BOTTLES OF
20 'BEER ALL THE WAY DOWN TO ONE
30 'IF YOU DON'T WANT TO GET 
40 'BOOZED TO THE GILLS,---
50 'KEY IN A NO. LOWER THAN 99
51 'AT LINE 70
52 CLS
53 PRINT@265,"THE BEER SONG"
54 PRINT@297,STRING$(13,"-")
55 FOR T= 1 TO 2000:NEXT T
60 CLS 2
70 FORN=99TO 1 STEP -1
80 PRINT @0,N;"BOTTLES OF BEER ON THE WALL"
90 PLAY "L8;G;G;G;D;D;D;G;G;G;L2;G"
100 PRINT @96,N;"BOTTLES OF BEER"
110 PLAY "L8;A;A;A;E;E;E;L2;A"
120 PRINT @192,"         TAKE ONE DOWN,                 PASS IT AROUND..."
130 PLAY"G;L8;F#;F#;F#;F#;F#;F#;F#;F#;F#;L2F#;
140 PRINT @352,N-1;"BOTTLES OF BEER ON THE WALL"
150 PLAY"L8;D;D;D;D;E;F#;G;G;G;L2;G"
160 NEXT N
170 CLS
180 PALETTE 13,36:PALETTE 12,0
190 PRINT @263, "A L L   G O N E !!!"
200 PRINT@295,STRING$(19,"=")
210 PLAY "L2;D L1G"
220 GOTO 220
230 'PLEASE KEY PALETTE CMP/RGB
240 'AFTER BREAKING THE PROGRAM
250 'TO GO BACK TO NORMAL SCREEN
