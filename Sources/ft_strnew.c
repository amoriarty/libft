/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 11:19:08 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 19:06:57 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Allocate a new string
/// @param size Size to allocate
/// @returns Newly allocated string
char    *ft_strnew(size_t size)
{
    char    *string;

    if (size == 0)
        return (NULL);
    size += 1;
    string = (char *) ft_memalloc(size);
    ft_bzero(string, size);
    return (string);
}
