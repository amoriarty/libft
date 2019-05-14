/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 13:03:31 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:44:11 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write an integer to STDOUT
/// @param n Integer to write
void		ft_putnbr(int n)
{
	ft_putnbr_fd(n, STDOUT_FILENO);
}
