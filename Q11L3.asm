#Faça um programa que encontre o primeiro múltiplo de 11, 13 ou 17 após um número fornecido pelo usuário.
.text
main: addi $2, $0, 5
      syscall
      addi $8, $2, 1
      addi $11, $0, 11
      addi $13, $0, 13
      addi $17, $0, 17
do:   addi $10, $0, 11
      div $8, $11
      mfhi $9    # resto da divisao
      beq $9, $0, achou

      addi $10, $0, 13
      div $8, $13
      mfhi $9    # resto da divisao
      beq $9, $0, achou


      addi $10, $0, 17
      div $8, $17
      mfhi $9    # resto da divisao
      beq $9, $0, achou

      addi $8, $8, 1
      j do    
achou: add $4, $8, $0
      addi $2, $0, 1
      syscall
      addi $4, $0, ' '
      addi $2, $0, 11
      syscall
      addi $4, $0, 'm'
      addi $2, $0, 11
      syscall
      add $4, $10, $0
      addi $2, $0, 1
      syscall                      
      addi $2, $0, 10
      syscall
