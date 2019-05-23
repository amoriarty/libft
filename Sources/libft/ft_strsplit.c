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

/// Split a character into an array of string, seperated by character
/// @param source String to split
/// @param separator Splitting character
/// @returns Array of splitting strings
char        **ft_strsplit(const char *source, char separator)
{
    char    **result;
    t_list  *list;

    list = list_strsplit(source, separator);
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
