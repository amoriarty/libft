/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 15:46:06 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:48:31 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Copy strings
/// @param destination Destination string
/// @param source Source string
/// @returns Pointer of the head of destination string
char    *ft_strcpy(char *destination, const char *source)
{
    size_t  length;

    length = ft_strlen(source);
    return ((char *) ft_memcpy(destination, source, length));
}
