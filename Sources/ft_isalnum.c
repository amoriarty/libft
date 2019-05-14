/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 11:44:28 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:24:23 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Alphanumeric character test
/// @param c Character to test
/// @return True if character is alphanumerical, false otherwise
int			ft_isalnum(int c)
{
	return ((ft_isalpha(c) == TRUE || ft_isdigit(c) == TRUE) ? TRUE : FALSE);
}
