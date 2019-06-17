//
//  ft_vdprintf.c
//  libft
//
//  Created by Alex Legent on 13/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"
#include "printf.h"

int     ft_vdprintf(int fd, const char *format, va_list list)
{
    int     result;
    char    *destination;

    result = ft_vasprintf(&destination, format, list);
    ft_putstr_fd(destination, fd);
    ft_strdel(&destination);
    return (result);
}
