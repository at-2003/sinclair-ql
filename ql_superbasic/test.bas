100 MODE 4
110 WINDOW 512,256,0,0
120 BORDER 0,0
130 PAPER 0
140 INK 4
150 CLS
200 PRINT "WLAN NAME:     ";
210 INPUT N$
220 PRINT "WLAN PASSWORT: ";
230 INPUT P$
340 BAUD 2400
350 OPEN #3, ser2i
360 PRINT #3, N$;
370 PRINT #3, CHR$(26);
380 PRINT #3, P$;
390 PRINT #3, CHR$(26);
391 PRINT : PRINT "WAITING FOR CONNECTION ..."
392 R$ = INKEY$(#3, -1)
393 IF R$ = "F" THEN 
394 PRINT : PRINT "WRONG PASSWORD. RETRY"
395 PAUSE
396 GOTO 150
397 END IF
400 REPeat address
405 PRINT
410 PRINT "ADDRESS: ";
420 INPUT A$;
430 IF A$ = "QUIT" THEN
440 EXIT address
450 END IF
460 PRINT #3, A$;
470 PRINT #3, CHR$(26);
480 REPeat response
490 C$ = INKEY$(#3, -1)
500 IF C$ = CHR$(26) THEN
510 EXIT response
520 END IF
530 PRINT C$;
540 END REPeat response
980 END REPeat address
990 CLOSE #3
1000 WINDOW 256,202,256,0
1010 MODE 4
1020 PAPER 2
1030 INK 6
1040 CLS
1050 LIST
