.text
	lui $t0, 0x1234
	sw $t0, ($sp)
	lui $at, 0x1001
	sw $sp, 8($at)
	lw $v0, 8($at)
	lw $v1, ($v0)