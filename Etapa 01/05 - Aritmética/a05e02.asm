; Aula 05 - Aritmética e Lógica
; arquivo: a05e02.asm
; objetivo: Carry e Overflow
; nasm -f elf64 a05e02.asm ; ld a05e02.o -o a05e02.x
; eflags tem embutido flags do processador ou do SO
; flag IF busca instrução INSTRUCTION FETCH
; SF = Signed ; AF = Bit Carry do 4 para o 5 bit
; Curiosidade UTILIZA-SE AF para ser mais preciso, contábeis
; PF = Parity Flag; relativo a transmissão de dadosc

section .data
    zoz: db 42

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
