.text
	lui $at, 0x1001
	lw $t0, 0($at)
	lw $t1, 4($at)
	lw $t2, 8($at)
#a) Cargar manualmente los valores de las siguientes palabras a partir de la dirección
#0x10010000 (segmento de datos), 0x12345678, 1000, 0x12AB34CD.

#b) ¿Cuál es la función de lui $at,0x1001?
# ver que segmento de memoria observar

#c) ¿Qué hace la instrucción lw $t1,4($at)? Describir cuáles son sus operandos.
#Si $at fuera 0x10010004, ¿se obtendría el mismo resultado al hacer lw
#$t1,0($at)? ¿Por qué?
#No, porque desplazamos el punto de inicio de donde observa el segmento de datos. Y lw carga, desplazando x(desde la pos)

#d) Ejecutar paso a paso el programa y responda qué valores carga en $t0, $t1 y $t2.
#Toma los valores que cargamos antes