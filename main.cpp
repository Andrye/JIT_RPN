#include <cstdio>
#include <cstring>

#include "mallocx.h"

#include "jit_functions.h"
#include "code.h"

extern void* mallocx(size_t);

void add(int& x, int& y)
{
    x += y;
}

int main()
{
    printf("%lld\n",pushval_varA_offset());
    void* ptr = mallocx(1000*sizeof(int));
    memcpy(ptr, reinterpret_cast<void*>(pushval), pushval_size());
    PTR* arg = (PTR*)((PTR)ptr + pushval_varA_offset());
    *arg = 7;
    int x = 2, y = 3;

    init((PTR) ptr);

    addrpn();
    printf("x : %d\ny : %d\n", x, y);
    puts("I am back");
    printf("x : %d\ny : %d\n", x, y);
}
