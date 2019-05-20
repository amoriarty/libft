/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 18:23:17 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:45:46 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Write zeroes to a byte string
/// @param buffer String to write zeroes on
/// @param length Size of the string
void		ft_bzero(void *buffer, size_t length)
{
    ft_memset(buffer, 0, length);
}
