/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 14:36:10 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 17:03:56 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Locate character in string, from the end of the string
/// @param source String where locate character
/// @param character Character to locate in string
/// @returns Pointer to character find in string
char    *ft_strrchr(const char *source, int character)
{
    int iterator;

    iterator = (int) ft_strlen(source);
    while (iterator >= 0)
    {
        if (source[iterator] == character)
            return ((char *) source + iterator);
        iterator -= 1;
    }
    return (NULL);
//    int        len;
//
//    len = ft_strlen(s);
//    while (len >= 0)
//    {
//        if (s[len] == c)
//            return ((char *)s + len);
//        len--;
//    }
//    return (NULL);
}
