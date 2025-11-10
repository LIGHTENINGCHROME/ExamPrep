
	   LDA 2000H
	   CALL OCT_BIN	
	   CALL BIN_BCD	
	   STA 2001H
	   HLT


OCT_BIN:   MOV C,A	
	   ANI 0FH		
	   MOV B,A		
	   MOV A,C		
	   ANI 0F0H		
	   RRC			
	   RRC
	   RRC
	   RRC			
	   RLC			
	   RLC			
	   RLC			
	   ADD B		
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