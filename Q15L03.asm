.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2  # linhas
       addi $9, $0, 1
       addi $24, $0, 1 #contador
test:  beq $8, $0, saifor
       add $10, $0, $9
testi: beq $10, $0, proxl 
       add $4, $0, $24
       addi $2, $0, 1
       syscall    
       addi $4, $0, ' '
       addi $2, $0, 11
       syscall
       addi $24, $24, 1
       addi $10, $10, -1
       j testi
proxl: addi $9, $9, 1
       addi $4, $0, '\n'
       addi $2, $0, 11
       syscall
       
     
addi $8, $8, -1
       j test
saifor: addi $2, $0, 10
       syscall 