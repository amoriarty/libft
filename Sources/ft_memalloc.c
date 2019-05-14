/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 20:06:06 by alegent           #+#    #+#             */
/*   Updated: 2015/02/23 11:28:50 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Allocate memory
/// @param size Size of the memory to allocate
/// @returns Pointer to newly allocated memory, or NULL if an error occured
void		*ft_memalloc(size_t size)
{
	void	*mem;

	mem = (void *)malloc(sizeof(char) * size);
	if (mem == NULL || size == 0)
		return (NULL);
	return (mem);
}
