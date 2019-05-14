/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putcolor.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/30 12:31:24 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:42:54 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a string in a particular color on STDOUT
/// @param str String to write
/// @param color Color to write string with
void				ft_putcolor(char *str, char *color)
{
	ft_putcolor_fd(str, color, STDOUT_FILENO);
}
