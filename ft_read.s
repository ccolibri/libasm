				extern	___error
				section .text
				global _ft_read

_ft_read:
				mov		rax, 0x2000003
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

