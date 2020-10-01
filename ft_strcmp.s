                section .text
                global  _ft_strcmp

_ft_strcmp:                             ;   rdi - s1, rsi - s2
                xor     rax, rax        ;   char t1 == '\0'
                xor     rcx, rcx        ;   char t2 == '\0
.fucntion:
                mov     al, byte[rdi]   ;   t1 = *s1;
                mov     cl, byte[rsi]   ;   t2 = *s
                cmp     al, cl          ;   (t1 == t2) ?
                je      .inc            ;   jump if eqal to increment  
                jmp     .end            ;   jump to end
.inc:
                test    al, cl          ;   (al & cl) ? 0
                jz      .end            ;   jump if zero to end
                inc     rdi             ;   s1++
                inc     rsi             ;   s2++
                jmp     .fucntion       ;   jump to start
.end:
                sub     rax, rcx        ;   find ret = (*s1 - *s2)
                ret                     ;   return ret (rax)