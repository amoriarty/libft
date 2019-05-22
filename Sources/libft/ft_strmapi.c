/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 15:46:38 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:27 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Apply function `function` with an index parameter to string into a newly allocated string
/// @param source String to apply `function` to
/// @param function Function to apply on string
/// @returns Newly allocated string where `function` is applied
char    *ft_strmapi(char const *source, char (*function)(unsigned int, char))
{
    size_t          length;
    char            *mapped;
    unsigned int    iterator;

    iterator = 0;
    length = ft_strlen(source);
    mapped = ft_strnew(length);
    while (source[iterator])
    {
        mapped[iterator] = function(iterator, source[iterator]);
        iterator += 1;
    }
    return (mapped);
}
