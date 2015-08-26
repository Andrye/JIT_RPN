#ifndef JIT_FUNCTIONS_H
#define JIT_FUNCTIONS_H 1

typedef unsigned long long PTR;

#define C_COMP  extern "C"

#define JIT_LABEL(x)    C_COMP PTR x##_size();\
    C_COMP PTR x()



C_COMP  void init(PTR, PTR, PTR);
C_COMP  PTR val;

JIT_LABEL(addrpn);
JIT_LABEL(subrpn);
JIT_LABEL(mulrpn);
JIT_LABEL(divrpn);
JIT_LABEL(pushval);


#endif // JIT_FUNCTIONS_H

