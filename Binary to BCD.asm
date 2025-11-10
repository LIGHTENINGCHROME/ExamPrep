
	   LDA 2000H	
	   MVI B,00H	

LOOP:	   CPI 0AH	
	   JC UNITS		
	   SUI 0AH		
	   INR B		
	   JMP LOOP		

UNITS:	   MOV C,A	
	   MOV A,B		
	   RLC			
	   RLC
	   RLC
	   RLC
	   ADD C		
	   STA 2001H	
	   HLT			