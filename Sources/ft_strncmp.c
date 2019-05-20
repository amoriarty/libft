/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 18:12:20 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:35 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Size-bounded string comparasion
/// @param left Left hand string to compare
/// @param right Right hand string to compare
/// @param length Size to compare
/// @returns Zero if string are identicals, the difference between the two
///     first differing character otherwise
int			ft_strncmp(const char *left, const char *right, size_t length)
{
    return (ft_memcmp(left, right, length));
}
