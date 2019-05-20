/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 16:46:40 by alegent           #+#    #+#             */
/*   Updated: 2017/04/19 10:34:21 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write an integer to a file descriptor
/// @param number Integer to write
/// @param fd File descriptor to write to
void		ft_putnbr_fd(int number, int fd)
{
	char	*string;

	string = ft_itoa(number);
	ft_putstr_fd(string, fd);
    ft_strdel(&string);
}
