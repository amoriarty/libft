/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 19:12:29 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:46:48 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Copy byte string, allocating memory if needed
/// @param destination Destination memory
/// @param source Source memory
/// @param length Size to copy
/// @returns Pointer to newly allocated memory
#warning 'ft_memmove' shouldn't behave as 'ft_memcpy' or should be removed
void    *ft_memmove(void *destination, const void *source, size_t length)
{
    return (ft_memcpy(destination, source, length));
}
