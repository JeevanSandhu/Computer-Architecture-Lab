.data
side1: .word 3
side2: .word 3
side3: .word 3
volume: .word 0
surfaceArea: .word 0
msg1: .asciiz "Volume = "
msg2: .asciiz "SA = "
newline: .asciiz "\n"

.text
.globl main
main:
	lw $t0,side1
	lw $t1,side2
	lw $t2,side3

	mul $t3,$t0,$t1
	mul $t4,$t2,$t3

	li $v0,4
	la $a0,msg1
	syscall

	li $v0,1
	move $a0,$t4
	syscall

	li $v0,4
	la $a0,newline
	syscall

	mul $t3,$t0,$t1
	mul $t4,$t1,$t2
	mul $t5,$t0,$t2
	add $t6,$t3,$t4
	add $t7,$t5,$t6
	li $t8,2
	mul $t9,$t7,$t8

	li $v0,4
	la $a0,msg2
	syscall

	li $v0,1
	move $a0,$t9
	syscall

	li $v0,10
	syscall