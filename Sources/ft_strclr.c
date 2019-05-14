/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strclr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 11:32:48 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:46:56 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Replace all characters by zeroes
/// @param s String to clear
void		ft_strclr(char *s)
{
	ft_bzero(s, ft_strlen(s));
}
