# Trabalho-ARM
	
		MOV		R0, #1 ; a1
		MOV		R1, #0 ; n
		MOV       R2, #0 ; an
		MOV       R3, #2 ; q
		
FOR
		CMP		R1, #10
		BEQ		DONE
		 		R1, R1, R0
		ADD		R0, R0, #1
		B		FOR
DONE
