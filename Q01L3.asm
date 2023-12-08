#Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3,considerando valores maiores que 0
.text
main: addi $8, $0, 1 
      addi $9, $0, 3 #$9 = 3
      addi $10, $0, 10 # qtde de multiplos
      
cont: mult $8, $9 #multplica $8 e $9
      mflo $4 #resultado da multiplicação
      addi $2, $0, 1 #imprime o valor inteiro de $4
      syscall
      add $4, $0, '\n' #lê um caractere
      addi $2, $0, 11 #imprime o caracter q esta em #4
      syscall
      addi $8, $8, 1 #incrementa $8 (variavel testada) 
      slt $11, $8, $10 #se ($8,$10) entao $11= 1 senao $11=0
      bne $11, $0, cont #se $11!=0 cont
      beq $8,$10, cont #se $8 ==$10 cont
      
fim:  addi $2, $0, 10
      syscall