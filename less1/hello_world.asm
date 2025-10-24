default rel

section .data
msg: db "Hello, World!", 10 ; newline
len: equ $ - msg

section .text
global _start

_start:
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, msg        ; pointer to string
    mov rdx, len        ; length
    syscall

    mov rax, 60         ; syscall: exit
    xor rdi, rdi
    syscall
