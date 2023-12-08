# Faça um programa que imprima os n primeiros números da série de Fibonacci, sendo n fornecido pelo usuário.
.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #qtd elementos
      addi $9, $0, 2
     
      addi $2, $0, 1
      addi $4, $0, 1
      syscall
     
      addi $2, $0, 11
      addi $4, $0, ' '
      syscall
     
      addi $2, $0, 1
      addi $4, $0, 1
      syscall
     

     
      addi $10, $0, 1 # n_ant
      addi $11, $0, 1 # n_atual
      add $12, $10, $11  # n_fut
     
for:  beq $9, $8, sai

      addi $2, $0, 11
      addi $4, $0, ' '
      syscall
     
      add $4, $12, $0
      addi $2, $0, 1
      syscall

      add $10, $11, $0 # n_ant <= n_atual
      add $11, $12, $0 # n_atual <= n_fut
      add $12, $10, $11  # n_fut <= n_ant+n_atual
     
      addi $9, $9, 1
      j for                    
sai:                                                                        


      addi $2, $0, 10
      syscall
