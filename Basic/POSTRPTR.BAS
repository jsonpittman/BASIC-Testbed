1 PCLEAR1:CLEAR2000:DIMA(98,6),L(90,9),A$(11),B$(11),PC(11),LC(11)
2 POKE150,18:GOSUB250:Z$=STRING$(30,32)
3 CLS:LOCATE9,0:ATTR3,2:PRINT"PRINT THIS <";:ATTR3,2,B:PRINT"Y";:ATTR3,2:PRINT"> OR <";:ATTR3,2,B:PRINT"N";:ATTR3,2:PRINT">O";:ATTR1,0:LOCATE38,0
4 FORD=1TO11:PC(D)=VAL(B$(D)):LC(D)=LEN(A$(D)):IFPC(D)=8THENB$(D)="08"
5 D$=STR$(D):IFVAL(D$)<=9THEND$="0"+RIGHT$(D$,1)ELSED$=RIGHT$(D$,2)
6 K$="Line:"+D$+".("+B$(D)+"): "+A$(D):LOCATE2,(D*2):ATTR0,0:PRINTK$:NEXTD:ATTR1,0:LOCATE38,22
7 ATTR0,0:P$=INKEY$:IFP$="Y"THEN8ELSEIFP$="N"THEN256ELSE7
8 PRINT#-2:PRINT#-2:LOCATE8,0:PRINTZ$:LOCATE8,0:ATTR3,2,B:PRINT"N O W   P R I N T I N G";:ATTR1,0:LOCATE38,0:ATTR1,0:GOTO14
9 S=64:CLS:PRINT@4,"PRINT THIS <Y>ES OR <N>0":PRINT@32,STRING$(32,45);:FORD=1TO11:PC(D)=VAL(B$(D)):LC(D)=LEN(A$(D)):IFPC(D)=8THENB$(D)="08"
10 D$=STR$(D):IFVAL(D$)<=9THEND$="0"+RIGHT$(D$,1)ELSED$=RIGHT$(D$,2)
11 S=S+32:PRINT@S,D$;".(";B$(D);"):";A$(D):NEXTD
12 P$=INKEY$:IFP$="Y"THEN13ELSEIFP$="N"THEN273ELSE12
13 PRINT#-2:PRINT#-2:PRINT@4,"N O W    P R I N T I N G";
14 FORD=1TO11:PRINT#-2,CHR$(27);CHR$(28);CHR$(27);CHR$(15);CHR$(27);CHR$(85);CHR$(0);
15 DQ=0:IFPC(D)=8THENGOSUB302ELSEIFPC(D)=13THENGOSUB304ELSEIFPC(D)=16THENGOSUB306ELSEIFPC(D)=22THENGOSUB307
16 FORT=1TO9:PRINT#-2,CHR$(27);CHR$(16);CHR$(DQ);CHR$(DP);:FORQ=1TOLEN(A$(D)):FORY=1TO6
17 IFA$(D)=""THENFORI=1TO11:PRINT#-2:NEXTI:GOTO23
18 IFA$(D)=CHR$(95)ANDCT=1THEN28ELSEIFA$(D)=CHR$(95)ANDCT=0THEN24
19 V=ASC(MID$(A$(D),Q,1))-32:IF V=0 THEN PRINT#-2,CHR$(32);:GOTO21
20 PRINT#-2,CHR$(A(L(V,T),Y));
21 NEXTY:NEXTQ
22 PRINT#-2:NEXTT:PRINT#-2:PRINT#-2
23 NEXTD:FORT=1TO9:PRINT#-2:NEXT:CLS:FORT=1TO10:SOUND180,1:NEXTT:IFCT=1THEN28ELSE24
24 CLS:LOCATE5,3:ATTR3,2:PRINT"YOU HAVE THE FOLLOWING OPTIONS";:ATTR1,0:LOCATE38,0
25 LOCATE9,8:ATTR0,0:PRINT"1. PRINT ANOTHER COPY":LOCATE9,10:PRINT"2. START A NEW POSTER":LOCATE9,12:PRINT"3. QUIT":LOCATE9,16:ATTR3,2,B:PRINT"PRESS NUMBER DESIRED";:ATTR1,0:LOCATE38,16
26 ATTR0,0:P$=INKEY$:IFP$=""THEN26ELSEP=INSTR(1,"123",P$):CLS:IFP=1THEN3ELSEIFP=2THEN27ELSEIFP=3THENWIDTH32:ENDELSE26
27 FORT=1TO11:FORM=1TO11:A$(M)="":B$(M)="":NEXTM:GOTO256
28 WIDTH32:PRINT@33,"YOU HAVE THE FOLLOWING OPTIONS":PRINT@64,STRING$(32,42);:PRINT@165,"1. PRINT ANOTHER COPY":PRINT@229,"2. START A NEW POSTER":PRINT@293,"3. QUIT"
29 P$=INKEY$:IFP$=""THEN29ELSEP=INSTR(1,"123",P$):CLS:IFP=1THEN9ELSEIFP=2THEN30ELSEIFP=3THENENDELSEEND
30 FORM=1TO11:A$(M)="":B$(M)="":NEXTM:GOTO273
100 ' Graphics blocks data
101 DATA 252,239,239,239,254,224,236,239,239,239,254,224,239,224,224,224,239,224,253,239,239,239,251,224,224,224,224,253,239,224,239,251,224,224,224,224,239,239,239,239,239,224,234,233,224,224,239,224
102 DATA 239,239,239,224,224,224,239,224,224,239,239,224,224,224,224,224,224,224,224,224,239,224,224,224,238,239,239,239,251,224,239,224,224,224,224,224,224,224,224,224,239,224,254,224,224,224,239,224
103 DATA 234,239,239,239,239,224,239,224,224,252,239,224,239,224,252,251,224,224,239,252,251,224,224,224,239,239,254,224,224,224,239,224,253,254,224,224,239,224,224,253,254,224,239,254,224,252,239,224
104 DATA 239,253,239,251,239,224,239,224,239,224,239,224,239,254,224,224,239,224,239,253,254,224,239,224,239,224,253,254,239,224,239,224,224,253,239,224,239,239,239,239,251,224,224,224,224,224,253,254
105 DATA 253,239,239,239,239,224,253,239,239,239,254,224,253,254,224,252,251,224,224,253,239,251,224,224,239,254,239,252,239,224,224,252,239,254,224,224,252,251,224,253,254,224,224,224,224,252,251,224
106 DATA 224,224,252,251,224,224,224,252,251,224,224,224,252,251,224,224,224,224,252,239,239,239,239,224,239,239,239,239,254,224,224,224,252,239,239,224,224,239,239,239,224,224,224,239,239,224,224,224
107 DATA 252,251,253,254,224,224,239,252,239,239,254,224,239,251,224,224,239,224,239,251,239,224,239,224,239,232,232,232,232,224,231,231,231,231,239,224,252,239,239,254,239,224,239,224,224,239,239,224
108 DATA 253,239,239,251,239,224,224,224,224,253,254,224,239,232,232,232,239,224,239,231,231,231,231,224,224,239,224,224,252,224,224,253,239,239,251,224,224,239,224,224,224,224,239,224,239,252,239,224
109 DATA 224,224,224,239,224,224,254,224,224,239,224,224,253,239,239,251,224,224,224,239,224,239,224,224,239,224,239,224,224,224,224,224,239,224,239,224,235,236,224,224,252,224,237,238,224,252,251,224
110 DATA 252,251,224,235,236,224,251,224,224,237,238,224,239,224,224,252,253,224,224,224,252,239,224,224,224,224,253,239,224,224,224,253,254,224,224,224,224,239,254,224,224,224,224,224,253,254,224,224
111 DATA 224,239,251,224,224,224,253,254,239,252,251,224,252,251,239,253,254,224,224,224,224,224,252,224,251,224,224,224,224,224,252,239,239,239,251,224,239,224,224,239,224,224,239,224,252,239,239,224
112 DATA 239,224,253,239,251,224,253,254,224,224,224,224,251,224,224,252,251,224,251,224,239,224,253,224,254,224,224,224,252,224,251,224,224,224,253,224,239,251,224,253,239,224,239,252,239,254,239,224,254,224,224,224,224,224,224,224,224,224,253,224
150 ' Characters data
151 DATA 12,12,12,12,12,11,12,11,11
152 DATA 68,68,68,11,11,11,11,11,11
153 DATA 68,68,7,68,7,68,68,11,11
154 DATA 12,1,69,34,70,4,12,11,11
155 DATA 11,71,72,41,42,73,74,11,11
156 DATA 38,68,36,38,39,75,67,11,11
157 DATA 63,43,11,11,11,11,11,11,11
158 DATA 76,42,63,63,63,78,77,11,11
159 DATA 79,80,65,65,65,41,81,11,11
160 DATA 11,11,11,82,36,38,83,11,11
161 DATA 11,11,12,12,7,12,12,11,11
162 DATA 11,11,11,11,11,11,63,43,11
163 DATA 11,11,11,11,7,11,11,11,11
164 DATA 11,11,11,11,11,11,63,11,11
165 DATA 11,84,40,41,42,43,85,11,11
166 DATA 1,3,3,3,3,3,4,11,11
167 DATA 48,12,12,12,12,12,47,11,11
168 DATA 1,15,15,86,14,14,7,11,11
169 DATA 1,15,15,17,15,15,4,11,11
170 DATA 87,87,87,33,65,65,65,11,11
171 DATA 7,14,14,34,15,15,4,11,11
172 DATA 1,14,14,45,3,3,4,11,11
173 DATA 7,40,41,42,43,14,14,11,11
174 DATA 1,3,3,7,3,3,4,11,11
175 DATA 1,3,3,33,15,15,4,11,11
176 DATA 11,11,11,12,11,11,12,11,11
177 DATA 11,11,11,12,11,11,12,42,11
178 DATA 40,41,42,63,78,80,58,11,11
179 DATA 11,11,11,7,11,11,7,11,11
180 DATA 78,80,58,15,40,41,42,11,11
181 DATA 1,3,91,41,12,11,12,11,11
182 DATA 1,3,88,26,89,90,36,11,11
183 DATA 1,3,3,7,3,3,3,11,11
184 DATA 2,8,8,17,8,8,13,11,11
185 DATA 1,3,14,14,14,3,4,11,11
186 DATA 2,8,8,8,8,8,13,11,11
187 DATA 1,3,14,9,14,3,4,11,11
188 DATA 1,3,14,9,14,14,14,11,11
189 DATA 1,3,14,14,10,3,4,11,11
190 DATA 3,3,3,7,3,3,3,11,11
191 DATA 47,12,12,12,12,12,47,11,11
192 DATA 5,15,15,15,16,3,4,11,11
193 DATA 18,19,20,21,22,23,3,11,11
194 DATA 6,14,14,14,14,3,4,11,11
195 DATA 93,24,25,26,3,3,3,11,11
196 DATA 3,27,28,29,30,3,3,11,11
197 DATA 1,3,3,3,3,3,4,11,11
198 DATA 1,3,3,31,14,14,14,11,11
199 DATA 1,3,3,3,3,29,33,32,11
200 DATA 1,3,3,31,22,23,3,11,11
201 DATA 1,14,14,34,15,15,4,11,11
202 DATA 7,12,12,12,12,12,12,11,11
203 DATA 3,3,3,3,3,3,4,11,11
204 DATA 3,3,3,3,3,35,36,11,11
205 DATA 3,3,3,26,96,95,94,11,11
206 DATA 3,35,36,12,38,39,3,11,11
207 DATA 93,35,36,12,12,12,12,11,11
208 DATA 7,40,41,42,43,14,7,11,11
209 DATA 47,63,63,63,63,63,47,11,11
210 DATA 11,97,90,78,80,58,98,11,11
211 DATA 47,65,65,65,65,65,47,11,11
212 DATA 38,83,92,12,12,12,12,11,11
213 DATA 0,0,0,0,0,0,0,0,0
214 DATA 0,0,0,0,0,0,0,0,0
215 DATA 11,11,11,58,55,56,57,11,11
216 DATA 14,14,14,45,3,3,4,11,11
217 DATA 11,11,11,1,14,14,4,11,11
218 DATA 15,15,15,44,3,3,4,11,11
219 DATA 11,11,11,1,59,60,4,11,11
220 DATA 46,12,12,47,12,12,12,11,11
221 DATA 11,11,11,1,3,3,33,15,4
222 DATA 14,14,14,50,51,3,3,11,11
223 DATA 11,12,11,48,12,12,47,11,11
224 DATA 11,65,11,65,65,65,65,66,67
225 DATA 14,14,18,19,9,22,23,11,11
226 DATA 48,12,12,12,12,12,47,11,11
227 DATA 11,11,11,50,52,26,26,11,11
228 DATA 11,11,11,50,51,3,3,11,11
229 DATA 11,11,11,1,3,3,4,11,11
230 DATA 11,11,11,1,3,3,31,14,14
231 DATA 11,11,11,1,3,3,33,15,15
232 DATA 11,11,11,50,51,14,14,11,11
233 DATA 11,11,11,1,53,54,4,11,11
234 DATA 63,63,63,9,63,61,62,11,11
235 DATA 11,11,11,3,3,18,57,11,11
236 DATA 11,11,11,3,3,35,36,11,11
237 DATA 11,11,11,26,26,64,57,11,11
238 DATA 11,11,11,35,36,38,39,11,11
239 DATA 11,11,11,3,3,18,57,15,62
240 DATA 11,11,11,31,41,42,44,11,11
250 CLS3:PRINT@0," BULLETIN BOARD POSTER PRINTER":PRINT@32,STRING$(32,42);:PRINT@102,"FOR COLOR COMPUTERS";:PRINT@134,"   I - II - III    ";:PRINT@166,"AND DMP-130 PRINTER";:PRINT@229,"BY: GEORGE QUELLHORST";
251 PRINT@288,"INDICATE WHICH COMPUTER YOU HAVE":PRINT@325,"  PRESS <1> <2> <3>  ":PRINT@384,"IF YOUR MACHINE DOES NOT OPERATE";:PRINT@416,"WITH THE SPEED-UP POKE,(65495,0)":PRINT@455,"YOU MUST PRESS <1>"
252 P$=INKEY$:IFP$=""THEN252ELSEIFP$="1"THENCLS:GOTO253ELSEIFP$="2"THENCLS:GOTO254ELSEIFP$="3"THENCLS:GOTO255ELSE252
253 PRINT@259,"LOADING DATA  PLEASE WAIT":GOSUB279:GOTO273
254 POKE65495,0:PRINT@259,"LOADING DATA  PLEASE WAIT":GOSUB279:GOTO273
255 POKE65497,0:WIDTH40:PALETTERGB:CLS1:LOCATE7,12:ATTR0,0:PRINT"LOADING DATA   PLEASE WAIT":ATTR1,0:LOCATE38,12:GOSUB279:GOTO256
256 G=0:POKE282,0:WIDTH80:PALETTERGB:PALETTE1,0:CLS2:LOCATE11,0:ATTR3,2:PRINT"S E L F    C E N T E R I N G    P O S T E R    P R I N T E R";:ATTR2,1:LOCATE78,0:ATTR3,1
257 FORF=2TO12STEP2:G=G+1:LOCATE5,F:PRINTG;:H=G+6:IFH=12THEN258ELSELOCATE40,F:PRINTH:NEXTF
258 LOCATE3,15:ATTR3,2:PRINT"   Input the amount of characters for line number one and press ENTER.    ";:ATTR3,1
259 LOCATE3,16:ATTR3,2:PRINT"The following line lengths are available: < 8 > - < 13 > - < 16 > - < 22 >";:ATTR3,1
260 LOCATE3,17:ATTR3,2:PRINT"You must stay within the [brackets ]. Press ENTER before the last bracket.";:ATTR3,1
261 LOCATE8,19:ATTR3,3:PRINT"Press ENTER immediatly after the message to center your message.";:ATTR3,1
262 LOCATE8,20:ATTR3,3:PRINT"   Press ENTER just before the last bracket to left justify.    ";:ATTR3,1
263 LOCATE10,22:ATTR3,2:PRINT"ENTER ANY LINE LENGTH AND PRESS ENTER-ENTER FOR AN EMPTY LINE.";:ATTR3,1
264 LOCATE10,23:ATTR3,2:PRINT"   ENTER ANY LINE LENGHT AND SHIFT/UP - ENTER TO QUIT INPUT   ";:ATTR3,1
265 ATTR3,1:G=1:B=9:C=13:FORF=2TO12STEP2:GOTO267
266 G=7:FORF=2TO12STEP2
267 LOCATEB,F:LINEINPUT"";B$(G):IFG<6THENLOCATE40,F:IFG+6<12THENPRINTG+6
268 A=VAL(B$(G)):IFA<>8 ANDA<>13 ANDA<>16 ANDA<>22 THENLOCATEB,F:PRINTSTRING$(25,32);:GOTO267
269 A=A+C:LOCATEA,F:PRINT"]";:LOCATEB+2,F:PRINT"[";:LINEINPUT"";A$(G):IFA$(G)=CHR$(95)THEN272ELSELOCATEA,F:PRINT"]":IFG+6<12THENLOCATE40,F:PRINTG+6
270 G=G+1:IFG=12THEN272ELSENEXTF
271 B=B+35:C=48:GOTO266
272 PALETTERGB:WIDTH40:CLS1:ATTR0,0:POKE282,255:POKE65496,0:GOTO3
273 CLS:POKE282,0:PRINT@1,"SELF CENTERING POSTER PRINTER":PRINT@32,STRING$(32,42);
274 S=96:FORF=1TO11:PRINT@S,F:S=S+32:NEXTF:PRINT@481,"LINE WIDTHS ARE: [8-13-16-22]";:S=100:FORF=1TO11
275 PRINT@S,"";:LINEINPUT"";B$(F):A=VAL(B$(F)):IFA<>8ANDA<>13ANDA<>16ANDA<>22THENPRINT@S,STRING$(25,32):GOTO275ELSEPRINT@S+2,"["
276 A=(A+S+4):PRINT@A,"]";:PRINT@S+3,"";:LINEINPUT"";A$(F):IFA$(F)=CHR$(95)THEN278ELSEPRINT@A,"]"
277 S=S+32:NEXTF
278 POKE282,255:POKE65494,0:CT=1:GOTO9
279 FORX=1TO98:FORY=1TO6:READ A(X,Y):NEXT:NEXT:FORX=1TO90:FORY=1TO9:READL(X,Y):NEXT:NEXT:RETURN
300 'Printer codes gosubs
301 PRINT#-2,CHR$(27);CHR$(29);CHR$(27);CHR$(14);:DP=INT((576-(LC(D)*72))/2):RETURN' 8 Characters double strike.
302 PRINT#-2,CHR$(27);CHR$(23);CHR$(27);CHR$(14);:DP=INT((576-(LC(D)*72))/2):RETURN' 8 Characters single strike
303 PRINT#-2,CHR$(27);CHR$(18);:DP=INT((480-(LC(D)*36))/2):RETURN' 13 Double st.
304 PRINT#-2,CHR$(27);CHR$(19);:DP=INT((480-(LC(D)*36))/2):RETURN' 13 Single st.
305 PRINT#-2,CHR$(27);CHR$(29);:DP=INT((576-(LC(D)*36))/2):IFDP>255THENDQ=1:DP=DP-255:RETURNELSERETURN' 16 Double str.
306 PRINT#-2,CHR$(27);CHR$(23);:DP=INT((576-(LC(D)*36))/2):IFDP>255THENDQ=1:DP=DP-255:RETURNELSERETURN'16 Single st.
307 PRINT#-2,CHR$(27);CHR$(23);CHR$(27);CHR$(20);:DP=INT((960-(LC(D)*42))/2):IFDP>255THENDQ=1:DP=DP-255:RETURNELSERETURN
