/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 20:06:06 by alegent           #+#    #+#             */
/*   Updated: 2015/02/16 14:32:22 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void		*ft_memalloc(size_t size)
{
	void	*mem;

	mem = (void *)malloc(sizeof(char) * size);
	ft_bzero(mem, size);
	if (mem == NULL || size == 0)
		return (NULL);
	return (mem);
}
