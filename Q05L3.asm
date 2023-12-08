#Faça um programa que leia 10 valores e imprima a sua soma.
.text

main:   addi $10, $0, 10 #salva 10 em $10 (tamanho do laço)

loop:   addi $2, $0, 5
        syscall		#le cada inteiro digitado	
       
        add $8, $8, $2 #salva o inteiro em $8
       
        addi $9, $9, 1 #incremento de 1
       
        bne $9, $10, loop #se $9!=$10 volta pro laço
       
print:  add $4, $0, $8
        addi $2, $0, 1
        syscall
       
fim:    addi $2, $0, 10
        syscall

