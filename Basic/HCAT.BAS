0 ' COPYRIGHT 1989  FALSOFT,INC
1 'HCAT SHK 10/89
2 ON BRK GOTO 999
20 RGB: HSCREEN 1: PALETTE 0,0
30 HCOLOR 1
50 HPRINT(4,21),"CHIEF, GET THE COMPUTER CRUSADER,"
60 HPRINT(12,23),"SEND FOR COCO CAT!"
100 HCIRCLE(160,64),32,1,1,.48,.6:HCIRCLE(160,64),32,1,1,.66,.84:HCIRCLE(160,64),32,1,1,.9,.033
200 HDRAW"S10;BM190,68M+7,+2M+3,+3D4M-1,+3M-8,+1M-14,-1M-15,+1M-5,-1M-1,-3M+1,-3M+3,-3M+3,-2M+3,-1
210 HDRAW"BM174,36M+6,-9M-2,+12
220 HDRAW"BM143,39M-6,-9M+3,+12
300 HDRAW"BM157,72U2R3D2L3
310 HDRAW"BM170,56D2L1U2R1BM154,56D2L1U2R1
400 HCIRCLE(160,70),100,1,.70
450 HPAINT(160,120),1,1
500 HCOLOR 0
510 HDRAW"BM207,80M+11,-3M+3,+1BM212,88M+6,+1M+4,+2BM211,98M+5,+2M+2,+2BM112,82M-6,-1M-5,+2BM110,88M-7,+1M-4,+3BM108,96M-6,+4
600 PLAY"L20V31T50O5GBGBGBGBGBGBGBGBGBGBGBGB":FOR QQ=0TO399:NEXT QQ
610 SOUND 90,10
620 GOTO 600
999 RGB
