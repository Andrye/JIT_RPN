BITS 64

%macro rpn_func f_name
global %fname
%fname:
    pop     rbx
    pop     rax
    %f_name rax, rbx
    push    rax
.end:
%endmacro


%macro func_size f_name
    mov     rax, %f_name.end - %f_name
    ret
%endmacro

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
global  pushval_varA_offset
global  prologue_varA_offset:
global  prologue_varA_offset:

; rdi - addr jmp to
init:
    call rdi;
    ret

prologue:
    mov     r8, rsp
    mov     rsi, 0xdeadbeef
                            .varA:
    mov     rcx, 0xdeadbeef
                            .varB:
    mov     rdi, rsp
    sub     rsp, [8*rcx]
    rep movsd 
.end:

addrpn:
    pop     rbx
    pop     rax
    add     rax, rbx
    push    rax
.end:


subrpn:
    pop     rbx
    pop     rax
    sub     rax, rbx
    push    rax
.end:

mulrpn:
    pop     rbx
    pop     rax
    mul     rbx
    push    rax
.end:


divrpn:
    pop     rbx
    pop     rax
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

epilogue_size:
    mov     rax, epilogue.end - epilogue
    ret

prologue_varA_offset:
    mov     rax, prologue.varA - prologue
    sub     rax, 8
    ret

prologue_varB_offset:
    mov     rax, prologue.varB - prologue
    sub     rax, 8
    ret

pushval_varA_offset:
    mov     rax, pushval.vars - pushval
    sub     rax, 8
    ret
