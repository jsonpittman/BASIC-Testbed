0 ' COPYRIGHT 1989  FALSOFT,INC
10 'NOTE CARD MADE BY:
20 ' DARRIN SEATS
30 ' P.O. BOX 252
40 ' SMITHSHIRE, IL. 61478
50 '
60 POKE 150,41 '1200 BAUD PRINTER
70 CLEAR 1200
80 DIM A$(26)
90 CLS:PRINT"INPUT TEXT THAT YOU WANT ON YOURNOTE CARD. MAXIMUM LINE LENGTH  IS 40 CHARACTERS. WITH A MAXIMUMOF 26 LINES."
100 A=A+1
110 PRINTA;:LINEINPUT A$(A)
120 IF LEN(A$(A))>40 THEN PRINT"REDO-TOO LONG!":GOTO 110
130 IF A<26 THEN 100
140 PLAY"A":PRINT"PRINTING NOTE CARD"
150 PRINT#-2,CHR$(27);CHR$(20) 'CONDENSED
160 GOSUB 190:PRINT#-2:GOSUB 200:FOR Q=1 TO 26:PRINT#-2,":     ";:PRINT#-2,A$(Q);:W=LEN(A$(Q)):P=40-W:FOR E=1 TO P:PRINT#-2," ";:NEXTE:PRINT#-2,"     :":NEXTQ:GOSUB 200:GOSUB 190
170 PRINT#-2,CHR$(27);CHR$(19)
180 END
190 FOR Q=1 TO 52:PRINT#-2,".";:NEXT Q:RETURN
200 PRINT#-2,":";:FOR Q=1 TO 50:PRINT#-2," ";:NEXTQ:PRINT#-2,":":RETURN
