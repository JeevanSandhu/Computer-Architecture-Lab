.data
array: .word 1 2 3 4 5 6 7 8 9
length: .word 9

.text
.globl main
main:
	la $t0,array
	li $t1,0
	lw $t2,length

push:	lw $t4,($t0)

	subu $sp,$sp,4
	sw $t4,($sp)

	add $t1,$t1,1
	add $t0,$t0,4
	blt $t1,$t2,push

	la $t0,array
	li $t1,0
	lw $t2,length

pop:	lw $t4,($sp)
	addu $sp,$sp,4

	sw $t4,($t0)

	add $t1,$t1,1
	add $t0,$t0,4
	blt $t1,$t2,pop

exit:	li $v0,10
	syscall