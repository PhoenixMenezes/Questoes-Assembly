#Q4) Faça um programa que leia do usuário um intervalo fechado e imprima os numeros pares desse intervalo (inclusive os limites).


.text

main:  addi $2, $0, 5
       syscall
       add $8, $0, $2

       addi $2, $0, 5
       syscall
       add $9, $0, $2
       
calc:  andi $10, $8, 1

       beq $10, $0, par
       bne $10, $0, prox
       
par:   add $4, $0, $8
       addi $2, $0, 1
       syscall
       
       add $4, $0, ' '
       addi $2, $0, 11
       syscall

prox:  addi $8, $8, 1
       sub $11, $8, 1
       
       bne $11, $9, calc
       
fim:   addi $2, $0, 10
       syscall
