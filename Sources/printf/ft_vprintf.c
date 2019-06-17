//
//  ft_vprintf.c
//  libft
//
//  Created by Alex Legent on 13/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "printf.h"

int     ft_vprintf(const char *format, va_list list)
{
    return (ft_vdprintf(STDOUT_FILENO, format, list));
}
