BITS 64

;______________RPN FUNC MACRO_______________

%macro rpn_funcS 1
global %{1}rpn

%{1}rpn:
    pop     rbx
    pop     rax
    %1      rax, rbx
    push    rax
.end:
func_size %1rpn

%endmacro

%macro rpn_funcC 1
global %{1}rpn

%{1}rpn:
    pop     rbx
    pop     rax
    %1      rbx
    push    rax
.end:
func_size %1rpn

%endmacro

;______________FUNC SIZE____________________

%macro func_size 1
global %{1}_size
%{1}_size :
    mov     rax, %1.end - %1
    ret
%endmacro

;______________VAR #1 OPCODE OFFSET__________

%macro offset_A 1
global %{1}_varA_offset

%{1}_varA_offset:
    mov     rax, %1.varA - %1
    sub     rax, 8
    ret
%endmacro

;______________VAR #2 OPCODE OFFSET__________

%macro offset_B 1
global %{1}_varB_offset

%{1}_varB_offset:
    mov     rax, %1.varB - %1
    sub     rax, 8
    ret
%endmacro

;###########################################

SECTION .text:

global  init
global  pushval
global  prologue
global  epilogue

; rdi - addr jmp to
init:
    call rdi;
    ret

prologue:
    mov     rsi, 0xdeadbeef
                            .varA:
    mov     rcx, 0xdeadbeef
                            .varB:
    mov     r11, rsp
    mov     rax, rcx
    shl     rax, 3
    sub     rsp, rax
    mov     r8, rsp
    mov     rdi, r8
    rep  movsq
    push    r11
.end:

epilogue:
    pop     rax
    pop     rsp
    ret
.end:

pushval:
    mov     rcx, 0xdeadbeef; 
                            .varA:
    mov     rdi, r8
    shl     rcx, 3
    add     rdi, rcx
    mov     rax, [rdi]
    push    rax
.end:

rpn_funcS add
rpn_funcS sub
rpn_funcC mul
rpn_funcC div

func_size prologue
func_size epilogue
func_size pushval

offset_A prologue
offset_B prologue
offset_A pushval
