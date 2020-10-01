                extern  _malloc     ;   
                extern  ___error    ;   
                extern  _ft_strlen  ;   
                extern  _ft_strcpy  ;   
                section .text       ;   
                global  _ft_strdup  ;   

_ft_strdup:                         ;   rdi - s1
                push    rdi         ;   backup rdi at the top of stack before call strlen
                call    _ft_strlen  ;   
                mov     rdi, rax    ;   int len = _ft_strlen(s1), res from strlen was placed in rax
                inc     rdi         ;   len++
                call    _malloc     ;   
                jc      .error        ;   jump if carry flag is set (error in malloc)
                pop     rsi         ;   retrieve s1 from top of stack and move to rsi
                mov     rdi, rax    ;   char *dst = malloc(len), res from malloc was placed in rax
                call    _ft_strcpy  ;   call strcpy (dst from rdi, src from rsi)
                ret                 ;   return dst (res from strcpy was placed in rax)
.error:
                push    rax         ;   push rax value to top of stack to save errno value
                call    ___error    ;   get error address
                pop     rdx         ;   retrieve value from top of stack to rdx
                mov     [rax], edx  ;   move errno value to errno address
                mov     rax, -1     ;   rax = -1
                ret                 ;   return(-1) rax