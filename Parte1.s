# Trabalho-ARM
	
		MOV	  R0, #1 ; a1
		MOV	  R1, #1 ; n
		MOV       R2, #0 ; an
		MOV       R3, #2 ; q
		
FOR
		CMP		R1, #10
		BEQ		DONE
		LSL 		R3, R3, #1
		ADD		R1, R1, #1
		B		FOR
DONE
