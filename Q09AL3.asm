#Faça um programa leia certa quantidade de números e imprima o menor deles e quantas vezes o menor número foi lido. 
#A quantidade de números a serem lidos deve ser fornecido pelo usuário

.text
main:   addi $2, $0, 5
        syscall
        add $8, $0, $2   #$8 qtd de numeros
       
         addi $2, $0, 5
        syscall
        add $9, $0, $2   #$9 menor
        addi $10, $0, 1  #$10 Qtd
        addi $8, $8, -1
        

       
for:    beq $8, $0, prn
        addi $2, $0, 5
        syscall
        add $11, $0, $2 # $11 candidato a maior
       
        beq $11, $9, iguais
        slt $12, $9, $11 # se ($9<$11) $12=1 else $12=0
        bne $12, $0, menor
        add $9, $0, $11
        addi $10, $0, 1
        j menor    
iguais: addi $10, $10, 1                 
menor:  addi $8, $8, -1
        j for
prn:    add $4, $0, 10
        addi $2, $0, 11
        syscall
        
        add $4, $0, $9
        addi $2, $0, 1
        syscall
         
        add $4, $0, 10
        addi $2, $0, 11
        syscall
        
        add $4, $0, $10
        addi $2, $0, 1
        syscall 
        
        addi $2, $0, 10
        syscall                                  
