//
//  fatal_error.c
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"
#include "printf.h"

/// Force program execution to stop, printing message on STDOUT beforehand
/// @param message Message to print on STDOUT before stopping program execution
void    fatal_error(const char *message, ...)
{
    va_list     list;

    va_start(list, message);
    ft_vdprintf(STDERR_FILENO, message, list);
    va_end(list);
    exit(EXIT_FAILURE);
}
