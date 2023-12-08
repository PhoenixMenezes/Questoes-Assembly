.text
main:	addi $2, $0 ,5
	syscall #le primeiro inteiro (hora)
	add $8 ,$0 ,$2	# copia o valor de $2 para $8
	
	addi $2, $0 ,5
	syscall #le segundo inteiro (minuto)
	add $9 ,$0 ,$2	# copia o valor de $2 para $9
	
	addi $2, $0 ,5
	syscall #le terceiro inteiro (segundo)
	add $10 ,$0 ,$2	# copia o valor de $2 para $10
	
	addi $11, $0, 3600
	addi $12, $0, 60
	
	mul $13, $8, $11
	mul $14, $9, $12
	
	add $15, $13, $14
	add $15, $15, $10
	
	add $4, $0, $15
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10