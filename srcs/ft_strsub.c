/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:32:41 by alegent           #+#    #+#             */
/*   Updated: 2014/11/07 14:16:54 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strsub(char const *s, unsigned int start, size_t len)
{
	size_t		x;
	char		*res;

	x = 0;
	res = ft_strnew((len - start) + 1);
	if (res == NULL)
		return (NULL);
	while (x < len)
	{
		res[x] = s[start - 1];
		x++;
		start++;
	}
	return (res);
}
