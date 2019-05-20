/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 18:00:00 by alegent           #+#    #+#             */
/*   Updated: 2014/12/30 12:18:49 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Compare strings
/// @param left Left hand string to compare
/// @param right Right hand string to compare
/// @returns Zero if strings are identicals, the difference between the two
///     first differing characters
int			ft_strcmp(const char *left, const char *right)
{
    size_t  length;
    size_t  left_length;
    size_t  right_length;

    left_length = ft_strlen(left);
    right_length = ft_strlen(right);
    length = left_length < right_length ? right_length : left_length;
    return (ft_memcmp(left, right, length));
}
