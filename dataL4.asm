
#Fa�a uma fun��o que receba uma data 
#(dia, m�s e ano em inteiro) 
# e retorne se a data 
#    � valida (retorne 1) ou 
#    inv�lida (retorna 0).
.text
main:   addi $2, $0, 5
        syscall
        add $4, $0, $2
        addi $2, $0, 5
        syscall
        add $5, $0, $2
        addi $2, $0, 5
        syscall
        add $6, $0, $2
        jal ValidaData
        add $4, $0, $2
        addi $2, $0, 1
        syscall
        addi $2, $0, 10
        syscall
        
        
# Fun��o ValidaData
# Entradas: $4, $5, $6 (dia, mes, ano)
# Sa�das: $2
# Tipo: n�
# Registros alterados: $14, $15, $24, $25       
ValidaData: add $25, $0, $31
            add $2, $0, 0  # por padrao data invalida
            addi $14, $0, 1
            slt $14, $5, $14  #Se mes<1 entao $14<-1 sen�o $14<-0
            bne $14, $0, fim2
            addi $14, $0, 13
            slt $14, $5, $14  #Se mes<13 entao $14<-1 sen�o $14<-0
       
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
fev:        addi $14, $0, 28        
            add  $7, $0, $6
            jal bissexto
            add $14, $14, $3
validadias: # $14 contem a quantidade de dias do mes informado
            addi $15, $0, 1
            slt $15, $4, $15  #Se dia<1 entao $15<-1 sen�o $15<-0
            bne $15, $0, fim2            
            slt $15, $14, $4  #Se diasdomes<dia entao $15<-1 sen�o $15<-0
            bne $15, $0, fim2
#---- fim de Mes OK----------------------            
            add $2, $0, 1
fim2:       add $31, $0, $25
            jr $31
# Fun��o Bissexto
# Descri��o: recebe um ano e retorna 1 se for bissexto e zero se n�o for
# Entradas: $7
# Sa�das: $3
# Tipo: folha
# Registros alterados: $12, $13 
bissexto: addi $3, $0, 0
          addi $12, $0, 400
          div $7, $12
          mfhi $13
          beq $13, $0, biss
          
          addi $12, $0, 100
          div $7, $12          
          mfhi $13
          beq $13, $0, fim
          
          addi $12, $0, 4
          div $7, $12          
          mfhi $13
          bne $13, $0, fim
   
biss:     addi $3, $0, 1
fim:      jr $31     
