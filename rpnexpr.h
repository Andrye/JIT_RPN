#ifndef RPNEXPR_H
#define RPNEXPR_H 1

#include "jit_macros.h"
#include "jit_functions.h"
#include <cstring>


struct RPNExpr
{
    RPNExpr(char* expr, int argc) :
        sExpr(expr),
        ExMem(NULL),
        len(0),
        Argc(argc),
        ExprArgs()
    {
        ExprArgs = new PTR[argc];
        Compile();
    }

    ~RPNExpr()
    {
        if (ExMem != NULL)
        {
            munmap(ExMem, len);
        }
        if(ExprArgs != NULL)
        {
            delete[] ExprArgs;
        }
    }

    void PassArgs(PTR* argv)
    {
        for (int i=0; i<Argc; ++i)
        {
            ExprArgs[i] = argv[i];
        }
    }

    PTR operator()()
    {
        return init((PTR)ExMem);
    }

private:
    void AllocateMemory()
    {
        ExMem = mallocx(len); 
    }

    void GenerateCode()
    {
        len = 0;
        APPEND_FUNC2(ExMem, prologue, ExprArgs, Argc);
        for (char* sPtr = sExpr; *sPtr; ++sPtr)
        {
            switch(*sPtr)
            {
                case '+': APPEND_FUNC0(ExMem, addrpn); break;
                case '-': APPEND_FUNC0(ExMem, subrpn); break;
                case '*': APPEND_FUNC0(ExMem, mulrpn); break;
                case '/': APPEND_FUNC0(ExMem, divrpn); break;
                default:
                    int idx = *sPtr - '0';
                    APPEND_FUNC1(ExMem, pushval, idx);
            }
        }
        APPEND_FUNC0(ExMem, epilogue);
    }

    void Compile()
    {
        len = prologue_size() + epilogue_size();

        for (char* sPtr = sExpr; *sPtr; ++sPtr)
        {
            switch(*sPtr)
            {
                case '+': len += addrpn_size(); break;
                case '-': len += subrpn_size(); break;
                case '*': len += mulrpn_size(); break;
                case '/': len += divrpn_size(); break;
                default: len += pushval_size();
            }
        }

        AllocateMemory();
        GenerateCode();
    }

    char*       sExpr;
    void*       ExMem;
    size_t      len;
    int         Argc;
    PTR*        ExprArgs;
};

#endif // RPNEXPR_H
