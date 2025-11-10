	

START:	   MVI A,80
	   SIM
	   EI

MAIN_LOOP:	   MVI A,FF
	   OUT 80
	   CALL DELAY
	   MVI A,00
	   OUT 80
	   CALL DELAY
	   JMP MAIN_LOOP
	

ISR_75:	   MVI A,AA
	   OUT 81
	   CALL DELAY
	   EI
	   RET

DELAY:	   MVI B,0F

D1:	   MVI C,FF

D2:	   DCR C
	   JNZ D2
	   DCR B
	   JNZ D1
	   RET
	
