//
//  ft_printf.c
//  libft
//
//  Created by Alex Legent on 13/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "printf.h"

int     ft_printf(const char *format, ...)
{
    int         result;
    va_list     list;

    va_start(list, format);
    result = ft_vprintf(format, list);
    va_end(list);
    return (result);
}
