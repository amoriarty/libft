/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 17:42:46 by alegent           #+#    #+#             */
/*   Updated: 2014/11/04 10:22:17 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int		ft_digitlen(const char *str)
{
	int		i;
	int		res;

	i = 1;
	res = 0;
	if (str[i] == '-')
		i++;
	while (str[i] >= '0' && str[i] <= '9')
	{
		res++;
		i++;
	}
	return (res);
}

static int		ft_power(int digitlen)
{
	int		i;
	int		res;

	i = 1;
	res = 1;
	while (i < digitlen)
	{
		res *= 10;
		i++;
	}
	return (res);
}

int				ft_atoi(const char *str)
{
	int		i;
	int		is_neg;
	int		digitlen;
	int		res;

	i = 0;
	is_neg = FALSE;
	digitlen = ft_digitlen(str);
	res = 0;
	if (str[i] == '-')
	{
		is_neg = TRUE;
		i++;
	}
	while (str[i] >= '0' && str[i] <= '9')
	{
		res += (str[i] - '0') * ft_power(digitlen);
		i++;
		digitlen--;
	}
	if (is_neg == TRUE)
		res = -res;
	return (res);
}
