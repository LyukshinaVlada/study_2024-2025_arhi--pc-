%include 'in_out.asm'
section .data
    msg1: db 'Введите X: ',0h
    msg2: db 'Введите A: ',0h
    msg3: db 'Ответ: ',0h
section .bss
    x: resb 80
    a: resb 80
    res: resb 80
section .text
    global _start
_start:
    mov eax,msg1
    call sprint
    mov ecx,x
    mov edx,80
    call sread
    mov eax,x
    call atoi
    mov [x],eax
    mov eax,msg2
    call sprint
    mov ecx,a
    mov edx,80
    call sread
    mov eax,a
    call atoi
    mov [a],eax
    mov eax, [x]
    cmp eax,3
    je check_a
    mov eax,[a]
    add eax,1
    mov [res],eax
    jmp fin
check_a:
    mov eax,[x]
    xor ebx,ebx
    mov ebx,3
    mul ebx
    mov [res],eax
    jmp fin
fin:
    mov eax,msg3
    call sprint
    mov eax,[res]
    call iprintLF
    call quit
