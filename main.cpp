#include <cstdio>
#include <cstring>

#include "mallocx.h"

#include "jit_functions.h"

extern void* mallocx(size_t);

void add(int& x, int& y)
{
    x += y;
}

int main()
{
    printf("%lld\n",vars_offset());
    void* ptr = mallocx(1000*sizeof(int));
    memcpy(ptr, reinterpret_cast<void*>(pushval), pushval_size());
    long long* arg = (long long*)((PTR)ptr + vars_offset());
    *arg = 7;
    int x = 2, y = 3;

    init((unsigned long long) &x, (unsigned long long) &y, (long long) ptr);

    addrpn();
    printf("x : %d\ny : %d\n", x, y);
    puts("I am back");
    printf("x : %d\ny : %d\n", x, y);
}
