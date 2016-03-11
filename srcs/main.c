#include "fillit.h"

int                 main(int ac, char **av)
{
    if (ac != 2)
        ft_puterror(PROG_NAME, "usage: ./fillit tetriminos_file");
    ft_putendl(av[1]);
    return (42);
}
