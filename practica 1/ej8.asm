.text
	lui $at, 0x1001
	lui $t0, 0xabcd
	lui $t1, 0x1234 
	sw $t0, 0($at)
	sw $t1, 4($at)