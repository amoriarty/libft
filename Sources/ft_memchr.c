/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 19:21:44 by alegent           #+#    #+#             */
/*   Updated: 2015/01/04 10:20:48 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Locate byte in byte string
/// @param source Byte string to search
/// @param character Character to found in string
/// @param length Size of the string
/// @returns Pointer on byte if found, `NULL` otherwise
void    *ft_memchr(const void *source, unsigned int character, size_t length)
{
    size_t          iterator;
    unsigned char   *pointer;

    iterator = 0;
    pointer = (unsigned char *)source;
    if (source == NULL)
        return (NULL);
    while (iterator < length)
    {
        if (*(pointer + iterator) == (unsigned char) character)
            return (pointer + iterator);
        iterator += 1;
    }
    return (NULL);
}
