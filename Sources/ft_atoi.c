/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/14 17:50:50 by alegent           #+#    #+#             */
/*   Updated: 2014/11/14 18:00:25 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Convert ASCII string to integer
/// @param string String to convert to integer
int ft_atoi(const char *string)
{
    int     result;
    int     iterator;
    char    *trimmed;

    result = 0;
    trimmed = ft_strtrim(string);
    iterator = trimmed[0] == '-' || trimmed[0] == '+' ? 1 : 0;
    while (string[iterator])
    {
        if (!ft_isdigit(string[iterator]))
            break;
        result *= 10;
        result += string[iterator] - '0';
        iterator += 1;
    }
    if (trimmed[0] == '-')
        result *= -1;
    ft_strdel(&trimmed);
    return (result);
}
