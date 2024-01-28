0 ' COPYRIGHT 1989  FALSOFT,INC
5 CLS8:PRINT@137," GROCERY LIST ";:PRINT@206," BY ";:PRINT@263," JAMES S. MCNEILL ";:PRINT@327," WILMINGTON, DEL.";:PRINT@397," 1989 ";
10 FOR Y=1 TO 3000:NEXT Y
15 CLS:PRINT@132,"THERE WILL BE TWO GROCERY":PRINT@196,"LISTS PER PRINTED PAGE.":PRINT@260,"PRINT HOW MANY PAGES";:INPUTA
20 POKE 150,87 '600 BAUD
25 FOR K=1 TO A
30 PRINT#-2,TAB(14)"GROCERY LIST                             GROCERY LIST"
35 PRINT#-2,STRING$(39,42)"  "STRING$(39,42)
40 PRINT#-2:
45 PRINT#-2,TAB(3)"Bakery Products        Fruits            Bakery Products        Fruits"
50 PRINT#-2,TAB(3)STRING$(15,45)"        "STRING$(6,45)"            "STRING$(15,45)"        "STRING$(6,45)
55 PRINT#-2,STRING$(9,10)
60 PRINT#-2,TAB(3)"Cereals              Vegetables          Cereals              Vegetables"
65 PRINT#-2,TAB(3)STRING$(7,45)"              "STRING$(10,45)"          "STRING$(7,45)"              "STRING$(10,45)
70 PRINT#-2,STRING$(9,10)
75 PRINT#-2,TAB(3)"Cleaning Products       Meats            Cleaning Products       Meats"
80 PRINT#-2,TAB(3)STRING$(17,45)"       "STRING$(5,45)"            "STRING$(17,45)"       "STRING$(5,45)
85 PRINT#-2,STRING$(9,10)
90 PRINT#-2,TAB(3)"Dairy Products       Paper Products      Dairy Products       Paper Products"
95 PRINT#-2,TAB(3)STRING$(14,45)"       "STRING$(14,45)"      "STRING$(14,45)"       "STRING$(14,45)
100 PRINT#-2,STRING$(9,10)
105 PRINT#-2,TAB(3)"Frozen Foods         Miscellaneous       Frozen Foods         Miscellaneous"
110 PRINT#-2,TAB(3)STRING$(12,45)"         "STRING$(13,45)"       "STRING$(12,45)"         "STRING$(13,45)
115 PRINT#-2,STRING$(12,10)
120 NEXT K
125 END
