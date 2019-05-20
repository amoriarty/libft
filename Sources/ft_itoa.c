/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/18 18:35:25 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:35:27 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Convert interger to ASCII string
/// @param number Integer to convert
/// @returns Converted string
char    *ft_itoa(int number)
{
    int     iterator;
    int     absolute;
    int     remainder;
    char    result[12];

    if (number == 0)
        return (ft_strdup("0"));
    if (number == -2147483648)
        return (ft_strdup("-2147483648"));
    iterator = 11;
    absolute = ft_abs(number);
    ft_bzero(result, 12);
    while (absolute > 0)
    {
        iterator -= 1;
        remainder = absolute % 10;
        result[iterator] = ft_tochar(remainder);
        absolute -= remainder;
        absolute /= 10;
    }
    if (number < 0)
    {
        iterator -= 1;
        result[iterator] = '-';
    }
    return ft_strdup(result + iterator);
}
