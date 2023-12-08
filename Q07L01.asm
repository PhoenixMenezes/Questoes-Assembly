.text

main:		addi $2, $0, 5 #lê um inteiro
		syscall
		add $8, $0, $2 # copia o valor lido para $8
		addi $9, $0, 10 #lê uma constante  inteiro 10
	
dvsdez:		div $8, $9
		mflo $8
		mfhi $10
	
		div $8, $9
		mflo $8
		mfhi $11
	
		div $8, $9
		mflo $8
		mfhi $12
	
		div $8, $9
		mfhi $8
	
print:		add $4, $0, $10
		addi $2, $0, 1 
		syscall 
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		add $4, $0, $11
		addi $2, $0, 1 
		syscall 
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		add $4, $0, $12
		addi $2, $0, 1 
		syscall 
		
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		
		add $4, $0, $8
		addi $2, $0, 1 
		syscall 
		
		addi $2, $0, 10