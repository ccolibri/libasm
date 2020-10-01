				section .text
				global _ft_strlen

_ft_strlen:										;	rdi - str
				xor		rax, rax				;	i = 0;

.function:
				cmp 	byte[rdi + rax], 0;		;	check if str[i] == 0
				je		.end					;	jump if eqal
				inc		rax						;	i++
				jmp		.function				;	jump to start check
.end:
				ret								;	return (i) 
