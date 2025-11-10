
MAIN:	   MVI A,01
	   OUT 80
	   CALL DELAY
	   MVI A,04
	   OUT 80
	   CALL DELAY
	   MVI A,03
	   OUT 80
	   CALL DELAY
	   JMP MAIN

DELAY:	   MVI B,FF

L1:	   MVI C,FF

L2:	   DCR C
	   JNZ L2
	   DCR B
	   JNZ L1
	   RET
