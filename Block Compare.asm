
	   LXI H,2000H	
	   LXI D,3000H	
	   MVI C,03H	

LOOP:	   MOV A,M	
	   LDAX D		
	   MOV B,A		
	   MOV A,M		
	   CMP B		
	   JNZ NOTEQUAL	
	   INX H		
	   INX D		
	   DCR C		
	   JNZ LOOP		
	   JMP EQUAL	

NOTEQUAL: HLT		

EQUAL:	   HLT		