10 DIMA(1228),B(1228)
20 PMODE4,1:COLOR0,5:PCLS:SCREEN1,1
30 CIRCLE(128,96),95
40 GET(0,0)-(255,191),A
50 FORDL=1TO500:NEXT
60 PCLS:CIRCLE(128,96),126,,.5
70 GET(0,0)-(255,191),B
80 FORDL=1TO500:NEXT
90 PUT(0,0)-(255,191),A
100 FORDL=1TO500:NEXT
110 PUT(0,0)-(255,191),B
120 GOTO120
