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
#include <limits.h>

static int     parse(char *destination, const char *format, va_list list);

int     ft_vsprintf(char *destination, const char *format, va_list list)
{
    char    *offset;
    size_t  lenght;

    offset = (char *) format;
    while (*offset)
    {
        if (*offset == '%')
        {
            offset += parse(destination, offset, list);
            continue;
        }
        lenght = ft_strclen(offset, '%');
        ft_strncat(destination, offset, lenght);
        offset += lenght;

    }
    return ((int) ft_strlen(destination));
}

static int  parse(char *destination, const char *format, va_list list)
{
    (void)list;
    if (*(format + 1) == '%')
    {
        ft_strcat(destination, "%");
        return (2);
    }
    return (1);
}
