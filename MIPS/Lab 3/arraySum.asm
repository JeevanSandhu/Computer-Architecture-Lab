.data
array1: .word 1 2 4 3 5
size: .word 5
space: .asciiz " "
nline: .asciiz "\n"
msg: .asciiz "Sum = "

.text
.globl main
main:
	lw $t0,size
	li $t1,0
	la $t2,array1
	li $t3,0

loop1:	beq $t0,$t1,exit
	addi $t1,$t1,1

	lw $a0,($t2)
	add $t3,$t3,$a0
	li $v0,1
	syscall

	addi $t2,$t2,4

	la $a0,space
	li $v0,4
	syscall

	b loop1

exit:	la $a0,nline
	li $v0,4
	syscall

	la $a0,msg
	li $v0,4
	syscall

	move $a0,$t3
	li $v0,1
	syscall

	li $v0,10
	syscall