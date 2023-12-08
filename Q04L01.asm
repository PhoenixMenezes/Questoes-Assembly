.text
main:   addi $2, $0, 5
	syscall 
	add $8, $0, $2 #nota 1
	addi $2, $0, 5
	syscall 
	add $9, $0, $2 #nota 2
	addi $10, $0, 2 #peso da nota 1
	addi $11, $0, 3 #peso da nota 2
	mul $12, $8, $10 #nota 1 x peso
	mul $13, $9, $11 #nota 2 x peso
	add $14, $10, $11 # soma dos pesos
	add $15, $12, $13 # soma das notas multiplicadas ´pelos pesos
	div $16, $15, $14
	mflo $4
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	