/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 16:19:26 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 16:25:21 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strncpy(char *dst, const char *src, size_t n)
{
	unsigned int		i;

	i = 0;
	while (src[i] != '\0' && i < n && src && dst)
	{
		dst[i] = src[i];
		i++;
	}
	while (i < n && src && dst)
	{
		dst[i] = '\0';
		i++;
	}
	return (dst);
}
