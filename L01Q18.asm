#Faça um programa que leia dois números 
#e informe o menor deles (use apenas
#operações aritméticas e lógicas.
.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      sub $10, $8, $9  #primeiro-segundo
      #A<B  => A-B<0
      
      srl $11, $10, 31 #Ex com 4 bits
                       #1001 -> 3 casas -> 0001
                       #0100 - 1 casa
                       #0010 - 2 casas
                       #0001 - 3 casas
       
      #Se A-B<0 então $11 <- 1 senão $11 <- 0
      not $12, $11
      andi $12, $12, 1
      
      # $4 <= A*$11 + B*$12
      mul $13, $8, $11
      mul $14, $9, $12
      add $4, $13, $14
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall