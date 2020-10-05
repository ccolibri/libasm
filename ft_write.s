				extern	___error
				section .text
				global _ft_write

_ft_write:
				mov		rax, 0x2000004		;	sys_write call identifier
				syscall						;	call sys_write function
				jc		.error				;	jump if carry flag set 
				ret							;	return rax
.error:
				push	rax					;	push rax value to top of stack to save errno value
				call	___error			;	call error to get error address
				pop		rdx					;	retrieve value from top of stack to rdx
				mov		[rax], edx			;	move errno value to errno address
				mov		rax, -1				;	rax = -1
				ret							;	return rax
