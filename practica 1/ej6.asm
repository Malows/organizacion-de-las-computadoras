.data
	dato1: .word 0x801215F9
.text
	lbu $t0, dato1
	#lb $t0, dato1
	lbu $t1, dato1+1
	#lb $t1, dato1+1
	lbu $t2, dato1+2
	#lb $t2, dato1+2
	lbu $t3, dato1+3
	#lb $t3, dato1+3
	
#a) ¿Cómo se almacena el valor de dato1 en el segmento de datos? ¿La arquitectura es big endian o little endian?
# es little-endian la arquitectura y se almacena en la pila, de a bytes

#b) ¿Qué valores se almacenan en cada caso en $t0, $t1, $t2 y $t3? ¿Por qué?
#en los casos de lbu, se almacenan en orden little-endian, los respectivos bytes, de atras para adelante
# en el caso de lb, no se porque algunos me los rellena con f's, algo con el unsigned debe de ser