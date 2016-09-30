.text
	lui $t0, 0x1234
	lui $t1, 1000
	lui $t2, 65535
#a) ¿Qué diferencia se visualiza entre las instrucciones del código en Source y Basic?
#El source conserva macros y tokens, el basic se parsean a niveles mas bajos de ASM

#b) ¿Cuál es la dirección de comienzo del programa y que longitud tiene tiene cada instrucción?
#0x00400000

#c) Escribir el código objeto (Code) de cada instrucción en binario
# 0x3c08123
# 0x3c0903e8
# 0x3c0affff

#d) ¿Qué valores inicialmente tienen los registros $t0,$t1, $t2 y $pc?
# $t0 - 0x00000000
# $t1 - 0x00000000
# $t2 - 0x00000000
# $pc - 0x00400000

#e) ¿En qué dirección comienza el segmento de datos?
# 0x00400000 ?

#f) Presionar F7 para ejecutar la primer instrucción. ¿Qué valor toma $t0?
# 0x12340000

#g) ¿En cuánto y por qué cambia el valor del registro $pc? ¿Cuál es su función?
# Aumenta en 4, es el program counter, indica que instruccion es la siguiente

#h) Seguir ejecutando el programa (F7) y verificar los valores en $t1, $t2 y $pc.