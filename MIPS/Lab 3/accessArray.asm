.data
array: .word 1 2 3 14 5
i: .word 3

.text
.globl main
main:
	lw $t0,i
	la $t1,array
	li $t4,4
	mul $t0,$t0,$t4
	add $t1,$t1,$t0
	lw $t3,($t1)
	li $v0,10
	syscall