/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 12:22:54 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:48:50 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Apply `function` on each character of a string
/// @param string String to apply `f` to
/// @param function Function to apply on each character
void    ft_striter(char *string, void (*function)(char *))
{
    unsigned int    iterator;

    iterator = 0;
    while (string[iterator])
    {
        (*function)(string + iterator);
        iterator += 1;
    }
}
