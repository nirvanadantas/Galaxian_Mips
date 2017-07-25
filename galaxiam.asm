.text

main:	lui $9, 0x1001
	addi $10, $0, 0xFFFFFF #cor
	addi $8, $0, 128 #Quantidade de pixels do top
	
top:	sw $10, 0($9)
	addi $9, $9, 4
	addi $11, $11, 1
	beq $11, $8, novo_1
	j top

novo_1: addi $9, $9, 26112
	addi $10, $0, 0x386890 #Mr. Blue do placar
	addi $8, $0, 512 #Quantidade de pixels do placar 
	add $11, $0, $0 #Resetando quantidade		
	
fim: 	nop
	
	
