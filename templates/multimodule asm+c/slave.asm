bits 32
extern _printf          ;_printf already exsists inside <stdio.h>
extern _str             ;logic for _str resides in master.c
global _printmythings   ;logic for _printmythings resides in slave.asm
segment data public data use32
	message db 'Hello world!', 0
    
segment code public code use32
    _printmythings:
        push ebp
        mov ebp,esp
        
        push dword [ebp + 8]
        call _printf
        add esp, 4 * 1
        
        push _str
        call _printf
        add esp, 4 * 1
        
        leave
        ret
