#ifndef MALLOC_X
#define MALLOC_X 1

#include <cstdlib>

#include <sys/mman.h>

void* mallocx(size_t len)
{
    void* addr = NULL;
    int fd = 0;
    int protect = PROT_READ | PROT_WRITE | PROT_EXEC;
    int flags = MAP_ANONYMOUS | MAP_PRIVATE;
    int offset = 0;

    return mmap(addr, len, protect, flags, fd, offset);
}

#endif // MALLOC_X
