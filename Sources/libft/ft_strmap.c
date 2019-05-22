/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 15:32:38 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:23 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Apply function `function` to string into a newly allocated string
/// @param source String to apply `f` to
/// @param function Function to apply on string
/// @returns Newly allocated string where `f` is applied
char    *ft_strmap(char const *source, char (*function)(char))
{
    size_t          length;
    char            *mapped;
    unsigned int    iterator;

    iterator = 0;
    length = ft_strlen(source);
    mapped = ft_strnew(length);
    while (source[iterator])
    {
        mapped[iterator] = function(source[iterator]);
        iterator += 1;
    }
    return (mapped);
}
