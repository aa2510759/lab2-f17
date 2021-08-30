/*#include "types.h"
#include "user.h"

// Prevent this function from being optimized, which might give it closed form
#pragma GCC push_options
#pragma GCC optimize("O0")
static uint
factorial(uint n)
{
    if (n == 0)
        return 0;
    return n + factorial(n - 1);
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
    printf(1, "Lab 3: Recursing %d levels\n", n);
    m = factorial(n);
    printf(1, "Lab 3: Yielded a value of %d\n", m);
    exit();
}*/
#include "types.h"
#include "user.h"

#pragma GCC push_options
#pragma GCC optimize("O0")
static int
recursive(int n_start)
{
    //printf(1, "current val is: %d\n", n_start);
    // sleep(15);

    if (n_start == 0)
        return 0;
    return n_start + recursive(n_start - 1);
}
#pragma GCC pop_options

int main(int argc, char *argv[])
{
    int m;
    int n_start = 1;
    int i = 0;
    int new_n = 0;
    int x = 1;
    printf(1, "The program is stXarting at 9 levels and incrementing in multiplies of 9\n");
    for (i = 0; i < 4; i++)
    {
        printf(1, "Iteration: # %d\n", x);
        printf(1, "This Program is Recursing at %d levels\n", n_start);
        m = recursive(n_start);
        printf(1, "The Yielded value is %d\n", m);
        new_n = n_start * 6;
        n_start = new_n;
        x++;
    }
    exit();
}