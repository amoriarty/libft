/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isascii.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 11:50:24 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:27:47 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// ASCII character test
/// @param character Character to test
/// @returns True if character is in ASCII table, false otherwise
t_bool  ft_isascii(int character)
{
    return (character >= 0 && character < 128);
}
