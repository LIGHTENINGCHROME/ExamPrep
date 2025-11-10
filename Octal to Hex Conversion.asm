
	   LDA 2000H	
	   CALL OCT_BIN	
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