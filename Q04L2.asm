.text
main: 		addi $2, $0, 5
      		syscall	        #lê um inteiro
      		add $8, $2, $0   #salva o inteiro em $8
      		addi $2, $0, 5
      		syscall          #Lê inteiro (segundo)
      		add $9, $2, $0   #salva o segundo lido inteiro em $9
      
      		slt $10, $9, $8 # Se $9 < $8 entao $10 <=1 (verdade) senão $10<=0(falso)
     	 	beq $8,$9, iguais
     	 	beq $10, $0, maior9 #
     	 	
     	 	
      		
maior8:      	addi $4, $8, 0
      		addi $2, $0, 1
      		syscall
      		addi $4, $0, '>'
		addi $2, $0, 11
		syscall
      		addi $4, $9, 0
      		addi $2, $0, 1
      		syscall
      		j fim
      
maior9: 	addi $4, $8, 0
      		addi $2, $0, 1
      		syscall
      		addi $4, $0, '<'
		addi $2, $0, 11
		syscall
      		addi $4, $9, 0
      		addi $2, $0, 1
      		syscall
      		j fim

iguais:  	addi $4, $8, 0
      		addi $2, $0, 1
      		syscall
      		addi $4, $0, '='
		addi $2, $0, 11
		syscall
      		addi $4, $9, 0
      		addi $2, $0, 1
      		syscall
      		j fim
      		
fim:  		addi $2, $0, 10
      		syscall         
      