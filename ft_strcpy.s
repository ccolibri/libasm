				section	.text
				global	_ft_strcpy

_ft_strcpy:
				xor		rcx, rcx			;	i = 0;
				mov		rax, rdi			;	ret_value = dst
.function:
				mov		dl, byte[rsi + rcx] ;	dl = src[i]
				mov		byte[rdi + rcx], dl ;	dst[i] = dl
				test	dl, dl				;	(dl & dl) ? 0
				jz		.end				;	jump is zero
				inc		rcx					;	i++
				jmp		.function			;	jump to start 
.end:
				ret 						;	return dst (rax)

