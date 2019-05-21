/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/19 14:25:04 by alegent           #+#    #+#             */
/*   Updated: 2015/02/11 12:20:54 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Locate a substring in a string
/// @param haystack String to locate substring in
/// @param needle Substring to locate string
/// @param length Size to search for
/// @returns Pointer to head of the needle in the haystack if found, NULL otherwise
char    *ft_strnstr(const char *haystack, const char *needle, size_t length)
{
    size_t  iterator;
    size_t  needle_length;

    iterator = 0;
    needle_length = ft_strlen(needle);
    while (iterator < length)
    {
        if (ft_strnequ(haystack + iterator, needle, needle_length))
            return ((char *) haystack + iterator);
        iterator += 1;
    }
    return (NULL);
}
