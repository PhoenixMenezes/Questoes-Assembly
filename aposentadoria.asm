#Faça um programa que leia a idade (em anos) 
#e o tempo de serviço de um trabalhador.
#Informe se ele pode se aposentar 
#(imprima S se sim, e N se não). 
#As condições para aposentadoria são: 
#1) ter, ao menos, 65 anos; OU 
#2) ter trabalhado 40 anos; OU 
#3) ter pelo menos 60 anos e mais de 35 anos.
.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2  # $8 <= idade
       addi $2, $0, 5
       syscall
       add $9, $0, $2  # $9 <= tempo de serviço
       slti $10, $8, 65  # se (idade < 65) $10 = 1; else $10=0
       beq $10, $0, ap_idd
       slti $10, $9, 40  # se (temposerv < 40) $10 = 1; else $10=0
       beq $10, $0, ap_ts
       slti $10, $8, 60  # se (idade < 60) $10 = 1; else $10=0
       bne $10, $0, nao_ap
       slti $10, $9, 36  # se (temposerv < 36) $10 = 1; else $10=0
       bne $10, $0, nao_ap
ap_cmb:          
ap_idd:     
ap_ts: addi $4, $0, 'S'
       addi $2, $0, 11
       syscall
       j fim
nao_ap: addi $4, $0, 'N'
       addi $2, $0, 11
       syscall 
fim:   addi $2, $0, 10
       syscall   
       
