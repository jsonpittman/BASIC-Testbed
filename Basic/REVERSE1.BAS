100 '     LISTING 1
200 '
300 '
400 CLS
500 PCLEAR 4
600 PMODE 4,1:SCREEN 1,1:PCLS
700 POKE 359,57
800 POKE 4010,255
900 INPUT A
1000 POKE 4042,A
1100 GOTO 900
