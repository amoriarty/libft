/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 13:00:40 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:45:24 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Locate character in string
/// @param source String where locate character
/// @param character Character to locate in string
/// @returns Pointer to character find in string
char    *ft_strchr(const char *source, int character)
{
    size_t  length;

    length = ft_strlen(source);
    return ((char *) ft_memchr(source, character, length));
}
