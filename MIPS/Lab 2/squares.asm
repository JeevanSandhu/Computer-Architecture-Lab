.data
n: .word 10
newline: .asciiz "\n"

.text
.globl main
main:
	lw $t0,n
	li $t1,1
	li $t2,0
sumLoop:
	mul $t3,$t1,$t1
	add $t2,$t2,$t3
	add $t1,$t1,1
	ble $t1,$t0,sumLoop

	li $v0,1
	move $a0,$t2
	syscall

	li $v0,10
	syscall