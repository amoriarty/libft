/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 14:49:05 by alegent           #+#    #+#             */
/*   Updated: 2014/11/17 10:31:58 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_cmp(const char *s1, const char *s2)
{
	int		i;

	i = 0;
	while (s1[i] != '\0')
	{
		if (s1[i] != s2[i])
			return (FALSE);
		i++;
	}
	return (TRUE);
}

char		*ft_strstr(const char *s1, const char *s2)
{
	int		i;
	char	*dst;

	i = 0;
	dst = (char *)malloc(sizeof(char) * ft_strlen(s1));
	if (*s2 == 0)
		return ((char *)s1);
	while (*s1 != *s2)
	{
		if (*s1 == '\0')
			return (NULL);
		s1++;
	}
	if (ft_cmp(s1, s2) == FALSE)
		return (NULL);
	while (*s1 != '\0')
	{
		dst[i] = *s1;
		s1++;
		i++;
	}
	dst[i] = '\0';
	return (dst);
}
