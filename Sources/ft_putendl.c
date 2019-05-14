/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 16:18:45 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:43:29 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a string to STDOUT, follow by a carriage return.
/// @param s String to write on STDOUT.
void		ft_putendl(char const *s)
{
	ft_putendl_fd(s, STDOUT_FILENO);
}
