0 ' COPYRIGHT 1989  FALSOFT,INC
10 CLS
20 PRINT@198,"////AUTO MILEAGE\\\\"
30 PRINT@271,"BY"
40 PRINT@331,"DAN WEAVER"
50 PRINT@32,STRING$(32,239)
60 PRINT@448,STRING$(32,239);
70 FOR X=1 TO 2000:NEXTX
80 PU$="###.##"
90 CLS
100 INPUT"MILEAGE ON ODOMETER AT BEGINNINGOF TRIP";BM
110 INPUT"MILEAGE ON ODOMETER AT THE END  OF TRIP";EM
120 INPUT"HOW MANY HOURS DID THE TRIP TAKE(CHANGE MINUTES TO DECIMAL.     EXAMPLE:45 MIN.=.75)";TT
130 INPUT"NUMBER OF GALLONS PUT IN TANK ATEND OF TRIP";GG
140 INPUT"PRICE PER GALLON";PG
150 TM=EM-BM
160 MPG=TM/GG
170 CLS
180 PRINT"trip summary"
185 PRINT"TOTAL MILES TRAVELLED ";TM
190 PRINT"MILES PER GALLON      ";:PRINTUSING PU$;MPG
200 PRINT"AVERAGE MILES PER HOUR";:PRINTUSING PU$;TM/TT
210 PRINT"CENTS PER MILE FOR GAS";:PRINTUSING PU$;PG/MPG*100
220 PRINT
230 PRINT"based on following information"
240 PRINT"1ST ODOMETER READING "BM
250 PRINT"2ND ODOMETER READING "EM
260 PRINT"NUMBER OF HOURS      "TT
270 PRINT"NUMBER OF GALLONS    "GG
280 PRINT"PRICE PER GALLON     "PG
