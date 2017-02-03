.data
msg1: .asciiz "Enter A : "
msg2: .asciiz "Enter B : "
msg3: .asciiz "Sum = "
newline: .asciiz "\n"

# Start .text segment (program code)
	.text

	.globl main
main:
	#Print string msg1
	li $v0,4			#print string syscall code
	la $a0,msg1
	syscall

	#Get input A from user and save
	li $v0,5			#read integer syscall code
	syscall
	move $t0,$v0

	#Print string msg2
	li $v0,4			#print string syscall code
	la $a0,msg2
	syscall

	#Get input B from user and save
	li $v0,5			#read integer syscall code
	syscall
	move $t1,$v0

	#Add A and B
	add $t3,$t0,$t1
	
	#Print string msg3
	li $v0,4			#display integer syscall code
	la $a0,msg3
	syscall

	#Print the sum value
	li $v0,1
	move $a0,$t3
	syscall

	#Print \n
	li $v0,4			#print string syscall code
	la $a0, newline
	syscall

	li $v0,10
	syscall