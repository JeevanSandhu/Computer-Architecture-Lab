.data
x: .word 3
y: .word 5
answer: .word 0

.text
.globl main
.globl power

.ent main
main:
	lw $a0,x
	lw $a1,y
	jal power
	sw $v0,answer
	li $v0,10
	syscall
.end main

.ent power
power:
	li $v0,1
	li $t0,0
loop:	mul $v0,$v0,$a0
	addi $t0,$t0,1
	blt $t0,$a1,loop
	jr $ra
.end power