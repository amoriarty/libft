//
//  fatal_error.c
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Force program execution to stop, printing message on STDOUT beforehand
/// @param message Message to print on STDOUT before stopping program execution
void    fatal_error(const char *message)
{
    ft_putendl(message);
    exit(EXIT_FAILURE);
}
