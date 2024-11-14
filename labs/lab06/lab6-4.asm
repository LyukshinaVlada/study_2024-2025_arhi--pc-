%include 'in_out.asm'

SECTION .data
msg : DB 'Введите X',0
rez : DB 'Ответ: ',0

SECTION .bss
x: RESB 80
rezl: RESB 80

SECTION .start
GLOBAL _start
_start:

mov eax,msg
call sprintLF

mov ecx,x
mov edx, 80
call sread
mov eax,x
call atoi


add eax,2
mul eax
mov [rezl],eax

mov eax, rez
call sprint
mov eax,[rezl]
call iprintLF

call quit
