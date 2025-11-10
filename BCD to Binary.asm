
	   LDA 2000H	
	   MOV B,A		
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
	   STA 2001H	
	   HLT			