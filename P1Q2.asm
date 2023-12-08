# receber 4 inteiros calcular a media com peso 2, 4, 8 e 10. imprimir o valor arredondado para a fração mais proxima (menor q 0,5 para 0,0
															#(mior ou igual 0,5 para 1,0)
															
.text

main:		addi $2, $0, 5
		syscall
		add $8, $0, $2
           
		addi $2, $0, 5
		syscall
		add $9, $0, $2
                   
		addi $2, $0, 5
		syscall
		add $10, $0, $2
                             
		addi $2, $0, 5
		syscall
		add $11, $0, $2
                     
constantes: 	addi $12, $0, 2
		addi $13, $0, 4
		addi $14, $0, 8
		addi $15, $0, 10
		addi $24, $0, 24
		
		

resmul:		mul $8, $8, $12
		mul $9, $9, $13
		mul $10, $10, $14
		mul $11, $11, $15

                                          
                                                                                                                              
somar:		add $13, $8, $9
		add $13, $13, $10
		add $13, $13, $11
                     
		div $13, $24
		mflo $14
		mfhi $15
                     
		slt $16, $15, $12
		beq $16, $0, add1
		bne $16, $0, imprimir
                     
add1:		addi $14, $14, 1
                     
imprimir:	add $4, $0, $14
		addi $2, $0, 1
		syscall
      
fim:		addi $2, $0, 10
		syscall
