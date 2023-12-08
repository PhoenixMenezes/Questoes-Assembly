#Faça um programa que solicite ao usuário um numero para ser a referencia e outro 
#para ser a quantidade de valores a ser impresso no caso do programa da Q1. 
#Para a mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text
main: 	addi $8, $0, 1 
      	addi $2, $0, 5 #lê um inteiro referencia
      	syscall       # recebe o inteiro referência
      	add $9, $0, $2  #$9 = variavel refe~encia
      	addi $2, $0, 5 #Lê um inteiro qtde
      	syscall        #recebe inteiro qtde
      	add $10 $0, $2 #$10 = variavel qtde
      
cont: 

	mult $8, $9 #multplica $8 e $9
      	mflo $4 #resultado da multiplicação
    	addi $2, $0, 1 #imprime o valor inteiro de $4
      	syscall
      	add $4, $0, '/' #lê um caractere
      	addi $2, $0, 11 #imprime o caracter q esta em #4
      	syscall
      	addi $8, $8, 1 #incrementa $8 (variavel testada) 
      	slt $11, $8, $10 #se ($8,$10) entao $11= 1 senao $11=0
      	bne $11, $0, cont #se $11!=0 cont
      	beq $8,$10, cont #se $8 ==$10 cont
      
fim:  	addi $2, $0, 10
      	syscall
