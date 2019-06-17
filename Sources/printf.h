//
//  printf.h
//  libft
//
//  Created by Alex Legent on 13/06/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#ifndef PRINTF_H
# define PRINTF_H
# include <unistd.h>
# include <stdarg.h>

// MARK:- Standart API

int     ft_printf(const char *format, ...);
int     ft_sprintf(char *destination, const char *format, ...);
int     ft_snprintf(char *destination, size_t size, const char *format, ...);
int     ft_asprintf(char **destination, const char *format, ...);
int     ft_dprintf(int fd, const char *format, ...);

// MARK:- VA_LIST API

int     ft_vprintf(const char *format, va_list list);
int     ft_vsprintf(char *destination, const char *format, va_list list);
int     ft_vsnprintf(char *destination, size_t size, const char *format, va_list list);
int     ft_vasprintf(char **destination, const char *format, va_list list);
int     ft_vdprintf(int fd, const char *format, va_list list);

#endif
