				extern	___error
				section .text
				global _ft_write

_ft_write:
				mov		rax, 0x2000004
				syscall
				jc		.error
				ret
.error:
				push	rax
				call	___error
				pop		rdx
				mov		[rax], edx
				mov		rax, -1
				ret
