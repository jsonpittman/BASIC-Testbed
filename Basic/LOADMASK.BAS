0 '''''''''''''''''''''''''''' 00  LOADMASK MACHINE LANGUAGE   00        LOADER CREATER        00 ............................ 0
10 FOR T=&H2500 TO &H2514:READ A$:POKET,VAL("&H"+A$):NEXTT
20 FOR T=&H25DB TO &H25FB:READ A$:POKET,VAL("&H"+A$):NEXTT
30 SAVEM"LOADER",&H2500,&H25FB,&H2500
40 DATA 9E,19,10,9E,1B,10,BF,25,FA,EC,84,1E,89,ED,81,BC,25,FA,2F,F5,39,8E,26,01,10,BE,25,FA,EC,84,1E,89,ED,81,BC,25,FA,2F,F5,10,9F,1B,10,8E,26,01,10,9F,19,7E,AD,21,00,00
