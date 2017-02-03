.data
val: .float -8.32
lfeed: .asciiz "\n"

.text
.globl main
main:
	l.s $f12,val 	#correct way
	li $v0,2	#print float using v0=2
	syscall

	li $v0,4	#print \n
	la $a0,lfeed
	syscall

	lw $a0,val	#wrong way
	li $v0,1	#trying to print float using v0=1(used for int)
	syscall

	li $v0,10	#exit
	syscall