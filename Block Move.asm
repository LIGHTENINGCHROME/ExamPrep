
	   LXI H,2000H	
	   LXI D,3000H	
	   MVI C,03H	

LOOP:	   MOV A,M	
	   STAX D		
	   INX H		
	   INX D		
	   DCR C		
	   JNZ LOOP		
	   HLT