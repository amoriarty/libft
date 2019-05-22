/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 11:25:05 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:48:35 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Deallocate string
/// @param memory String to deallocate
void    ft_strdel(char **memory)
{
    ft_memdel((void **) memory);
}
