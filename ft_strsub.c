/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:32:41 by alegent           #+#    #+#             */
/*   Updated: 2014/11/14 18:30:08 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strsub(char const *s, unsigned int start, size_t len)
{
	size_t		x;
	char		*res;

	if (s == NULL)
		return (NULL);
	x = 0;
	res = ft_strnew((len - start));
	if (res == NULL)
		return (NULL);
	while (x < len + 1)
	{
		res[x] = s[start];
		x++;
		start++;
	}
	return (res);
}
