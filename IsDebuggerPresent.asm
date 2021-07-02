;nasm -fwin32 IsDebuggerPresent.asm && x86_64-w64-mingw32-gcc -o IsDebuggerPresent -m32 IsDebuggerPresent.obj && IsDebuggerPresent

[bits 32]

global  _main
extern _printf

section .text

;IsDebuggerPresent
_main:
    mov     eax,[fs:0x30]
    mov     eax,[eax+0x2]
    cmp     ax,0  ; 0x
    je      proc
    leave
    retn


; Program code 
proc:
    push    ebp
    mov     ebp, esp
    sub     esp, 10h
    mov     dword  [esp],   frm
    mov     dword  [esp+4], 0xFEEDC0DE 
    call    _printf
    add     esp,10
    leave
    retn




frm:
db "%x", 0

