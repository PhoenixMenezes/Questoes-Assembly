.text
main: #Lê o ano (inteiro)
	addi $2, $0, 5
      	syscall
      	add $8, $0, $2
      #Divisivel por 400
      	addi $9, $0, 400
      	div $8, $9
      	mfhi $10
      	beq $10, $0, biss
      	
      #Divisivel por 4
      	addi $9, $0, 4
      	div $8, $9
      	mfhi $10
      	bne $10, $0, nao_biss
      #Não divisivel por 100
      	addi $9, $0, 100
      	div $8, $9
      	mfhi $10
      	beq $10, $0, nao_biss                          
biss: addi $4, $0, 'B'
      j prn
nao_biss: addi $4, $0, 'N'
prn:  addi $2, $0, 11
      syscall
      addi $2, $0, 10
      syscall