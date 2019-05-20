/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 15:34:31 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:51:12 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Save a copy of a string
/// @param source String to copy
/// @return Newly allocated copied string 
char    *ft_strdup(const char *source)
{
    char    *duplicate;
    size_t  length;

    length = ft_strlen(source);
    duplicate = ft_strnew(length);
    return (ft_strcpy(duplicate, source));
}
