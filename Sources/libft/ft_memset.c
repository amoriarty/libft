/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 17:53:17 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:46:52 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Fill a byte string with a byte value
/// @param buffer Destination memory
/// @param character Byte value to write
/// @param length Size to write
/// @returns Start of memory pointer
void    *ft_memset(void *buffer, unsigned int character, size_t length)
{
    size_t          iterator;
    unsigned char   *pointer;

    iterator = 0;
    pointer = (unsigned char *) buffer;
    while (iterator < length)
    {
        pointer[iterator] = (unsigned char) character;
        iterator += 1;
    }
    return (buffer);
}
