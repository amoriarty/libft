/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 10:48:45 by alegent           #+#    #+#             */
/*   Updated: 2014/11/17 16:33:45 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Deallocate memory passed
/// @param memory Pointer to the memory to deallocate
void		ft_memdel(void **memory)
{
    free(*memory);
    *memory = NULL;
}
