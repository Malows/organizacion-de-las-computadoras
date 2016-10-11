# Escribir la instrucción para asignar el valor 0x4512 al registro $t0 y ejecutarla.
.text
	ori $t0, $t0, 0x5412

# a) Copiar el código generado y pasarlo a binario.
# 0x3c085412
# 0011 0101 0000 1000 0100 0001 0010

# b) Agrupar los bits de acuerdo al tipo de instrucción e identificar los operandos y elementos.
# 0011 accion
# 0101 destino
# 0000 primer elemento
# 1000 0100 0001 0010 segundo elemento