.text

main:	lui $9, 0x1001
	addi $10, $0, 0xFFFFFF #cor
	addi $8, $0, 256 #Quantidade de pixels do top
	
top:	sw $10, 0($9)
	addi $9, $9, 4
	addi $11, $11, 1
	beq $11, $8, novo_i
	j top

novo_i:addi $9, $9, 1160
	addi $10, $0, 0x386890 #azul
#	addi $8, $0, 512 #Quantidade de pixels 
#	add $11, $0, $0 #Resetando quantidade		
	
placar: sw $10, 0($9)
	addi $9, $9, 120
	sw $10, 0($9)
	addi $9, $9, 120
	sw $10, 0($9)
	addi $9, $9, 268
	sw $10, 0($9)		#segunda linha
	addi $9, $9, 8
	sw $10, 0($9)
	addi $9, $9, 112
	sw $10, 0($9)
	addi $9, $9, 8
	sw $10, 0($9)
	addi $9, $9, 112
	sw $10, 0($9)
	addi $9, $9, 8
	sw $10, 0($9)
	addi $9, $9, 268
	sw $10, 0($9)
	addi $9, $9, 120
	sw $10, 0($9)
	addi $9, $9, 120
	sw $10, 0($9)
		
	addi $9, $9, 268	 #terceira linha
	sw $10, 0($9)
	addi $9, $9, 4
	sw $10, 0($9)
	addi $9, $9, 4
	sw $10, 0($9)
	addi $9, $9, 112
	sw $10, 0($9)
	addi $9, $9, 4
	sw $10, 0($9)
	addi $9, $9, 4
	sw $10, 0($9)
	addi $9, $9, 112
	sw $10, 0($9)
	addi $9, $9, 4
	sw $10, 0($9)
	addi $9, $9, 4
	sw $10, 0($9)

fim: 	nop
	
	
