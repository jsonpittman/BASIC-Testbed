5 '********TITLE SCREEN********    ****************************
10 '*******FOR "REMEMBER"*******    ****************************
15 '
20 CLS:T$="r e m e m b e r"
25 G$=CHR$(128)+" "+CHR$(159)+" "+CHR$(255)+" "+CHR$(191)+" "+CHR$(223)+" "+CHR$(175)+" "+CHR$(239)+" "+CHR$(207)
30 FORX=0TO150:PRINT@456,T$:NEXT
35 FORL=456TO39STEP-32:PRINT@L,T$:PRINT@L+32,G$:NEXT
40 FORX=0TO300:NEXT
45 PRINT@352,"              b y                 l a r r y   a n d e r s o n"
50 FORX=0TO300:NEXT
55 PRINT@450,"C. 1985   BENTON, LA. 71006"
60 LOAD"MAIN",R
