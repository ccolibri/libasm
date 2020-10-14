# libasm
**Project for School 21**

 The aim of this project is to get familiar with assembly language.
 
 It compile **only with nasm** and write with **Intel syntax**.
 
 The library contains the following functoins:
 
```C
int     ft_strlen(char const *str);
int     ft_strcmp(char const *s1, char const *s2);
char    *ft_strcpy(char *dst, char const *src);
char    *ft_strdup(char const *s1);
ssize_t ft_write(int fd, void const *buf, size_t nbyte);
ssize_t ft_read(int fd, void *buf, size_t nbyte);
```
 
 Installation: 
 * ```https://github.com/ccolibri/libasm.git```
 * ```cd libasm```
 * ```make``` (it will create .a file, asm library)
 * ```make test``` (launch library with **main.c** to compare these functions with standart functions). 
