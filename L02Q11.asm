#Um pico em uma onda mecânica é caracterizado por três valores de magnitude, a, b e c, tais que (a<b e b>c) forma um pico positivo ou 
#(a>b e b<c) forma um pico negativo. 
#Faça um programa que leia 3 números e indique se formam um pico, imprimindo a letra P, caso formem. 
#Além disso o código deve informar se o pico é positivo negativo, acrescentando um sinal de + ou de – após a letra P. 
#Se os três pontos não formarem um pico, deve ser impressa a letra N.

.text

main:                     addi $2, $0, 5
                              syscall
                              add $8, $0, $2 #a
           
                              addi $2, $0, 5
                              syscall
                              add $9, $0, $2 #b
                    
                              addi $2, $0, 5
                              syscall
                              add $10, $0, $2 #c
                     
comparar:              		slt $11, $8, $9
                              bne $11, $0, a_menor_b
                     
                              slt $11, $9, $8
                              bne $11, $0, b_menor_a
                     
a_menor_b:           		slt $11, $10, $9
                              bne $11, $0, pico_positivo
                              j negativo
                     
b_menor_a:           		slt $11, $9, $10
                              bne $11, $0, pico_negativo
                              j negativo
                     
pico_positivo:        		add $4, $0, 'P'
                              addi $2, $0, 11
                              syscall
                              add $4, $0, '+'
                              addi $2, $0, 11
                              syscall
                              j fim
                     
pico_negativo:       		add $4, $0, 'P'
                              addi $2, $0, 11
                              syscall
                              add $4, $0, '-'
                              addi $2, $0, 11
                              syscall
                              j fim
                     
negativo:               	add $4, $0, 'N'
                              addi $2, $0, 11
                              syscall
                     
fim:                        addi $2, $0, 10
                              syscall
