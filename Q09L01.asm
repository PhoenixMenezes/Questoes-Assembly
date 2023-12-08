.text

main:	addi $2, $0 ,5
	syscall #le um inteiro (segundos)
	add $8 ,$0 ,$2	# copia o valor de $2 para $8
	addi $9, $0, 3600 
	addi $10, $0, 60
	
	div $8, $9 #divide os segundos por 3600 para encontrar a hora
	mflo $11 # quociente da divisão (hora)
	mfhi $8 # resto da divisão
	
	div $8, $10
	mflo $12 # minuto
	mfhi $8 #segundo

print:	add $4, $0, $11
	addi $2, $0, 1 #imprime a hora
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
		
	add $4, $0, $12
	addi $2, $0, 1  # imprime minuto
	syscall
	
	addi $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $8
	addi $2, $0, 1  # imprime segundo
	syscall
	
	addi $2, $0, 10