/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 16:35:24 by alegent           #+#    #+#             */
/*   Updated: 2014/11/03 16:51:00 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Concatenate strings
/// @param s1 First part of the string, where s2 will be append
/// @param s2 String to append
/// @returns Concatanate string
char		*ft_strcat(char *s1, const char *s2)
{
	int		i;
	int		x;

	i = 0;
	x = 0;
	while (s1[i] != '\0')
		i++;
	while (s2[x] != '\0')
	{
		s1[i] = s2[x];
		i++;
		x++;
	}
	s1[i] = '\0';
	return (s1);
}
