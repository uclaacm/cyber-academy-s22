section .data

a   dq  11175501970290170797
b   db  "hello"
c   dd  5481


section .bss

x   resb    1
y   resd    1
z   resq    1


section .text
global _start

_start:

xor rax, rax
or  rax, qword [a]
mov al, byte [b]
mov ah, byte [b + 2]
mov dword [y], eax

add ax, word [c]
dec al

mov byte [x], al
mov qword [z], rax
mov eax, dword [y]
mov rcx, 0
dinosaur:
cmp cl, byte [x]
jae theMeteor

sub eax, dword [c]

inc cl
jmp dinosaur

theMeteor:
or  rax, qword[z]
; what is the value of RAX now?
; enter the flag as hexadecimal in the format flag{0xFLAG_HEX_HERE}

mov rax, 60 ; system call to exit program normally
mov rdi, 0
syscall