#Faça um programa que leia números inteiros diferentes de zero e encontre o menor valor digitado e o maior valor digitado. 
# O programa informa o maior e o menor, um em cada linha, quando o usuário digitar um 0.
.text
main: addi $8, $0, 0
 addi $2, $0, 5
 syscall
 
 beq $2, $0, fim 
 add $10, $0, $2
 
 add $11, $0, $2 
 j calc
 
cont: addi $2, $0, 5
 syscall
 
siga: bne $2, $0, calc 
 j impr 
 
calc: slt $9, $2, $8
 add $8, $0, $2
 bne $9, $0, save1
 j save2 
 
save1: add $10, $0, $2
 j cont
 
save2: add $11, $0, $2
 j cont 
 
impr: add $4, $0, 'm'
 addi $2, $0, 11
 syscall
 add $4, $0, ':'
 addi $2, $0, 11
 syscall
 add $4, $0, $10
 addi $2, $0, 1
 syscall
 add $4, $0, '\n'
 addi $2, $0, 11
 syscall
 add $4, $0, 'M'
 addi $2, $0, 11
 syscall
 add $4, $0, ':'
 addi $2, $0, 11
 syscall
 add $4, $0, $11
 addi $2, $0, 1
 syscall
 add $4, $0, '\n'
 addi $2, $0, 11
 syscall 
 
fim: addi $2, $0, 10
 syscall
 
