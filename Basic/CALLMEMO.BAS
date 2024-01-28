0 ' COPYRIGHT 1989  FALSOFT,INC
10 CLS4:PRINT@135,"                  ";
20 PRINT@167,"     CALL MEMO    ";
30 PRINT@199,"        BY        ";
40 PRINT@231,"  WILLIAM SOUSER  ";
50 PRINT@263,"    COPYRIGHT     ";
60 PRINT@295,"    NOV.,1988     ";
70 PRINT@327,"                  ";
80 '*                *
90 '******************
100 FOR I=1 TO 2500:NEXTI
110 CLS:PRINT@165,"THIS PRINTS FOUR CALL":PRINT@200,"MEMOS TO A PAGE."
120 PRINT@261,"HOW MANY PAGES DO YOU":PRINT@296,"WANT TO PRINT";:INPUTA
130 POKE150,18
140 A$=STRING$(37,42):B$=STRING$(37,45)
150 FOR H=1 TO A
160 FORI=1TO2
170 PRINT#-2:PRINT#-2,CHR$(27);CHR$(14);TAB(7)"CALL MEMO             CALL MEMO":PRINT#-2,CHR$(27);CHR$(15)
180 GOSUB 340:PRINT#-2,"TO                                        TO":GOSUB350
190 PRINT#-2,"FROM                                      FROM":GOSUB350
200 PRINT#-2,"TEL.NO.(    )               EXT.          TEL.NO(    )               EXT.    ":GOSUB340
210 PRINT#-2,CHR$(27);CHR$(20)"URGENT                      CALLED-NO MESSAGE                         URGENT                            CALLED-NO MESSAGE"
220 PRINT#-2,"PLEASE CALL                 WILL CALL LATER                           PLEASE CALL                       WILL CALL LATER"
230 PRINT#-2,"RETURNED YOUR CALL          WAS HERE                                  RETURNED YOUR CALL                WAS HERE";:PRINT#-2,CHR$(27);CHR$(19)
240 GOSUB340
250 PRINT#-2,CHR$(27);CHR$(20)"RED'D BY                    DATE            TIME                      REC'D BY                    DATE            TIME";:PRINT#-2,CHR$(27);CHR$(19)
260 GOSUB340
270 FOR J=1TO 8:PRINT#-2:GOSUB350:NEXTJ
280 PRINT#-2
290 NEXT I
300 NEXT H
310 PRINT#-2,CHR$(27);CHR$(19)
320 END
330 REM PRINT SUB ROUTINES
340 PRINT#-2,A$"     "A$:RETURN
350 PRINT#-2,B$"     "B$:RETURN
