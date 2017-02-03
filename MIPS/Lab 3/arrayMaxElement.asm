.data
array1: .word 1 2 6 4 3 5
size: .word 6
msg: .asciiz "Max = "

.text
.globl main
main:
	lw $t0,size
	li $t1,0
	la $t2,array1
	li $t3,0

loop1:	beq $t0,$t1,exit
	addi $t1,$t1,1

	lw $t4,($t2)

	bgt $t3,$t4,loop2
	lw $t3,($t2)

loop2:	addi $t2,$t2,4

	b loop1

exit:	la $a0,msg
	li $v0,4
	syscall

	move $a0,$t3
	li $v0,1
	syscall

	li $v0,10
	syscall