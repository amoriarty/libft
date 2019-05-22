/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 12:23:31 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:18 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Find length of string
/// @param source String to calculate length
/// @returns Size of the string
size_t  ft_strlen(const char *source)
{
    return (ft_strclen(source, 0));
}
