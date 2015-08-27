#include <cstdio>
#include <cstring>

#include "mallocx.h"

#include "jit_functions.h"
#include "rpnexpr.h"

#define MAX_BUFF_SIZE 1024

const int SIZE = 10;

int main()
{
    int iterations;
    _MUTE_UNUSED_RESULT(scanf("%d", &iterations));

    char expr[MAX_BUFF_SIZE];
    PTR args[SIZE];

    _MUTE_UNUSED_RESULT(scanf("%s", expr));
    RPNExpr code(expr, SIZE);

    while (iterations--)
    {
        for (int i=0;i<SIZE; ++i)
        {
            _MUTE_UNUSED_RESULT(scanf("%lld", &args[i]));
        }
        code.PassArgs(args);
        printf("%lld\n", code());
    }
    return 0;
}
