/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 16:19:26 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 17:24:58 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Size-bounded string copying
/// @param destination Destination string
/// @param source Source string
/// @param length Size to copy
/// @returns Head pointer to destination string
char		*ft_strncpy(char *destination, const char *source, size_t length)
{
    size_t  source_length;

    source_length = ft_strlen(source);
    return ((char *) ft_memcpy(destination, source, length < source_length ? length : source_length));
}
