section 	.data

; external functions defined in a library
extern printByteArray
extern getByteArray
extern printRAX
extern printEndl
extern exitNormal

helloMsg  db  "Input a string up to 25 characters long:"
helloLen  db  40
yesMsg    db  "Yup!"
yesLen    db  4
noMsg     db  "Nope."
noLen     db  5


section		.bss

input     resb  26
output    resb  26
num       resb  1
	

section		.text
global _start

_start:
    mov rsi, input
    mov rdx, 26
    call getByteArray

    mov rcx, 26

    ps:
    mov r8, 26
    sub r8, rcx

    cmp byte[input + r8], 0x0a
    je pe

    movzx r9, byte[input + r8]
    push r9 ; pushes onto a stack??

    dec rcx
    cmp rcx, 0
    ja ps

    pe:
    mov byte[num], r8b

    movzx rcx, byte[num]

    pos:
    movzx r8, byte[num]
    sub r8, rcx

    pop r9 ; takes off of stack?
    mov byte[output + r8], r9b

    dec rcx
    cmp rcx, 0
    ja pos

    movzx rcx, byte[num]

    chs:
    mov r8b, byte[input - 1 + rcx]
    cmp r8b, byte[output - 1 + rcx]
    jne no

    dec rcx
    cmp rcx, 0
    ja chs

    mov rsi, yesMsg
    movzx rdx, byte[yesLen]
    call printByteArray
    call printEndl

    ; exits program
    call exitNormal

    no:
    mov rsi, noMsg 
    movzx rdx, byte[noLen]
    call printByteArray
    call printEndl

    ; exits program
	call	exitNormal