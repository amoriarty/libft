/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tolower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 12:08:32 by alegent           #+#    #+#             */
/*   Updated: 2014/11/04 12:09:44 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Convert an uppercase character to it's lower case equivalent
/// @param character Character to convert
/// @returns Converted character if parameter is an uppercase character,
///     character passed as parameter otherwise
int			ft_tolower(int character)
{
    return (ft_isupper(character) ? character + 32 : character);
}
