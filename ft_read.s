				extern	___error
				section .text
				global _ft_read

_ft_read:
				mov		rax, 0x2000003		;	sys_read call identifier
				syscall						;	call sys_read function
				jc		.error				;	jump if carry flag is set
				ret							;	return rax
.error:
				push	rax					;	push rax value to top of stack to save errno value
				call	___error			;	call error to get error address
				pop		rdx					;	retrieve value from top of stack to rdx
				mov		[rax], edx			;	move errno value to errno address
				mov		rax, -1				;	rax = -1
				ret							;	return rax

