
	   LXI H,8000
	   MVI M,67
	   INX H
	   MVI M,03
	   MVI C,01
	   MVI D,20
	   MVI A,80
	   OUT 83

MAIN:	   LXI H,8000
	   CALL MOVE
	   CALL DELAYL
	   JMP MAIN

MOVE:	   MVI B,02

NEXTD:	   MOV A,M
	   OUT 80
	   MOV A,C
	   OUT 81
	   INX H
	   RLC
	   MOV C,A
	   CPI 04
	   JZ RESET
	   CALL DELAYS
	   DCR B
	   JNZ NEXTD
	   RET

RESET:	   MVI C,01
	   RET

DELAYL:	   MVI E,FF

DL1:	   DCR E
	   JNZ DL1
	   DCR D
	   JNZ DELAYL
	   RET

DELAYS:	   MVI E,50

DS1:	   DCR E
	   JNZ DS1
	   RET
