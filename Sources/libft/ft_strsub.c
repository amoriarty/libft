/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:32:41 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:50:18 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Locate and copy a substring of a string into a newly allocated string
/// @param source String to copy
/// @param start Start of the substring in `source`
/// @param length Length of the substring to copy
/// @returns Newly allocated string, copy of the substring defined
char		*ft_strsub(char const *source, unsigned int start, size_t length)
{
    char    *substring;

    substring = ft_strnew(length);
    ft_strncpy(substring, source + start, length);
    return (substring);
}
