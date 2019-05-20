/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 19:59:06 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 17:16:42 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Compare byte string
/// @param left Left hand string to compare
/// @param right Right hand string to compare
/// @param length Size of string
/// @returns Zero if the two strings is identical, the difference between
///     the two first differing character
int			ft_memcmp(const void *left, const void *right, size_t length)
{
    size_t          iterator;
    unsigned char   *left_pointer;
    unsigned char   *right_pointer;

    iterator = 0;
    left_pointer = (unsigned char *) left;
    right_pointer = (unsigned char *) right;
    if (left == NULL || right == NULL)
        return (0);
    while (iterator < length)
    {
        if (*(left_pointer + iterator) != *(right_pointer + iterator))
            return (*(left_pointer + iterator) - *(right_pointer + iterator));
        iterator += 1;
    }
    return (0);
}
