	
	   MVI A,00
	   MVI D,00

MAIN:	   CALL DISPLAY
	   CALL DELAY
	   CPI 00
	   JZ UP_MODE
	   CPI 05
	   JZ DOWN_MODE
	   MOV B,D
	   CPI 00
	   JZ UP
	   JMP DOWN

UP_MODE:	   MVI D,00
	   JMP UP

DOWN_MODE:	   MVI D,01
	   JMP DOWN

UP:	   INR A
	   JMP MAIN

DOWN:	   DCR A
	   JMP MAIN

DISPLAY:	   CPI 00
	   JZ Z0
	   CPI 01
	   JZ Z1
	   CPI 02
	   JZ Z2
	   CPI 03
	   JZ Z3
	   CPI 04
	   JZ Z4
	   CPI 05
	   JZ Z5
	   RET

Z0:	   MVI A,3F
	   JMP SHOW

Z1:	   MVI A,06
	   JMP SHOW

Z2:	   MVI A,5B
	   JMP SHOW

Z3:	   MVI A,4F
	   JMP SHOW

Z4:	   MVI A,66
	   JMP SHOW

Z5:	   MVI A,6D
	   JMP SHOW

SHOW:	   OUT 80
	   MVI A,01
	   OUT 81
	   RET

DELAY:	   MVI B,FF

L1:	   DCR B
	   JNZ L1
	   RET
	
