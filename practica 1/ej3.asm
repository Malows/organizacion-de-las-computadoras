.data
	valor: .word
.text
	lui $t0, 9
	sw $t0, valor

#a) ¿Qué diferencia se visualiza entre las instrucciones del código en Source y Basic?
# Hay una instruccion que salta en el segmento de datos, cambia el $at, cambia el "observador" que apunta a la memoria de programa,
#a la que definimos

#b) Pasar el código generado en la 3 instrucción (en Code), indicando los campos que la conforman.
# Guarda el dato de $t0 en la direccion "valor"?

#c) Hacer un seguimiento paso a paso y verificar qué registros intervienen en las operaciones.
# done, $at, $pc(daah) y $t0

#d) ¿Qué valor tenía el registro $at antes de ejecutar el programa y en cuánto quedó?
# empezaba con 0x00000000 y despues de la ejecución 0x10010000

#e) Verificar qué valor se almacenó en memoria y en qué dirección
# se almaceno el valor de $t0 (memoria programa) en memoria de datos (pos 0x10010000 + 0 bytes de desplazamiento)

#f) Editar el programa y cambiar la instrucción Basic por las que surgieron en Source.
#Probar de utilizar los nombres de los registros y los números de los registros
#(por ejemplo si es la instrucción es lui $1, 0x1001, reemplazarla por lui $at, 0x1001).

#g) Verificar el funcionamiento del programa con los cambios realizados en el punto f)