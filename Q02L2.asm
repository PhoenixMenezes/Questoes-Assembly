.text
main: 		addi $2, $0, 5
      		syscall	        #lê um inteiro
      		add $8, $2, $0   #salva o inteiro em $8
     
      		add $9, $0, $0   #salva zero em $9
      
      		slt $10, $9, $8 # Se $9 < $8 entao $10 <=1 senão $10<=0
    
      		beq $10, $0, negativo_qd # se for falso segue para proximo comando, se verdadeiro pula para o rótulo
      		sll $4, $8, 1
      		addi $2, $0, 1
      		syscall
      		j fim
      
negativo_qd: 	mul $4, $8, $8 
      		addi $2, $0, 1
      		syscall  
      
fim:  		addi $2, $0, 10
      		syscall         
      