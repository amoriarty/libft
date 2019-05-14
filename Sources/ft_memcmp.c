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
/// @param s1 Left hand string to compare
/// @param s2 Right hand string to compare
/// @param n Size of string
/// @returns Zero if the two strings is identical, the difference between
///     the two first differing character
int			ft_memcmp(const void *s1, const void *s2, size_t n)
{
	size_t		i;

	i = 0;
	while (i < n)
	{
		if (*(unsigned char *)s1 != *(unsigned char *)s2)
			return (*(unsigned char *)s1 - *(unsigned char *)s2);
		i++;
		s1++;
		s2++;
	}
	return (0);
}
