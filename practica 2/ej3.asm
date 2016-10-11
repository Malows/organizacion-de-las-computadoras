.text
	lui $a0, 0x1111
	ori $a0, $a0, 0x7fff
	lui $a1, 0x1111
	ori $a1, $a1, 0x8000
	
	# segunda parte
	lui $a2, 0x1111
	addi $a2,$a2, 0x7fff
	lui $a3, 0x1111
	addi $a3, $a3, 0x8000
	
# a) ¿Qué código se genera? ¿A qué conclusión llega? Investigue por qué.
# Cuando uso addi en lugar de ori y tengo un numero mayor a 16 bits
# se descompone en un ori a un temporal y un add al lugar donde quiero acumurlar
# debe ser por el signo del numero!

# b) ¿Qué resultado almacenan los registros cuando lo ejecuta paso a paso?
# los mismos resultados

# c) De acuerdo a lo visto ¿cuál de las 2 maneras es la más adecuada para almacenar cualquier valor constante de 32bits?
# ori! porque te ahorra una sentencia y es lo recomendable
