#Trabalho-ARM
		ADD		R1,R1, #1 ; n
		ADD		R4,R4, #2147483648	;coloca em R6 o valor para TST
		ADD		R6,R6, #5 ;numero base (a1)
		ADD		R7,R7, #500 ; RX*10
		STR		R6,[R7,#0] ; armazena o numero base no endereço #500
		
		
		
FOR
		CMP		R1, #10 ; se R1 é menor que 10 continua o loop
		BEQ		DONE
		LSL		R6, R6, #1  ;armazena os valores da pg
		ADD		R7,R7, #4  ;desloca 4 bytes
		STR		R6, [R7, #0] ;armazena o conteúdo de R6 no endereço de R7
		ADD		R1, R1, #1  ;n=n+1
		TST		R4, R6 ;testa se o valor de R6 é inferior a 2147483648
		B		FOR
DONE
		LDR		R5,[R7,#0] ; armazena o ultimo valor da PG em R5
