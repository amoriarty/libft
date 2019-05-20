/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:48:53 by alegent           #+#    #+#             */
/*   Updated: 2015/03/16 10:43:53 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Concatenate string into a newly allocate string
/// @param left Left hand string to concatenate
/// @param right Right hand string to concatenate
/// @returns Newly allocated string, concatanation of the two strings
char		*ft_strjoin(char const *left, char const *right)
{
    size_t  length;
    char    *joined;

    length = ft_strlen(left) + ft_strlen(right);
    joined = ft_strnew(length);
    ft_strcpy(joined, left);
    ft_strcat(joined, right);
    return (joined);
}
