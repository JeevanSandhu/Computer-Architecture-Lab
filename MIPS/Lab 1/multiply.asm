.globl main
.text
main:
	li $t2,2
	li $t3,9
	mult $t2,$t3
	li $v0,10
	syscall