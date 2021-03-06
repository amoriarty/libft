/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 16:42:05 by alegent           #+#    #+#             */
/*   Updated: 2014/11/04 16:44:27 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a string to a file descriptor, append by a carriage return
/// @param string String to write
/// @param fd File descriptor to write to
void		ft_putendl_fd(char const *string, int fd)
{
    char    *joinned;

    joinned = ft_strjoin(string, "\n");
	ft_putstr_fd(joinned, fd);
    ft_strdel(&joinned);
}
