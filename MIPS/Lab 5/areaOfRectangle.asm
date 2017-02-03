.data
x: .word 3
y: .word 5
answer: .word 0

.text
.globl main
.globl area

.ent main
main:
	lw $a0,x
	lw $a1,y
	jal area
	sw $v0,answer
	li $v0,10
	syscall
.end main

.ent area
area:
	mul $v0,$a0,$a1
	jr $ra
.end area