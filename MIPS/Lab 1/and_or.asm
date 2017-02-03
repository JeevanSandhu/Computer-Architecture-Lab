.data
l1: .word 1234
l2: .word 2345
l3: .space 4

.text
.globl main

main:
	lw $t0,l1($0)
	lw $t1,l2($0)
	and $t2,$t0,$t1
	or $t3,$t0,$t1
	sw $t3,l3($0)
	li $v0,10
	syscall