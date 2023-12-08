.text

main:		addi $2, $0, 5 #lê um inteiro
		syscall
		add $8, $0, $2 # copia o valor lido para $8
		addi $9, $0, 10 #lê uma constante  inteiro 10
	
dvsdez:		div $8, $9 #divide o inteiro/10
		mflo $8 #quociente da div
		mfhi $20 #resto da divisao U
	
		div $8, $9 #divide o inteiro/10
		mflo $8 #quociente da div
		mfhi $21  #resto da divisao D
	
		div $8, $9 #divide o inteiro /10
		mfhi $8 #resto da divisao C
		
mtpl:		addi $11, $0, 100
		addi $12, $0, 10
		
		mul $14, $20, $11
		mul $15, $21, $12
		
soma:		add $24, $14, $15
		add $24, $24, $8
				
print:		add $4, $0, $24
		addi $2, $0, 1
		syscall
		
		addi $2, $0, 10

		

		