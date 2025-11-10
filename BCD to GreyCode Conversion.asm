
	   LDA 2000H	
	   CALL BCD_BIN	
	   MOV B,A		
	   RRC			
	   XRA B		
	   STA 2001H	
	   HLT
BCD_BIN:   MOV B,A	
	   ANI 0FH		
	   MOV C,A		
	   MOV A,B		
	   ANI 0F0H		
	   RRC			
	   RRC
	   RRC
	   RRC
	   MOV D,A		
	   RLC			
	   RLC			
	   ADD D		
	   RLC			
	   ADD C		
	   RET			