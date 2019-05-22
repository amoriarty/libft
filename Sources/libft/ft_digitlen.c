/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_digitlen.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/16 09:25:41 by alegent           #+#    #+#             */
/*   Updated: 2015/03/16 12:03:04 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Calculate the number of character composing an integer
/// @param number Integer to calculate lenght
size_t  ft_digitlen(int number)
{
    char    *string;
    size_t  length;

    string = ft_itoa(number);
    length = ft_strlen(string);
    ft_strdel(&string);
    return (length);
}
