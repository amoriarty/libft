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
/// @param dst Destination memory
/// @param src Source memory
/// @param n Size to copy
/// @returns Pointer of the destination memory
void		*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t		i;
	char		*pdst;

	i = 0;
	pdst = (char *)dst;
	while (i < n)
	{
		*(char *)dst = *(char *)src;
		i++;
		dst++;
		src++;
	}
	return ((void *)pdst);
}
