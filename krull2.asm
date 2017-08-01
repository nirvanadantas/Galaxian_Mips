.text

main:	lui $9, 0x1001
	addi $10, $0, 0x404040 #Mr. Gray do top
	addi $8, $0, 640 #Quantidade de pixels do top
	
top:	sw $10, 0($9)
	addi $9, $9, 4
	addi $11, $11, 1
	beq $11, $8, novo_1
	j top

novo_1: addi $9, $9, 26112
	addi $10, $0, 0x386890 #Mr. Blue do placar
	addi $8, $0, 512 #Quantidade de pixels do placar 
	add $11, $0, $0 #Resetando quantidade		
	
placar: sw $10, 0($9)
	addi $9, $9, 4
	addi $11, $11, 1
	beq $11, $8, novo_2
	j placar 

novo_2: addi $10, $0, 0x4C501C #Mr. Green da vida
	addi $8, $0, 512 #Quantidade de pixels da vida
	add $11, $0, $0 #Resetando quantidade

vida:	sw $10, 0($9)
	addi $9, $9, 4
	addi $11, $11, 1
	beq $11, $8, fim
	j vida
	
novo_3: lui $9, 0x1001
	addi $10, $0, 0x985C28 #Mr. Brown do forte
	addi $8, $0, 512 #Quantidade de pixels da vida
	add $11, $0, $0 #Resetando quantidade
	
fim: 	nop
	
	
