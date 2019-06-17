//
//  ft_sprintf.c
//  libft
//
//  Created by Alex Legent on 17/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "printf.h"

int     ft_sprintf(char *destination, const char *format, ...)
{
    int         result;
    va_list     list;

    va_start(list, format);
    result = ft_vsprintf(destination, format, list);
    va_end(list);
    return (result);
}
