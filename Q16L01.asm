.text 
main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	andi $9, $8, 1
	
	
	addi $10, $0, -1
	mul $4, $9, $10
	addi $2, $0, 1
	syscall
	
	
