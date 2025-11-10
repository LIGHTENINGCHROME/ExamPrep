
	   LDA 8051H	
	   MOV B,A		
	   LDA 8050H	
	   MVI C,00H	

LOOP:	   CMP B	
	   JC END		
	   SUB B		
	   INR C		
	   JMP LOOP		

END:	   STA 8053H
	   MOV A,C		
	   STA 8052H	
	   HLT			