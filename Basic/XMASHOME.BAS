1 'CHRISTMAS HOME
2 'BY DANNY AND PEGGY EARY
3 'COPYRIGHT (C) DECEMBER 1991
4 'BY FALSOFT, INC.
5 'RAINBOW MAGAZINE
6 '*****************************
10 PMODE 1,1:PCLS
15 SCREEN1,0
20 PCLS 3
25 COLOR 1,0
30 CIRCLE(200,25),5
40 LINE(100,185)-(180,125),PSET,B
45 LINE-(140,90),PSET
50 LINE-(100,125),PSET
55 PAINT(135,115),4,1
60 LINE(110,160)-(125,130),PSET,B
65 LINE(155,160)-(170,130),PSET,B
70 PSET(134,157,1)
75 PAINT(120,180),0,1
76 LINE(130,130)-(149,185),PSET,B
77 LINE (160,105)-(160,90),PSET  'CHIMNEY
78 LINE- (175,90),PSET  'CHIMNEY
79 LINE- (175,115),PSET  'CHIMNEY
80  'SMOKE STARTS HERE
81 X=167:Y=89  'CIRCLE CENTERPOINT
85 SP=0:EP=0:  'CIRCLE START AND END POINT
90 FOR R=1 TO 50 STEP 3
100 CIRCLE(X+R,Y-R),R,4,1,SP,EP  'SMOKE    
105 NEXT R
120 LINE(101,135)-(41,185),PSET,B   
130 LINE(91,140)-(51,185),PSET,B
140 PAINT(55,138),0,1
145 PAINT(89,183),4,1
150 FOR X=1 TO 500:NEXT X
160 PAINT (89,183),2,1    
170 FOR X=1 TO 500:NEXT X
171 PAINT(89,155),4,1
172 CIRCLE (200,40),30,,1,.13,.63  
173 CIRCLE(230,10),52,,1,.29,.48   
174 PAINT(89,155),4,1
176 CIRCLE (20,20),5
196 Y=RND (192)-1
197 C=RND (9)-1
198 PSET (X,Y,C)
199 CIRCLE (117,150),4,2
200 CIRCLE (155,180),4,1
201 CIRCLE(175,180),4,1
202 CIRCLE (165,180),4,1
203 CIRCLE(163,150),4,2
204 CIRCLE (125,180),4,1
205 CIRCLE (115,180),4,1
206 CIRCLE(105,180),4,1
207 CIRCLE (140,110),15,2
208 CIRCLE (60,50),4,1
209 CIRCLE (230,55),4,1
210 CIRCLE(115,40),4,1
211 CIRCLE (150,20),4,1
212 CIRCLE (139,145),9
213 X=RND (300)-1
214 Y=RND (192)-1
215 C=RND(9)-1
216 PSET (X,Y,C)
217 CIRCLE (70,160),12
218 CIRCLE (140,85),4,2
219 CIRCLE (200,180),4,1
220 CIRCLE (210,180),4,1
221 CIRCLE(220,180),4,1
222 CIRCLE (230,180),4,1
223 CIRCLE (205,170),4,1
224 CIRCLE (215,170),4,1
225 CIRCLE (225,170),4,1
226 CIRCLE(211,160),4,1
227 CIRCLE (220,160),4,1
228 CIRCLE (215,150),4,1
229 CIRCLE (70,165),4,2
230 CIRCLE (140,110),4,6
300 GOTO 213
