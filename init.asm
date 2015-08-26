BITS 64

global  init
global  addrpn
global  subrpn
global  mulrpn
global  divrpn
global  pushval
global  prologue
global  addrpn_size
global  subrpn_size
global  mulrpn_size
global  divrpn_size
global  pushval_size
global  prologue_size

SECTION .text:

; rdi - addr jmp to
init:
    call rdx;
    ret

prologue:
    mov     r8, rsp
.end:

addrpn:
    pop     rax
    pop     rbx
    add     rax, rbx
    push    rax
.end:


subrpn:
    pop     rax
    pop     rbx
    sub     rax, rbx
    push    rax
.end:

mulrpn:
    pop     rax
    pop     rbx
    mul     rbx
    push    rax
.end:


divrpn:
    pop     rax
    pop     rbx
    div     rbx
    push    rax
.end:


pushval:
    mov     rax, 0x1111111111111; 
                            .vars:
    push    rax
.end:

addrpn_size:
    mov     rax, addrpn.end - addrpn
    ret

subrpn_size:
    mov     rax, subrpn.end - subrpn
    ret

mulrpn_size:
    mov     rax, mulrpn.end - mulrpn
    ret

divrpn_size:
    mov     rax, divrpn.end - divrpn
    ret

pushval_size:
    mov     rax, pushval.end - pushval
    ret

prologue_size:
    mov     rax, prologue.end - prologue
    ret

