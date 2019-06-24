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
    char    *buffer;

    result = ft_vasprintf(&buffer, format, list);
    ft_putstr_fd(buffer, fd);
    ft_strdel(&buffer);
    return (result);
}
