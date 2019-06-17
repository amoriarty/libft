//
//  ft_vasprintf.c
//  libft
//
//  Created by Alex Legent on 17/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"
#include "printf.h"
#include <limits.h>

int     ft_vasprintf(char **destination, const char *format, va_list list)
{
    int result;

    *destination = ft_strnew(INT_MAX);
    result = ft_vsprintf(*destination, format, list);
    ft_strreplace(destination, ft_strdup(*destination));
    return (result);
}
