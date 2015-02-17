/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtoupper.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/17 10:34:23 by alegent           #+#    #+#             */
/*   Updated: 2015/02/17 10:40:53 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void				ft_strtoupper(char **s)
{
	int				i;

	i = -1;
	while (*s[++i])
		*s[i] = ft_toupper(*s[i]);
}
