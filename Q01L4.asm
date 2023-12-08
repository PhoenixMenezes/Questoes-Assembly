#Crie uma função que recebe como parâmetro um número inteiro e devolve o seu dobro. 
. text
main:	addi $2, $0, 5 
	syscall
	add $8, $0, $2
	add $4, $0, $8
	jal dobro
	
	add $4, $0, $2
	addi $2, $0, 1
	syscall
	
fim:	addi $2, $0, 10
	syscall
	
#Função dobro
#Entradas: $4
#Saidas: $2
#Tipo: folha
#Registradores alterados:

dobro:	sll $2, $4, 1
	jr $31