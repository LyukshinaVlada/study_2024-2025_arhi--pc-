%include 'in_out.asm'
SECTION .data
    msg db "Результат: ", 0
SECTION .bss
    b resb 4
SECTION .text
    global _start

_start:
    pop ecx
    cmp ecx, 0
    jle _end
    mov dword [b], 0
    mov esi, 10
next:
    pop eax
    call atoi
    imul eax, esi
    sub eax, 5
    add [b], eax
    loop next
_end:
    mov eax, msg
    call sprint
    mov eax, dword [b]
    call iprintLF
    call quit
