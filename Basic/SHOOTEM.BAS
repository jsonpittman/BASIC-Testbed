2 CLS
3 CLEAR2000
4 T$=CHR$(136)+CHR$(132)
5 DIM A$(3)
6 PO=495
10 A=RND(-TIMER)
20 A$(1)=STRING$(255,32):A$(2)=STRING$(255,32):A$(3)=STRING$(255,32)
30 FORX=1TO100
40 R=RND(254):IF MID$(A$(1),R,1)<>CHR$(175) THEN MID$(A$(1),R,1)=CHR$(175):MID$(A$(2),R,1)=CHR$(159):MID$(A$(3),R,1)=CHR$(175):NEXTX ELSE GOTO 40
50 M1=RND(254):M2=RND(254):M3=RND(254)
55 PRINT@PO-1,T$;
56 E1=300
60 Y$=INKEY$:IF Y$="" THEN GOSUB 490:GOTO60
61 IF Y$=CHR$(8) AND PO-1>480 THEN PRINT@PO-1,CHR$(32)+CHR$(32);:PO=PO-1:PRINT@PO-1,T$;:GOTO60
62 IF Y$=CHR$(9) AND PO<510 THEN PRINT@PO-1,CHR$(32)+CHR$(32);:PO=PO+1:PRINT@PO-1,T$;:GOTO60
70 FORX=PO-32 TO PO-480 STEP -32
75 IFX=E1 THEN E1=0
76 IF X=E2 THEN E2=0
80 IF PEEK(1024+X)=175 OR PEEK(1024+X)=159THEN 100 ELSE 90
90 PRINT@X,CHR$(133);:NEXTX
95 GOTO 120
100 IF X>128 AND X<159 THEN MID$(A$(3),M3+(X-128),1)=CHR$(32) ELSE IF X>64 AND X<95 THEN MID$(A$(2),M2+(X-64),1)=CHR$(32) ELSE IF X>0 AND X<31 THEN MID$(A$(1),M1+(X-0),1)=CHR$(32)
110 GOTO90
120 FOR X=PO-32 TO PO-480   STEP-32:PRINT@X,CHR$(32);:NEXTX:GOTO60
490 GOSUB1000:M1=M1+1:M2=M2-1:M3=M3+1:IF M1=255 THEN M1=1 ELSE IF M2=1 THEN M2=255 ELSE IF M3=255 THEN M3=1
500 PRINT@0,MID$(A$(1),M1,32):PRINT@64,MID$(A$(2),M2,32):PRINT@128,MID$(A$(3),M3,32):RETURN
1000 IF E1=0 THEN E1=PO-480
1010 IF E2=0 THEN E2=RND(31)-1
1020 PRINT@E1,CHR$(32);:PRINT@E2,CHR$(32);:E1=E1+32:E2=E2+32
1030 IF E1>511 THEN E1=0
1035 IF E2>511 THEN E2=0
1040 PRINT@E1,CHR$(134+64);:PRINT@E2,CHR$(134+64);:IF PEEK(PO+1024)=134+64 OR PEEK(PO-1+1024)=134+64 THEN END ELSE RETURN
