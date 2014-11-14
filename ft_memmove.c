/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 19:12:29 by alegent           #+#    #+#             */
/*   Updated: 2014/11/14 13:07:50 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void		*ft_memmove(void *dst, const void *src, size_t len)
{
	size_t		i;
	size_t		zero;
	char		*tmp;

	i = 0;
	zero = 0;
	tmp = ft_memalloc(len);
	while (i < len)
	{
		tmp[i] = *(char *)src;
		src++;
		i++;
	}
	i = 0;
	while (i < len)
	{
		*(char *)dst = tmp[i];
		dst++;
		i++;
	}
	while (i > zero)
	{
		i--;
		dst--;
	}
	return (dst);
}
