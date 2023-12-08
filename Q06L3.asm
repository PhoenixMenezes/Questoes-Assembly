#Faça um programa que leia numeros inteiros e calcule a soma. 
#O laço do programa termina quando o usuario digita um valor negativo. Em seguida o programa imprime a soma dos valores digitados.

.text
main: 	addi $8, $0, 0 # vari�vel soma
	
cont:	addi $2, $0, 5
	syscall
	
	slt $9, $2, $0 #se ($2<$0) entao $9 = 1, sen�o $9 =0
	bne $9, $0, prnt #se $9==0 cont
	add $8, $8, $2
	
	j cont
	
prnt:	#sub $8, $8, $2 #retira o valor negativo da soma
	add $4, $0, $8
	addi $2, $0, 1
	syscall

fim: 	addi $2, $0, 10
	syscall
	
	
