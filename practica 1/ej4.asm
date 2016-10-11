.text
	lui $t0, 0x1234
	sw $t0, ($sp)
	lui $at, 0x1001
	sw $sp, 8($at)
	lw $v0, 8($at)
	lw $v1, ($v0)
	
 #a) ¿Qué hace el programa?
# almacena 0x1234 en $t0, guarda el valor de $t0 [0x1234] en el espacio apuntado por el stack pointer $sp [mira los parentesis papi][desreferencia]
# almacena 0x1001 al $at, guarda la direccion del $sp en 0x1001 + 8 [$at + 8]
# carga en $v0 lo almacenado en 8 + $at, que sería la direccion que apunta el $sp
# carga en $v1 lo almacenado en la direccion apuntada [desreferenciacion] de $v0, que sería, lo que apunta el $sp, [0x1234]

#b) ¿En dónde se almacena el valor de $t0? Verifique mostrando en la ventana de ejecución el contenido de la memoria de $sp
#(figura a la derecha). ¿Se modifica el valor de $sp luego de la segunda línea? Si no es así, ¿Qué modifica la línea?
# se almacena en la dirección 0x7fffeffc. NO se modifica el valor despues de la ejecucion de la segunda linea, modifica el valor apuntado por $sp,
# no la direccion que apunta

#c) ¿Por qué se asigna 0x1001 a $at? (ver ejercicio 2)
# para usar la memoria de datos (?, no me quedo claro)

#d) ¿Qué acción hace sw $sp,8($at)y cuál es la dirección en donde se almacenará el dato?
#¿Qué valor había antes en esa dirección y qué valor hay después de ejecutar la instrucción?
# guarda en 0x10010008 el valor que contiene $sp, la dirección del tope de la pila
# antes había ceros en 0x10010008 y despues 0x7fffeffc

#e) Al ejecutar lw $v0,8($at) ¿Qué valor toma $v0?
# $v0 toma el valor de lo almacenado en 0x10010008 -> 0x7fffeffc

#f) Y con lw $v1,($v0) ¿Qué valor se carga en $v1?
# $v1 toma el valor de lo almacenado en 0x7fffeffc -> 0x12340000

#g) ¿Cómo se podría haber logrado el mismo resultado que tuvo $v1 reemplazando las 4 últimas líneas por una sola? Verifíquelo.
# supongo que haciendo lui $v1, 0x1234
# no puedo usar el $sp! para el $v0, viejo lobo de mar
