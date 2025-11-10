
	   LDA 2000H
	   CALL BCD_BIN	
	   CALL BIN_OCT	
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
BIN_OCT:   MOV B,A	
	   MVI C,00H	
	   MVI D,02H    

LOOP:	   MOV A,B
	   ANI 07H		
	   ADD C        
	   RRC			
	   RRC
	   RRC
	   MOV C,A		
	   MOV A,B		
	   RRC			
	   RRC
	   RRC
	   MOV B,A		
	   DCR D
	   JNZ LOOP
	   MOV A,C
	   RET