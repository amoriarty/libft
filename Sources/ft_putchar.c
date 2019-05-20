/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 12:41:45 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:42:22 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write a character to STDOUT
/// @param character Character to write
void		ft_putchar(char character)
{
	ft_putchar_fd(character, STDOUT_FILENO);
}
