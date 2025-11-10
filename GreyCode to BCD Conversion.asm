
	   LDA 2000H		
	   CALL GRAY_BIN	
	   CALL BIN_BCD		
	   STA 2001H		
	   HLT

GRAY_BIN:  MOV B,A		
	   MVI C,07H	

LOOP:	   MOV A,B	
	   RRC			
	   XRA B		
	   MOV B,A		
	   DCR C
	   JNZ LOOP
	   MOV A,B		
	   RET


BIN_BCD:   MVI C,00H
	   MOV B,A		

LOOP_BCD:  CPI 0AH	
	   JC BCD_UNITS	
	   SUI 0AH		
	   INR C		
	   JMP LOOP_BCD	

BCD_UNITS: MOV B,A	
	   MOV A,C		
	   RLC			
	   RLC
	   RLC
	   RLC
	   ADD B		
	   RET