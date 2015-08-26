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
    void* ptr = mallocx(1000*sizeof(int));
    memcpy(ptr, reinterpret_cast<void*>(add), 34);

    int x = 2, y = 3;

    init((unsigned long long) &x, (unsigned long long) &y, (long long) ptr);

    addrpn();
    printf("x : %d\ny : %d\n", x, y);
    puts("I am back");
    printf("x : %d\ny : %d\n", x, y);
}
