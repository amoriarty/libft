/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/13 13:57:41 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:31 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Size-bounded concatanate string
/// @param left Left hand string to concatanate
/// @param right Right hand string to concatanate
/// @param length Size to concatenate
/// @returns Head pointer to concatanate string
char		*ft_strncat(char *left, const char *right, size_t length)
{
    size_t  offset;
    size_t  right_length;

    offset = ft_strlen(left);
    right_length = ft_strlen(right);
    ft_strncpy(left + offset, right, length < right_length ? length : right_length);
    return (left);
}
