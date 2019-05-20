/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 18:19:47 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:26:29 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Alphabetic character test
/// @param character Character to test
/// @returns True is character is alphabetic, false otherwise
t_bool  ft_isalpha(int character)
{
    return (ft_islower(character) || ft_isupper(character));
}
