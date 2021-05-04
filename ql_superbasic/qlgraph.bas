PRINT "EINDIMENSIONALES UNIVERSUM"

DIM RULE%(8)
DIM LFF%(100)
DIM LFC%(100)

INPUT "000: ";RULE%(0)
INPUT "001: ";RULE%(1) 
INPUT "010: ";RULE%(2)
INPUT "011: ";RULE%(3)
INPUT "100: ";RULE%(4)
INPUT "101: ";RULE%(5)
INPUT "110: ";RULE%(6)
INPUT "111: ";RULE%(7)

FOR Y=0 TO 100
	FOR X=0 TO 100
		MDL% = LFF%(X)
		LFT% = 0
		RHT% = 0
		
		IF MDL% = 1 THEN POINT X,Y 		
		IF X-1 > 0 THEN LFT% = LFF%(X-1)
		IF X+1 < 99 THEN RHT% = LFF%(X+1)
		
		IF LFT% = 0 AND MDL% = 0 AND RHT% = 0 THEN
			LFC%(X) = RULE%(0)
		ELSE IF LFT% = 0 AND MDL% = 0 AND RHT% = 1 THEN
			LFC%(X) = RULE%(1)
		ELSE IF LFT% = 0 AND MDL% = 1 AND RHT% = 0 THEN
			LFC%(X) = RULE%(2)
		ELSE IF LFT% = 0 AND MDL% = 1 AND RHT% = 1 THEN
			LFC%(X) = RULE%(3)
		ELSE IF LFT% = 1 AND MDL% = 0 AND RHT% = 0 THEN
			LFC%(X) = RULE%(4)
		ELSE IF LFT% = 1 AND MDL% = 0 AND RHT% = 1 THEN
			LFC%(X) = RULE%(5)
		ELSE IF LFT% = 1 AND MDL% = 1 AND RHT% = 0 THEN
			LFC%(X) = RULE%(6)
		ELSE IF LFT% = 1 AND MDL% = 1 AND RHT% = 1 THEN
			LFC%(X) = RULE%(7)
		END IF
	NEXT X

	FOR I=0 TO 100
		LFF%(I) = LFC%(I)
	NEXT I
NEXT Y
