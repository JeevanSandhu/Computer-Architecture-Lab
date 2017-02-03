.globl main
.text
main:
	li $t2,25
	li $t3,5
	div $t2,$t3
	li $v0,10
	syscall