#ifndef JIT_FUNCTIONS_H
#define JIT_FUNCTIONS_H 1

typedef unsigned long long PTR;

#define C_COMP  extern "C"

#define JIT_LABEL(x)    C_COMP PTR x##_size();\
    C_COMP PTR x()

C_COMP  PTR init(PTR);
C_COMP  PTR pushval_varA_offset();
C_COMP  PTR prologue_varA_offset();
C_COMP  PTR prologue_varB_offset();

JIT_LABEL(epilogue);
JIT_LABEL(prologue);
JIT_LABEL(addrpn);
JIT_LABEL(subrpn);
JIT_LABEL(mulrpn);
JIT_LABEL(divrpn);
JIT_LABEL(pushval);

void inject_arg(void* addrs, PTR offset, PTR arg)
{
    PTR* t_ptr = (PTR*)((PTR)addrs + offset);
    *t_ptr = arg;
}

#endif // JIT_FUNCTIONS_H
