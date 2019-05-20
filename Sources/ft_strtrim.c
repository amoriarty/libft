/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:56:19 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:50:23 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Trim blank character at start and end of a string
/// @param source String to trim
/// @returns Newly allocated string without blank character
char			*ft_strtrim(char const *source)
{
    unsigned int    start;
    size_t          end;

    start = 0;
    end = ft_strlen(source) - 1;
    while (ft_isblank(source[start]))
        start += 1;
    while (ft_isblank(source[end]))
        end -= 1;
    return ft_strsub(source, start, end - start + 1);
}
