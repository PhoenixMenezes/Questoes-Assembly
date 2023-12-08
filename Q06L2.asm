.text

main:  		#Lê a idade em anos
		addi $2, $0, 5
		syscall
		add $8, $0, $2
		# Lê o tempo de serviço em anos
		addi $2, $0, 5
		syscall
		add $9, $0, $2
		
				
		#Verifica se idade maior q a idade minima
		
     	 	slti $10,$8, 65, 
     	 	beq $10, $0, aposenta
     	 	
     	 	#Verifica se tempo de servicoé  maior q o tempo minimo
		slti $10, $9, 40    
     	 	beq $10, $0, aposenta
     	 	
     	 	#OU ter pelo menos 60 anos e mais de 35 anos
     	 	slti $10, $8, 60  # se (idade < 60) $10 = 1; else $10=0
       		bne $10, $0, naoap
       		slti $10, $9, 36  # se (temposerv < 36) $10 = 1; else $10=0
       		bne $10, $0, naoap
     	 	 	
 aposenta: 	addi $4, $0, 'S'
		addi $2, $0, 11
		syscall
		j fim
      		
      		
 naoap:  	addi $4, $0, 'N'
		addi $2, $0, 11
		syscall
		j fim
		

fim:		addi $2, $0, 10
		syscall		