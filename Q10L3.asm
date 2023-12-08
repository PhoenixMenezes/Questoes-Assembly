#Faça um programa para calcular o MDC de dois números fornecidos pelo usuário, usando o algoritmo de Euclides 
#(busque na Internet o funcionamento desse algoritmo).
.text
main: 	addi $2, $0, 5
 	syscall
 	add $8, $0, $2 #X
 
 	addi $2, $0, 5
 	syscall
 	add $9, $0, $2 #Y
 
 	j calc
 
guard: 	add $12, $0, $11
divi: 	div $9, $12
	 mflo $10
	 mfhi $11
	 j comp2
 
calc: 	div $8, $9
 	mflo $10
 	mfhi $11 
 
comp: 	beq $11, $0, print1
 	j guard
 
comp2: 	beq $11, $0, print2
 	j guard
 
print1: add $4, $0, $9
 	addi $2, $0, 1
 	syscall
 	j fim
 
print2: add $4, $0, $12
 	addi $2, $0, 1
	syscall
 
fim: 	addi $2, $0, 10
 	syscall
