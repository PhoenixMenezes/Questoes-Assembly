#Fa�a uma fun��o chamada DesenhaLinha. Ele deve desenhar uma linha na tela usando v�rios s�mbolos de igual (Ex: ========). 
#A fun��o recebe por par�metro quantos sinais de igual ser�o mostrados. 


. text
main:	addi $2, $0, 5 
	syscall
	add $8, $0, $2
	add $4, $0, $8
	jal DesenhaLinha
	
	addi $2, $0, 10
	syscall
	
#Fun��o DesenhaLinha
#Entradas: $4
#Saidas: 
#Tipo: folha
#Registradores alterados:

DesenhaLinha:	add $24, $0, $4
for:		beq $24, $0, fim
		addi $4, $0, '='
		addi $2, $0, 11
		syscall
		addi $24, $24, -1
		j for
fim:		jr $31