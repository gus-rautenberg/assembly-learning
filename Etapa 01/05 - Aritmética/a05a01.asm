; Aula 05 - Aritmética e Lógica
; arquivo: a05e02.asm
; objetivo: Atividade 1
; nasm -f elf64 a05e02.asm ; ld a05e02.o -o a05e02.x
;

section .data
    maiuscula: db 'A'
    minuscula: db 'b'
    
    lowercase: resb 1
    uppercase: resb 1
section .text
    global _start

_start:
    mov ax, 0x7fff ; 32767 ; int signed
    mov bx, 0xffff ; 65535 ; uint unsigned

overflow:
    add ax, 1 ; -32768     ;int

carry:
    add bx, 1 ; 0 e carry 1 no 17º bit

incremento:
    inc byte [zoz]

    add byte [zoz], 10
fim:
    mov rax, 60
    mov rdi, 0
    syscall
