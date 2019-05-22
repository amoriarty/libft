//
//  ft_strclen.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Find length of string, stopping at character of null terminator
/// @param source String to calculate length
/// @param character Character to stop counting
/// @returns Size of the string
size_t  ft_strclen(const char *source, char character)
{
    size_t  iterator;

    iterator = 0;
    while (source[iterator] != 0 && source[iterator] != character)
        iterator += 1;
    return (iterator);
}
