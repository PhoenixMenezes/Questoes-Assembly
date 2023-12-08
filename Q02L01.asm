.text 
main: 	addi $2,$0,5
	syscall 
	sll $8,$2, 1
	add $4,$0,$8
	addi $2,$0,1
	syscall
	addi $2,$0,10
