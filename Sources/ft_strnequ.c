/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnequ.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:24:48 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:43 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Size-bounded strings comparaision
/// @param left Left hand string to compare
/// @param right Right hand string to compare
/// @param length Size to compare
/// @returns Zero if string are identicals, the difference between the two
///     first differing character otherwise
t_bool  ft_strnequ(char const *left, char const *right, size_t length)
{
    return (ft_strncmp(left, right, length) == 0 ? TRUE : FALSE);
}
