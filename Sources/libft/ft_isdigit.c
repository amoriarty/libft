/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 18:30:11 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:29:38 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Decimal-digit character test
/// @param character Character to test
/// @returns True is character is a decimal-digit, false otherwise
t_bool  ft_isdigit(int character)
{
    return (character >= '0' && character <= '9');
}
