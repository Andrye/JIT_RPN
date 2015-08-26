BITS 64


SECTION .text:

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
global  vars_offset

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
    mov     rcx, 0xdeadbeef; 
                            .vars:
    mov     rdi, [8*rcx + r8]
    push    rdi
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

vars_offset:
    mov     rax, pushval.vars - pushval
    sub     rax, 8
    ret
