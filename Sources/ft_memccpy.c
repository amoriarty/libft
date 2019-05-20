/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 19:01:47 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 16:51:07 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Copy string until character found, including it
/// @param destination Destination string
/// @param source Source string
/// @param character Character stoping copy to be executed
/// @param length Size to copy
/// @returns Pointer after founded character in destination string, NULL otherwise
void    *ft_memccpy(void *destination, const void *source, int character, size_t length)
{
    void    *character_pointer;
    size_t  adjusted_length;

    if (destination == NULL)
        return (NULL);
    if (source == NULL)
        return (destination);
    character_pointer = ft_memchr(source, character, length);
    adjusted_length = character_pointer != NULL
                        ? (size_t) (character_pointer - source) + 1
                        : length;
    ft_memcpy(destination, source, adjusted_length);
    return (character_pointer != NULL ? destination + adjusted_length : NULL);
}
