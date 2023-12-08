.text

main:	addi $2, $0, 5 # Lê primeiro inteiro
	syscall
	add $8, $0, $2 # copia o inteiro 1 pro $8
	
	addi $2, $0, 5 # Lê segundo inteiro
	syscall
	add $9, $0, $2 # copia o inteiro 2pro $9
	
	addi $2, $0, 5 # Lê terceiro inteiro
	syscall
	add $10, $0, $2 # copia o inteiro 3 pro $10
	
	addi $11, $0, 3 #add o peso 3 em #11
	addi $12, $0, 9 #add o peso 9 em #12
	addi $13, $0, 15 #add o peso 15 em #13
	
dlc:	sll $16, $8, 1
	add $16, $16, $8 #primeiro valor com o peso 3
	
	sll $17, $9, 1 # x2
	add $17, $17, $9 # x3
	add $17, $17, $9 # x4
	add $17, $17, $9 # x5
	add $17, $17, $9 # x6
	add $17, $17, $9 # x7
	add $17, $17, $9 # x8
	add $17, $17, $9 #  primeiro valor com peso 9
	
	sll $18, $9, 1 # x2
	add $18, $18, $10 # x3
	add $18, $18, $10 # x4
	add $18, $18, $10 # x5
	add $18, $18, $10 # x6
	add $18, $18, $10 # x7
	add $18, $18, $10 # x8
	add $18, $18, $10 # x9
	add $18, $18, $10 # x10
	add $18, $18, $10 # x11
	add $18, $18, $10 # x12
	add $18, $18, $10 # x13
	add $18, $18, $10 # x14
	add $18, $18, $10 # terceiro valor com peso x15
	
	add $19, $16, $17
	add $19, $19, $18 # soma dos valores (x os pesos)
	
	add $14, $11, $12
	add $14, $14, $13 # soma dos pesos
	
media:	div $19, $14
	mflo $15
	add $4, $0, $15
	addi $2, $0,1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
	
	