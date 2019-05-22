/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequ.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 16:15:04 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:48:43 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Compare string
/// @param left Left hand string to compare
/// @param right Right hand string to compare
/// @return True if strings are identicals, false otherwise.
t_bool  ft_strequ(char const *left, char const *right)
{
    return (ft_strcmp(left, right) == 0 ? TRUE : FALSE);
}
