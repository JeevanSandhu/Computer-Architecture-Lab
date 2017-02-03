.data
pi: .float 3.14159
radius: .float 1.5
answer: .float 0.0

.text
.globl main
.globl area

.ent main
main:
	l.s $f0,pi
	l.s $f1,radius
	jal area
	s.s $f2,answer
	li $v0,10
	syscall
.end main

.ent area
area:
	mul.s $f1,$f1,$f1
	mul.s $f2,$f0,$f1
	jr $ra
.end area