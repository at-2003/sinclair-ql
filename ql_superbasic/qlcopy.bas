90 CLS
100 PRINT "SERIAL TERMINAL"
110 PRINT "BAUDRATE: ";
120 INPUT A%
130 BAUD A%
140 OPEN #3, ser2i
145 REMark PRINT #3, "Connection Test"
150 PRINT "RECEIVE/TRANSMIT? (r/t) ";
160 INPUT A$
170 IF A$="T" OR A$="t" THEN 
180 PRINT "ASCII/BINARY/QUIT? (a/b/q) ";
300 CLOSE #3
