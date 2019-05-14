/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:56:19 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:50:23 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Trim blank character at start and end of a string
/// @param s String to trim
/// @returns Newly allocated string without blank character
char			*ft_strtrim(char const *s)
{
	int		i;
	int		x;
	char	*res;

	if (s == NULL)
		return (NULL);
	i = 0;
	x = 0;
	if ((res = ft_strnew(ft_strlen(s))) == NULL)
		return (NULL);
	while (ft_isblank(s[i]) == TRUE)
		i++;
	while (s[i] != '\0')
	{
		res[x] = s[i];
		i++;
		x++;
	}
	x--;
	while (ft_isblank(res[x]) == TRUE)
	{
		res[x] = '\0';
		x--;
	}
	return (res);
}
