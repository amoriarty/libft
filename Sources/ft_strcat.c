/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 16:35:24 by alegent           #+#    #+#             */
/*   Updated: 2014/11/03 16:51:00 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Concatenate strings
/// @param left First part of the string, where right will be append
/// @param right String to append
/// @returns Concatanate string
char    *ft_strcat(char *left, const char *right)
{
    size_t  length;

    length = ft_strlen(right);
    return (ft_strncat(left, right, length));
}
