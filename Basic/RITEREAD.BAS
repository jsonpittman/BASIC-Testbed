0 ' COPYRIGHT 1989  FALSOFT,INC
100 CLS:NA$="RECORDS/DAT"
105 PRINT "--- TEN RECORDS ON A FILE ------"
110 OPEN "O",#1,NA$:PRINT @32,"+++ WRITING ===>";
120 FOR IX = 1 TO 10:PRINT " ";IX;
130 WRITE #1,"RECORD NUMBER:",IX
140 NEXT IX:CLOSE #1:PRINT @96,"++++ READING BACK ++++"
150 OPEN "I",#1,NA$
160 FOR IX = 1 TO 10
170 INPUT #1,IN$,NB
180 PRINT "===> ";IN$;NB
190 NEXT IX:CLOSE
200 LINE INPUT "ERASE THE FILE? Y/N ";KF$
210 IF KF$ = "N" GOTO 250 ELSE KILL NA$
250 LINE INPUT "RUN IT AGAIN? Y/N ";MT$
260 IF MT$ = "N" THEN END ELSE GOTO 100
