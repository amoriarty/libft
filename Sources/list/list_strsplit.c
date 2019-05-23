//
//  list_strsplit.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Split a character into a list of string, seperated by character
/// @param source String to split
/// @param separator Splitting character
/// @returns List of splitting strings
t_list  *list_strsplit(const char *source, char separator)
{
    size_t  length;
    char    *offset;
    char    *substring;
    t_list  *list;

    list = list_new();
    offset = (char *) source;
    while (*offset)
    {
        if (*offset == separator)
        {
            offset += 1;
            continue;
        }
        length = ft_strclen(offset, separator);
        substring = ft_strsub(offset, 0, length);
        offset += length;
        list_append(list, substring);
    }
    return (list);
}
