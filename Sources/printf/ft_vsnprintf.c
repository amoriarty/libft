//
//  ft_vsnprintf.c
//  libft
//
//  Created by Alex Legent on 17/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"
#include "printf.h"

int     ft_vsnprintf(char *destination, size_t size, const char *format, va_list list)
{
    int result;

    result = ft_vsprintf(destination, format, list);
    ft_strreplace(&destination, ft_strsub(destination, 0, size));
    return (result);
}
