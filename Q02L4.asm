#Faça uma função para verificar se um número é positivo ou negativo. 
#Sendo que o valor de retorno será 1 se positivo, -1 se negativo e 0 se for igual a 0. 


. text
main:	addi $2, $0, 5 
	syscall
	add $8, $0, $2
	add $4, $0, $8
	jal negpoz
	
	add $4, $0, $2
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
#Função negpoz
#Entradas: $4
#Saidas: $2
#Tipo: folha
#Registradores alterados:

negpoz:	beq $4, $0, zero
	bgtz $4, maior
	addi $2, $0, -1
	j fim

zero:	addi $2, $0, 0
	j fim
	
maior:	addi $2, $0, 1
	j fim
	
fim:	jr $31