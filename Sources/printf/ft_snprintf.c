//
//  ft_snprintf.c
//  libft
//
//  Created by Alex Legent on 17/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "printf.h"

int     ft_snprintf(char *destination, size_t size, const char *format, ...)
{
    int         result;
    va_list     list;

    va_start(list, format);
    result = ft_vsnprintf(destination, size, format, list);
    va_end(list);
    return (result);
}
