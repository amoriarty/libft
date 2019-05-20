/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 16:37:02 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:44:33 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a string to a file descriptor
/// @param string String to write
/// @param fd File descriptor to write to
void		ft_putstr_fd(char const *string, int fd)
{
    size_t  length;

    length = ft_strlen(string);
	write(fd, string, length);
}
