.text
.globl main
main:
	li $t0,1
	li $t1,
	bne $t0,$t1,else
	add $t0,$t0,$t0
	b exit
else:	sub $t0,$t0,$t0
exit:	li $v0,10
	syscall