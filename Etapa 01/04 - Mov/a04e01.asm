; Aula 04 - Dados Nao-Inicializados e Estrutura
; arquivo: a04e01.asm
; objetivo: apresentar seção .bss e enderecos
; nasm -f elf64 a04e01.asm ; ld a04e01.o -o a04e01.x

section .data
    v1: db 0x61 
    v2: dd 0x65646362
    v3: dq 0xFFFFFFFF33323130

section .bss
    n1: resb 1
    n2: resd 1
    n3: resb 1

section .text
    global _start

_start:
    mov al   , [v1]
    mov [n1] , al
    mov [n3] , al
    mov ebx  , [v2]
    mov [n2] , ebx

edmar:
    mov rdx, [v3]
luiz:
    mov edx, [v2]
    mov [n1], edx
fim:
    mov rax, 60
    mov rdi, 0
    syscall
