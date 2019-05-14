/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 12:48:28 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:44:51 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a string to STDOUT
/// @param s String to write
void		ft_putstr(char const *s)
{
	ft_putstr_fd(s, STDOUT_FILENO);
}
