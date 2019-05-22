/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 11:44:28 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:24:23 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Alphanumeric character test
/// @param character Character to test
/// @return True if character is alphanumerical, false otherwise
t_bool  ft_isalnum(int character)
{
    return (ft_isalpha(character) || ft_isdigit(character));
}
