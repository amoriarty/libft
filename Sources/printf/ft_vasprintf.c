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
    int     result;
    char    buffer[BUFF_SIZE + 1];

    ft_bzero(buffer, BUFF_SIZE + 1);
    result = ft_vsprintf(buffer, format, list);
    *destination = ft_strdup(buffer);
    return (result);
}
