.data
promt: .asciiz "Enter value of x: "
newl: .asciiz "\n"
blank: .asciiz " "
a: .float 1.0
bb: .float 1.0
c: .float 1.0

.text
.globl main
main:
	la $a0,promt	#print string promt
	li $v0,4
	syscall

	li $v0,6	#read float value
	syscall

	l.s $f2,a		#sum=a
	mul.s $f2,$f2,$f0	#sum=ax
	l.s $f4,bb		#get bb
	add.s $f2,$f2,$f4	#sum=ax+b
	mul.s $f2,$f2,$f0	#sum=(ax+b)x
	l.s $f4,c		#get c
	add.s $f2,$f2,$f4	#sum=ax^2+bx+c

	mov.s $f12,$f2	
	li $v0,2
	syscall

	la $a0,newl
	li $v0,4
	syscall

	li $v0,10
	syscall