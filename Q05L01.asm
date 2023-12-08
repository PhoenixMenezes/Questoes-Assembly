.text
main:	addi $2, $0 ,5
	syscall #le primeiro inteiro
	add $8 ,$0 ,$2	# copia o valor de $2 para $8
	addi $9, $0, 10 
	div $8, $9
	mfhi $20 #resto da divisão
	mflo $8 #quociente da divisão
	div $8, $9
	mfhi $21 #resto da divisão
	mflo $8 #quociente da divisão
	div $8, $9
	mfhi $22 #resto da divisão
	mflo $8 #quociente da divisão
	add $10, $20,$21
	add $10, $10, $22
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	addi $2,$0, 10
	