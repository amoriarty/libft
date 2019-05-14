/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isblank.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/14 11:57:15 by alegent           #+#    #+#             */
/*   Updated: 2015/04/14 11:57:16 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Space or tab character test
/// @param c Character to test
/// @returns True if character is a space or tab, false otherwise
int			ft_isblank(int c)
{
	if (c == ' ' || c == '\n' || c == '\t'
			|| c == '\a' || c == '\v' || c == '\f')
		return (TRUE);
	return (FALSE);
}
