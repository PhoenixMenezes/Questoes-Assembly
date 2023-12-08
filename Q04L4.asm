#Faça uma função que receba uma data (dia, mês e ano em inteiro) e 
#retorne se a data é válida (retorne 1) ou inválida (retorna 0).
. text
main:	addi $2, $0, 5 #Le dia
	syscall
	add $4, $0, $2 #salva dia em $4
	addi $2, $0, 5 #Le mes
	syscall
	add $5, $0, $2 #salva mes em $5
	addi $2, $0, 5 #Le ano
	syscall
	add $6, $0, $2 #salva ano em $6
	
	jal validaData
	
	add $4, $0, $2
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
	
#Função ValidaData
#Entradas: $4, $5, $6 (dia, mes, ano)
#Saidas: $2
#Tipo: nó (preciso guardar $31 em outro registrador)
#Registradores alterados:$14, $15, $24, $25

validaData:	add $25, $0, 1
		addi $2, $0, 0
		addi $14, $0, 1
		slt $14, $5, $14  #Se mes<1 entao $14<-1 senão $14<-0
            	bne $14, $0, fim2
            	addi $14, $0, 13
            	slt $14, $5, $14  #Se mes<13 entao $14<-1 senão $14<-0
       
            	beq $14, $0, fim2            
# ------------ mes OK---------
            	addi $15, $0, 2
            	beq $5, $15, fev
            	addi $14, $0, 8
            	div $5, $14
            	mflo $14
            	add $14, $14, $5
            	addi $15, $0, 2
            	div $14, $15
           	mfhi $14
            	addi $14, $14, 30 # $14 quantidade de dias do mes         
            	j validadias 
fev:        	addi $14, $0, 28        
            	add  $7, $0, $6
            	jal bissexto
            	add $14, $14, $3
validadias: # $14 contem a quantidade de dias do mes informado
            	addi $15, $0, 1
            	slt $15, $4, $15  #Se dia<1 entao $15<-1 senão $15<-0
            	bne $15, $0, fim2            
            	slt $15, $14, $4  #Se diasdomes<dia entao $15<-1 senão $15<-0
            	bne $15, $0, fim2
#---- fim de Mes OK----------------------            
            	add $2, $0, 1
fim2:       	add $31, $0, $25
            	jr $31

#Função Bissexto
#Entradas: $7
#Saidas: $3
#Tipo: folha
#Registradores alterados:$12, $15

bissexto:	addi $3, $0, 0
		addi $12, $0, 400
		div $7, $12
		mfhi $13
		beq $13, $0, bisim
		addi $12, $0, 100
		div $7, $12
		mfhi $13
		beq $13, $0, fim
		addi $12, $0, 4
		div $7, $12
		mfhi $13
		beq $13, $0, fim
		
bisim:		addi $3, $0, 1
fim:		jr $31


		