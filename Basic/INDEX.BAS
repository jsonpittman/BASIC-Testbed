0 '<INDEX> IDENTIFYING NUMBERS  FOR SAVED GRAPHIC SCREENS
10 CLS:FORX=1TO4:PRINT:NEXT:INPUT"     ENTER NUMBER OF DESIGN              000 THRU 999";N
20 PRINT:INPUT"              TIMER                       00 THRU 99";Z
30 X$=STR$(N):Y$=STR$(Z)
40 B$=MID$(X$,3,1):J$=MID$(Y$,2,1)
50 C$=RIGHT$(X$,1):K$=RIGHT$(Y$,1)
60 A$=MID$(X$,2,1)
70 IF N<10 THEN A$="0":GOTO90
80 IF N<100 AND N>9 THEN A$="0":B$=MID$(X$,2,1)
90 IF Z<10 THEN J$="0"
100 GOSUB1000:PMODE4,1:PCLS:SCREEN1,0
110 DRAW"S8BM3,15"+T$+N$(VAL(A$))+N$(VAL(B$))+N$(VAL(C$)):DRAWQ$+N$(VAL(J$))+N$(VAL(K$))
999 GOTO999
1000 N$(1)="BR4NU4BR"
1010 N$(2)="BR2U2R3U2NL3BD4NL3"
1020 N$(3)="BR2R3U2NL2U2NL3BD4"
1030 N$(4)="BE2NU2R3U2D4"
1040 N$(5)="BR2R3U2L3U2R3BD4"
1050 N$(6)="BR2U4NR3D2R3D2NL3"
1060 N$(7)="BR2BU3UR3D4"
1070 N$(8)="BR2U4R3D2NL3D2NL3"
1080 N$(9)="BE2NR3U2R3D4"
1090 N$(0)="BR2U4R3D4NL3"
1100 D$="BR2U4R3D2NL3D2"'A
1110 E$="BR2U4R2FGNL2FGNL2BR"'B
1120 Q$="BE2R3BD2"'DASH
1130 T$="BR4U4NL2R2BD4"'T
1140 RETURN
