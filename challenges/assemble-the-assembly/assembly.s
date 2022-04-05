.LC0:
        .string "flag{"
.LC1:
        .string "%s"
.LC2:
        .string "%d"
mystery:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:.LC1
        mov     eax, 0
        call    printf
        jmp     .L2
.L3:
        mov     ecx, DWORD PTR [rbp-4]
        movsx   rax, ecx
        imul    rax, rax, 1717986919
        shr     rax, 32
        sar     eax, 2
        mov     esi, ecx
        sar     esi, 31
        sub     eax, esi
        mov     edx, eax
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        add     eax, eax
        sub     ecx, eax
        mov     edx, ecx
        mov     esi, edx
        mov     edi, OFFSET FLAT:.LC2
        mov     eax, 0
        call    printf
        mov     eax, DWORD PTR [rbp-4]
        mov     edx, eax
        shr     edx, 31
        add     eax, edx
        sar     eax
        mov     DWORD PTR [rbp-4], eax
.L2:
        cmp     DWORD PTR [rbp-4], 0
        jg      .L3
        mov     edi, 125
        call    putchar
        nop
        leave
        ret