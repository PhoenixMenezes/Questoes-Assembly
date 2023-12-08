#Q3) Faça um programa que implementa um laço com um teste no inicio que conte de 0 a 10, imprimindo esses numeros um em cada linha da saida.

.text
main: 	
	addi $8, $0, 0 #$8 = i = 0
	addi $9, $0, 10 #$9 = 10
	
cont:	add $4, $0, $8 # $4 recebe $8
	addi $2, $0, 1 #imprime o valor inteiro de $4
      	syscall
      	add $4, $0, '\n' #le um caractere
      	addi $2, $0, 11 #imprime o caracter q esta em #4
      	syscall
      	
      	addi $8, $8, 1 #incrementa $8 (variavel testada) 
      	slt $11, $8, $9 #se ($8,$10) entao $11= 1 senao $11=0
      	bne $11, $0, cont #se $11!=0 cont
      	beq $8,$9, cont #se $8 ==$10 cont
      
fim:  	addi $2, $0, 10
      	syscall
	
