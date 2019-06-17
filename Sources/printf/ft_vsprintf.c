//
//  ft_vsprintf.c
//  libft
//
//  Created by Alex Legent on 17/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"
#include "printf.h"
#include <locale.h>

int     ft_vsprintf(char *destination, const char *format, va_list list)
{
    (void)destination;
    (void)format;
    (void)list;
    setlocale(LC_ALL, "en_US.UTF-8");
    fatal_error("ft_vsprintf isn't implemented");
    return (0);
}