#Faça um programa que leia três números e informa a média aritmética simples desses três números, 
#arredondando o resultado para o inteiro mais próximo (a partir 0,5 arredonda para o próximo inteiro maior).

.text

main:                    addi $2, $0, 5
                             syscall
                             add $8, $0, $2
           
                             addi $2, $0, 5
                             syscall
                             add $9, $0, $2
                    
                             addi $2, $0, 5
                             syscall
                             add $10, $0, $2
                     
constantes:          addi $11, $0, 3
                             addi $12, $0, 2
                     
somar:                  add $13, $8, $9
                             add $13, $13, $10
                     
                             div $13, $11
                             mflo $14
                             mfhi $15
                     
                             slt $16, $15, $12
                             beq $16, $0, add1
                             bne $16, $0, imprimir
                     
add1:                    addi $14, $14, 1
                     
imprimir:               add $4, $0, $14
                             addi $2, $0, 1
                             syscall
      
fim:                       addi $2, $0, 10
                             syscall
