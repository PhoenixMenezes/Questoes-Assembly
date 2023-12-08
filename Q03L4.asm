#Faça uma função chamada DesenhaLinha. Ele deve desenhar uma linha na tela usando vários símbolos de igual (Ex: ========). 
#A função recebe por parâmetro quantos sinais de igual serão mostrados. 


. text
main:	addi $2, $0, 5 
	syscall
	add $8, $0, $2
	add $4, $0, $8
	jal DesenhaLinha
	
	addi $2, $0, 10
	syscall
	
#Função DesenhaLinha
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