/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/08 16:01:39 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:52:13 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "list.h"

static void *uncasted_strdup(void *source);

#warning 'ft_strsplit' should use 'list_strsplit' and 'list_to_array' instead.
/// Split a character into an array of string, seperated by c
/// @param source String to split
/// @param seperator Splitting character
/// @returns Array of splitting strings
char        **ft_strsplit(const char *source, char seperator)
{
    size_t  length;
    char    *offset;
    char    *substring;
    char    **result;
    t_list  *list;

    list = list_new();
    offset = (char *) source;
    while (*offset)
    {
        if (*offset == seperator)
        {
            offset += 1;
            continue;
        }
        length = ft_strclen(offset, seperator);
        substring = ft_strsub(offset, 0, length);
        offset += length;
        list_append(list, substring);
    }
    result = (char **) list_to_array(list, uncasted_strdup);
    list_free(&list, free);
    return (result);
}

/// An strdup use by list_to_array with raw pointers
/// @param source String to duplicate
/// @returns Raw pointer on the duplicated string
static void *uncasted_strdup(void *source)
{
    return (void *) ft_strdup((char *) source);
}
