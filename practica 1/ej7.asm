.data
	dato1: .word 0x801215F9
.text
	#lhu $t0, dato1
	lh $t0, dato1
	#lhu $t1, dato1+2
	lh $t1, dato1+2
	
# a) Analizar las instrucciones generadas tanto el ejercicio 5 como en éste.
# Identificar los registros intervinientes para poder extraer un valor de la memoria.
#Es lo mismo que el anterior pero con half-word en lugar de byte
# b) ¿Qué valores se almacenan en cada caso en $t0 y $t1? ¿Por qué?