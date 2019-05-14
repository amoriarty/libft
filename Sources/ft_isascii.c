/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isascii.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 11:50:24 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:27:47 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// ASCII character test
/// @param c Character to test
/// @returns True if character is in ASCII table, false otherwise
int			ft_isascii(int c)
{
	return ((c >= 0 && c < 128) ? TRUE : FALSE);
}
