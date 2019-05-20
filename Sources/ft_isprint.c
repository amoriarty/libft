/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 11:58:24 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 11:31:02 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Printing character test (space character inclusive)
/// @param character Character to test
/// @returns True is character is a printing character, false otherwise
t_bool  ft_isprint(int character)
{
    return (character > 31 && character < 127);
}
