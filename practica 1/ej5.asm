.data
	elemento: .word 0x54EF128A
	
.text
	lw $t1, elemento
	
# a)¿Qué instrucciones se generan?
# primero genera un lui $at 0x1001 y despues el lw $9 elemento

# b)En las instrucciones generadas, ¿cuáles son los registros intervinientes?
# $at

# c)¿Por qué valor es reemplazada la etiqueta elemento?
# 0x54EF128A

# d)¿Cuál es la ventaja de utilizar etiquetas en lugar de direcciones?
# Son más humanas

# e)Verificar el valor almacenado en la dirección de memoria apuntada por elemento.
# ?

# f)Al ejecutar el programa, ¿qué valor queda en $t1?
# el valor almacenado en la etiqueta "elemento"