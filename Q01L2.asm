.text
main: addi $2, $0, 5
      syscall	        #lê um inteiro
      add $8, $2, $0   #salva o inteiro em $8
      addi $2, $0, 5
      syscall          #Lê inteiro (segundo)
      add $9, $2, $0   #salva o segundo lido inteiro em $9
      
      slt $10, $9, $8 # Se $9 < $8 entao $10 <=1 senão $10<=0
      beq $10, $0, maior9 #verifica de $10==0 ou $10==1
      addi $4, $8, 0
      addi $2, $0, 1
      syscall
      j fim
      
maior9: addi $4, $9, 0
      addi $2, $0, 1
      syscall  
      
fim:  addi $2, $0, 10
      syscall         
      