100 CLEAR 500
105 CLS
110 P$="ENTER A NUMBER FROM 1 TO 99":VT$="N"
120 HV=99:LV=1:SL=64:GOSUB 9020
130 P$="ENTER MARBLE SIZE: 0.25 TO 5.50":VT$="D"
140 HV=5.50:LV=0.25:SL=128:GOSUB 9020
150 P$="MARBLE DESCRIPTION < 32 CHARS":VT$="A"
160 HV=32:SL=192:GOSUB 9020
170 GOTO 105
9020 PRINT @SL,P$ 'PROMPT FOR VARIABLE
9022 PRINT @SL+32," " 'CLEAR THE NEXT LINE
9024 PRINT @SL+32,""; 'REPOSITION CURSOR
9026 LINE INPUT "==> ";VA$ 'INPUT THE VARIABLE
9028 LA= LEN(VA$):IF VT$ = "D" GOTO 9044
9030 IF VT$ = "N" GOTO 9036
9032 IF LA > INT(HV) GOTO 9020
9034 RETURN 'VARIABLE IS IN RANGE
9036 VV= VAL(VA$) 'GET NUMERIC VALUE
9038 IF VV < LV GOTO 9020
9040 IF VV > HV GOTO 9020
9042 GOTO 9034
9044 IF LA > 9 OR LA < 3 GOTO 9020
9046 IF MID$(VA$,LA-2,1) <> "." GOTO 9020
9048 GOTO 9036
