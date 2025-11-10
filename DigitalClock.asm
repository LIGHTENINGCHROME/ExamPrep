	   MVI B,00
	   MVI C,00
	   MVI D,00
	   LXI H,E15C

MAIN:	   CALL DISPLAY
	   CALL DELAY
	   INR B
	   MOV A,B
	   CPI 3C
	   JNZ MAIN
	   MVI B,00
	   INR C
	   MOV A,C
	   CPI 3C
	   JNZ MAIN
	   MVI C,00
	   INR D
	   MOV A,D
	   CPI 3C
	   JNZ MAIN
	   MVI D,00
	   JMP MAIN

DELAY:	   CALL DELAYC
	   DCX H
	   MOV A,H
	   ORA L
	   JNZ DELAY
	   LXI H,E15C
	   RET

DELAYC:	   RET

DISPLAY:	   MOV A,B
	   OUT 01
	   MOV A,C
	   OUT 02
	   MOV A,D
	   OUT 03
