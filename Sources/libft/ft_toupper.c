/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 12:03:11 by alegent           #+#    #+#             */
/*   Updated: 2014/11/17 16:52:07 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Convert an lowercase character to it's upper case equivalent
/// @param character Character to convert
/// @returns Converted character if parameter is an lowercase character,
///     character passed as parameter otherwise
int			ft_toupper(int character)
{
    return (ft_islower(character) ? character - 32 : character);
}
