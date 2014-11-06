/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/06 10:16:38 by alegent           #+#    #+#             */
/*   Updated: 2014/11/06 16:03:35 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char		**ft_alloc(char **str, int len)
{
	int			i;
	char		**res;

	i = 0;
	res = (char **)malloc(sizeof(char *) * (len + 1));
	if (str != NULL)
	{
		while (i < len)
		{
			res[i] = str[i];
			i++;
		}
	}
	return (res);
}

char			**ft_strsplit(char const *s, char c)
{
	int			i;
	int			x;
	int			start;
	size_t		len;
	char		**res;

	i = 0;
	x = 0;
	start = 0;
	while (s[i] != '\0')
	{
		len = 0;
		while (s[i] != '\0' && s[i] == c)
			i++;
		start = i + 1;
		while (s[i] != '\0' && s[i] != c)
		{
			len++;
			i++;
		}
		res = ft_alloc(res, x);
		res[x] = ft_strsub(s, start, len);
		x++;
	}
	return (res);
}
