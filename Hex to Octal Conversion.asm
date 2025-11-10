
	   LDA 2000H
	   CALL BIN_OCT	
	   STA 2001H
	   HLT

BIN_OCT:   MOV B,A	
	   MVI C,00H	
	   MVI D,02H	

LOOP:	   MOV A,B	
	   ANI 07H		
	   ORA C		
	   MOV C,A		
	   
	   MOV A,B		
	   RRC			
	   RRC
	   RRC
	   MOV B,A		
	   
	   MOV A,C		
	   RRC			
	   RRC
	   RRC
	   RRC
	   MOV C,A      
	   
	   DCR D
	   JNZ LOOP
	   
	   MOV A,C		
	   RRC			
	   RRC
	   RRC
	   RRC
	   RET