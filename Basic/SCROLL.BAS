10 'GRAPHICS SCREEN SCROLL
20 'FROM KROMICO SOFTWARE
30 'BY BILL BERNICO
40 '
45 'FIND SCROLL START ADDRESS
50 A=(PEEK(27)*256+PEEK(28))-543
55 'SET UP HI-RES SCREEN
60 PMODE4,1:PCLS1:SCREEN1,1:COLOR0,1
65 'FRAME THE GRAPHICS SCREEN..     IF YOU CHANGE (255,190) TO      (255,191) IT WILL SCROLL UP     IN BLACK INSTEAD OF WHITE
70 LINE(0,0)-(255,190),PSET,B
75 'DRAW A SQUARE IN THE UPPER      LEFT CORNER OF THE SCREEN
80 DRAW"BM10,10R30D30L30U30
85 'POKE FOR ORANGE COLOR PAINT
90 POKE 178,1
95 'PAINT UPPER LEFT SQUARE
100 PAINT(12,12),,0
105 'POKE TO CANCEL ORANGE COLOR
110 POKE 178,0
115 'DRAW A DIAMOND IN THE LOWER     RIGHT CORNER OF THE SCREEN
120 DRAW"BM200,160E20F20G20H20
125 'POKE FOR BLUE COLOR PAINT
130 POKE 178,2
135 'PAINT LOWER RIGHT DIAMOND
140 PAINT(205,160),,0
145 'POKE TO CANCEL BLUE COLOR
150 POKE 178,0
155 'DRAW CIRCLE IN CENTER
160 CIRCLE(128,96),50
165 'POKE FOR STRIPED COLOR
170 POKE 178,100
175 'PAINT CIRCLE WITH STRIPES
180 PAINT(128,96),,0
185 'POKE TO CANCEL STRIPE COLOR
190 POKE 178,0
195 'DRAW LETTERS TO SPELL OUT  "SCROLL TEST" IN UPPER RIGHT
200 DRAW"BM138,28R5U4L5U4R5BR4NR5D8R5BR4U8R4FD2GL3F4BR4NR6U8R6D8BR4NU8R5BR4NU8R5BM200,20R6L3D8BR7NR5U4NR4U4R5BR4NR5D4R5D4L5BR12U8L3R6
205 'DRAW LETTERS TO SPELL OUT  "HIT ANY KEY" IN LOWER LEFT
210 DRAW"BM20,175D8U4R5U4D8BR5U8BR4R6L3D8BR13U8R5D4NL5D4BR4U8DF6DU8BR4DF2E2UDG2D5BR12U8D4NE4F4BR4NR5U4NR4U4R5BR4DF2E2UDG2D5
215 'PAUSE THE SCREEN UNTIL YOU      HIT ANY KEY
220 IF INKEY$=""THEN 220
225 'ONCE A KEY IS HIT, BEGIN        SCREEN SCROLLING
230 EXEC A
240 CLS:LIST-30
