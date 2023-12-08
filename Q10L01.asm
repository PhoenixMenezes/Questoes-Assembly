.text

main:	addi $2, $0, 12
	syscall   # lê um char
	add $8, $0, $2 #copia $2 para $8
	add $9,$0, 32 #add constante 32
	sub $10, $8, $9
	add $4, $0, $10
	
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	