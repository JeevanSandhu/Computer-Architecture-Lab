.data
space: .asciiz " "

.text
.globl main
main:
	li $t0,0
	li $t1,1
	li $t3,0
	li $t4,10
display:
	li $v0,1
	move $a0,$t0
	syscall

	li $v0,4
	la $a0,space
	syscall

	add $t0,$t1,$t0
	add $t1,$t1,$t0

	add $t3,$t3,1
	ble $t3,$t4,display

	li $v0,10
	syscall