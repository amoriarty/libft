/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 15:03:34 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:48:54 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Apply `function` on each character of a string, precising it's index as first argument
/// @param string String to apply `f` to
/// @param function Function to apply on each character
void    ft_striteri(char *string, void (*function)(unsigned int, char *))
{
    unsigned int    iterator;

    iterator = 0;
    while (string[iterator])
    {
        (*function)(iterator, string + iterator);
        iterator += 1;
    }
}
