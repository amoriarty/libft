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

/// Copy string until character found
/// @param dst Destination string
/// @param src Source string
/// @param c Character stoping copy to be executed
/// @param n Size to copy
/// @returns Destination string
void		*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	size_t		i;

	i = 0;
	while (i < n)
	{
		*(unsigned char *)dst = *(unsigned char *)src;
		if (*(unsigned char *)dst == (unsigned char)c)
		{
			dst++;
			return (dst);
		}
		i++;
		dst++;
		src++;
	}
	return (NULL);
}
