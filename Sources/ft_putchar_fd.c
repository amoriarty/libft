/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 16:22:35 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:47:37 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a character on a file descriptor
/// @param character Character to write
/// @param fd File descriptor to write to
void		ft_putchar_fd(char character, int fd)
{
	write(fd, &character, 1);
}
