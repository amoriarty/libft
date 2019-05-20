/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 18:50:38 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:46:42 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Copy memory area
/// @param destination Destination memory
/// @param source Source memory
/// @param length Size to copy
/// @returns Pointer of the destination memory
void    *ft_memcpy(void *destination, const void *source, size_t length)
{
    size_t  iterator;

    iterator = 0;
    if (destination == NULL)
        return (NULL);
    if (source == NULL)
        return (destination);
    while (iterator < length) {
        ft_memset(destination + iterator, *(unsigned char *)(source + iterator), 1);
        iterator += 1;
    }
    return (destination);
}
