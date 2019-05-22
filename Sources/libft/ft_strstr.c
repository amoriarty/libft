/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rdestreb <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/05 13:41:10 by rdestreb          #+#    #+#             */
/*   Updated: 2015/01/03 16:47:29 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Locate a substring in a string
/// @param haystack String to locate substring in
/// @param needle Substring to locate string
/// @returns Pointer to head of the needle in the haystack if found, NULL otherwise
char    *ft_strstr(const char *haystack, const char *needle)
{
    size_t  length;

    length = ft_strlen(haystack);
    return (ft_strnstr(haystack, needle, length));
}
