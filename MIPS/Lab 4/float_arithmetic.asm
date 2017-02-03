.data
fnum1: .float 6.28
fnum2: .float 3.14
fans1: .float 0.0
fans2: .float 0.0
dnum1: .double 13.0
dnum2: .double 3.0
dans1: .double 0.0
dans2: .double 0.0

.text
.globl main
main:
	l.s $f1,fnum1
	l.s $f2,fnum2
	l.d $f4, dnum1
	l.d $f6, dnum2
	mul.s $f3,$f1,$f2
	mul.d $f8, $f4, $f6
	s.s $f8, dans1

	li $v0,10
	syscall