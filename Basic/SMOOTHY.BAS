1 ' *******************
2 ' *                 *
3 ' *   SMOOTHY/BAS   *
4 ' *       By        *
5 ' * John Blochowiak *
6 ' *                 *
7 ' *******************
8 ' COPYRIGHT (C) 1987
9 '
100 WIDTH 80 : PALETTE 0,0
110 CLS 1 : ATTR 3,0 : WIDTH 40
120 FOR A = 449536 TO 449589
130 READ B : LPOKE A,B : NEXT A
140 FOR A = 63572 TO 63600
150 READ B : POKE A,B : NEXT A
160 CLEAR 200,32768 : NEW
170 DATA 204,1,25,183,255,156,142,32,0
180 DATA 16,142,40,0,238,129,239,161
190 DATA 140,39,208,37,247,76,253,255
200 DATA 156,129,7,38,232,142,32,0,238
210 DATA 136,80,239,129,140,39,48,37
220 DATA 246,189,248,123,206,0,24,255
230 DATA 255,156,53,230
240 DATA 52,102,182,254,4,129,80,16,38
250 DATA 67,161,142,32,0,236,137,0,160
260 DATA 237,129,140,46,96,37,245,141
270 DATA 12,53,230
