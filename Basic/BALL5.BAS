100 'METHOD FIVE-PRINT@
110 SCREEN0,1
120 CLS
130 FOR Y=0 TO 416 STEP32
140 PRINT@16+Y,CHR$(136);CHR$(128);CHR$(128);CHR$(132);
150 PRINT@48+Y,CHR$(128);CHR$(128);CHR$(128);CHR$(128);
160 PRINT@80+Y,CHR$(130);CHR$(128);CHR$(128);CHR$(129);
170 FOR I=1 TO 80:NEXT
180 PRINT@16+Y,CHR$(143);CHR$(143);CHR$(143);CHR$(143);
190 PRINT@40+Y,CHR$(143);CHR$(143);CHR$(143);CHR$(143);
200 PRINT@80+Y,CHR$(143);CHR$(143);CHR$(143);CHR$(143);
210 NEXT
220 GOTO220
