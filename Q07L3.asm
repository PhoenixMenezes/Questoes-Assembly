#Faça um programa que leia números inteiros diferentes de zero e calcule a soma dos valores positivos. O
#o laço do programa termina quando o usuário digita um valor zero. Em seguida o programa imprime a soma dos valores positivos digitados.
.text
main: addi $8, $0, 2
 addi $9, $0, 0
cont: addi $2, $0, 5
 syscall
 
siga: bne $2, $0, calc
 j fim
 
calc: slt $10, $2, $0
 beq $10, $0, soma
 j cont
 
soma: add $9, $9, $2 
impr: #add $4, $0, 'S'
# addi $2, $0, 11
 #syscall
 #add $4, $0, ':'
 #addi $2, $0, 11
# syscall
 add $4, $0, $9
 #addi $2, $0, 1
# syscall
 #add $4, $0, '\n'
 #addi $2, $0, 11
 #syscall 
 j cont
 
fim: addi $2, $0, 10
 syscall
