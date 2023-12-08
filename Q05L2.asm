.text 

main:
		# Realiza a leitura da primeira nota (0 .. 100)
		addi $2, $0, 5
		syscall
		add $8, $0, $2
		# Realiza a leitura da segunda nota (0 .. 100)
		addi $2, $0, 5
		syscall
		add $9, $0, $2
		# Realiza a leitura da pterceira nota (0 .. 100)
		addi $2, $0, 5
		syscall
		add $10, $0, $2
	
		#multiplicação das notas pelo peso
		sll $9, $9, 1
		sll $11, $10, 1
		add $11, $11, $10
	
		# Soma as notas
		add $12, $8, $9
		add $12, $12, $11
	
		#calculo da media
		addi $13, $0, 6
		div $12, $13
		mflo $14
	
		# Verifica se a media das notas é maior ou igual a 60
		addi $15, $0, 60
		bge $14, $15, aprovado
		j reprovado
	
aprovado:
		add $4, $0, $14
		addi $2, $0, 1 
		syscall 
		
		addi $4, $0, 'A'
		addi $2, $0, 11
		syscall
		j fim
	
reprovado:
		add $4, $0, $14
		addi $2, $0, 1 
		syscall 
		
		addi $4, $0, 'R'
		addi $2, $0, 11
		syscall
		j fim
	
fim:
		addi $2, $0, 10
		syscall
		nop