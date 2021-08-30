#include "types.h"
#include "user.h"

// Prevent this function from being optimized, which might give it closed form
#pragma GCC push_options
#pragma GCC optimize("O0")
static uint
recursion(uint n)
{
    if (n == 0)
        return 0;
    return n + recursion(n - 1);
}
#pragma GCC pop_options

int main(int argc, char *argv[])
{
    int n, m;

    if (argc != 2)
    {
        printf(1, "Usage: %s levels\n", argv[0]);
        exit();
    }

    n = atoi(argv[1]);
    printf(1, "Recursion: %d levels\n", n);
    m = recursion(n);
    printf(1, "Yielded value: %d\n", m);
    exit();
} /*
#include "types.h"
#include "user.h"

#pragma GCC push_options
#pragma GCC optimize("O0")
static int
factorial(int n_start)
{
    if (n_start == 0)
        return 0;
    return n_start + factorial(n_start - 1);
}
#pragma GCC pop_options

int main(int argc, char *argv[])
{
    int m;
    int n = 9;
    int i = 0;
    int o = 0;
    for (i = 0; i < 4; i++)
    {
        printf(1, "Recursion level: %d \n", n);
        m = factorial(n_start);
        printf(1, "The Yielded value is %d\n", m);
        o = n_start * 9;
        n_start = o;
    }
    exit();
}*/